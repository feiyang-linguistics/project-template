library(tidytext)
library(dplyr)
docs_df <- readRDS("data/samesex_marriage.rds")

# Calculate lexical diversity
docs_df %>%
  unnest_tokens(output = "word", input = "content",
                token = "regex", pattern = " ") %>%
  group_by(topic, word) %>%
  summarise(n = n()) %>%  # Calculate token freq.
  ungroup() %>%
  group_by(topic) %>%
  summarise(TTR = n() / sum(n))  # Calculate type/token ratio
