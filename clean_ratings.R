# load raw verb embodiment ratings
verb_rate_wide <- read.csv('https://raw.githubusercontent.com/laurenpschilling/verb_embodiment/refs/heads/main/verb_embod_rate_raw.csv')

# clean colnames
colnames(verb_rate_wide) <- gsub("^To.", "", colnames(verb_rate_wide))

# calculate verb rating mean & sd
verb_embod_wide <- verb_rate_wide %>%
  select(!id) %>%
  summarise(across(everything(), list(mean=~mean(. , na.rm=TRUE), sd=~sd(., na.rm=TRUE))))

# create a long dataframe with mean & sd of each word
verb_embod_rate <- verb_embod_wide %>%
  pivot_longer(
    cols = everything(),
    names_to = "var_stat",
    values_to = "value"
  ) %>%
  separate(var_stat, into = c("variable", "stat"), sep = "_") %>%
  pivot_wider(names_from = stat, values_from = value) %>% 
  rename(word = variable,
         embod_m = mean,
         embod_sd = sd)

# clean environment
rm(verb_rate_wide, verb_embod_wide)
