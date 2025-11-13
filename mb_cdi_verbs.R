# load north american english mb-cdi words & sentences data from wordbank (frank et al., 2017)
english_ws <- get_item_data("English (American)", "WS")

# select & clean verbs
english_ws_verbs <- english_ws %>% 
  filter(category == 'action_words') %>% 
  select(item_id, item_definition) %>% 
  mutate(item_definition = word(item_definition, 1)) %>%
  rename(word = item_definition)

# load & clean norms

## clean embodiment norms (schilling et al., 2025)
embod <- verb_embod_rate %>% 
  rename(embod = embod_m) %>% 
  select(word, embod)

## load concreteness norms (brysbaert et al., 2014)
concrete <- read.csv('https://raw.githubusercontent.com/laurenpschilling/verb_embodiment/refs/heads/main/brysbaert_etal(2014).csv') %>% 
  rename(word = Word, concrete = Conc.M) %>% 
  select(word, concrete)

## load imageability norms (cortese & fugett, 2004)
image <- read.csv('https://raw.githubusercontent.com/laurenpschilling/verb_embodiment/refs/heads/main/cortese%26fugett(2004).csv') %>% 
  select(word, imageability)

## load prior embodiment norms (sidhu et al., 2014)
prior_embod <- read.csv('https://raw.githubusercontent.com/laurenpschilling/verb_embodiment/refs/heads/main/sidhu_etal(2014).csv') %>% 
  rename(prior_embod = m_embodiment) %>% 
  select(word, prior_embod)

verb_norms <- english_ws_verbs %>% 
  left_join(embod) %>% 
  left_join(concrete) %>% 
  left_join(image) %>% 
  left_join(prior_embod) %>% 
  mutate(embod_z = scale(embod)[,1],
         concrete_z = scale(concrete)[,1],
         image_z = scale(imageability)[,1],
         prior_embod_z = scale(prior_embod)[,1]
         )

# clean environment
rm(english_ws, concrete, embod, english_ws_verbs, image, prior_embod, verb_embod_rate)

# references

## Brysbaert, M., Warriner, A. B., & Kuperman, V. (2014). Concreteness ratings for 40 thousand generally known English word lemmas. Behavior Research Methods, 46(3), 904–911. https://doi.org/10.3758/s13428-013-0403-5

## Cortese, M. J., & Fugett, A. (2004). Imageability ratings for 3,000 monosyllabic words. Behavior Research Methods, Instruments, & Computers, 36(3), 384–387. https://doi.org/10.3758/BF03195585

## Frank, M. C., Braginsky, M., Yurovsky, D., & Marchman, V. A. (2017). Wordbank: An open repository for developmental vocabulary data. Journal of Child Language, 44(3), 677–694. https://doi.org/10.1017/S0305000916000209

## Sidhu, D. M., Kwan, R., Pexman, P. M., & Siakaluk, P. D. (2014). Effects of relative embodiment in lexical and semantic processing of verbs. Acta Psychologica, 149, 32–39. https://doi.org/10.1016/j.actpsy.2014.02.009

