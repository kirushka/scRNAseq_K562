library(tidyverse)

metrics_files <- list.files("cellranger", pattern = "metrics_summary.csv$", full.names = TRUE, recursive = TRUE)

metrics <- map_dfr(metrics_files, read_csv)

ggplot(metrics, aes(x = `Mean Reads per Cell`, y = `Median Genes per Cell`)) +
  geom_point() +
  ggrepel::geom_label_repel(aes(label = `Median Genes per Cell`)) +
  # geom_smooth(se = FALSE) +
  scale_x_continuous(labels = scales::label_comma(), breaks = seq(0, 500000, 100000)) +
  scale_y_continuous(labels = scales::label_comma()) +
  theme_bw()

ggsave("reads_vs_genes.png")
