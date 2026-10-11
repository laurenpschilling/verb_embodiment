full_mb_cdi_results <- read.csv("~/documents/research/norms/mb_cdi_item_responses.csv") |> 
  filter(language == "English (American)",
         form == "WS",
         data_id %in% data_list) |> 
  mutate(produces = if_else(value == "produces", 1, 0, missing = 0)) |> 
  select(data_id, item_id, produces)

write.csv(full_mb_cdi_results, "~/documents/research/norms/mb_cdi_item_responses_english_ws.csv")