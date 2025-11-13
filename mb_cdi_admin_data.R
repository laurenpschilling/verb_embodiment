# load wordbank mb-cdi words & sentences long form administration data for typically developing monolingual north american english-speaking children (Frank et al., 2017)
english_ws_admins <- get_administration_data("English (American)", "WS")

# match child_id & data_id
child_id_match <- english_ws_admins %>% 
  select(child_id, data_id) %>% 
  group_by(child_id) %>% 
  slice(1) %>% 
  ungroup()

# filter for only the first administration for each child & reorder child data frame
child <- child %>%
  left_join(child_id_match) %>% 
  select(child_id, data_id, age, age_c, sex, caregiver_education, prod_size, prod_size_z)

# load & clean wordbank instrument data for all unique child ids and verb item ids
data_list <- child$data_id

verbs_id <- unique(verb_norms$item_id)

verbs_long_data <- get_instrument_data("English (American)", "WS") %>% 
  filter(data_id %in% data_list) %>% 
  filter(item_id %in% verbs_id) %>% 
  mutate(produces = ifelse(value == "produces", 1, 0)) %>% 
  select(-value, -understands) %>% 
  left_join(child_id_match) %>% 
  select(item_id, child_id, produces) %>% 
  mutate(produces = replace(produces, is.na(produces), 0))

# clean environment
rm(child_id_match, data_list, english_ws_admins, verbs_id)

# references

## Frank, M. C., Braginsky, M., Yurovsky, D., & Marchman, V. A. (2017). Wordbank: An open repository for developmental vocabulary data. Journal of Child Language, 44(3), 677–694. https://doi.org/10.1017/S0305000916000209
