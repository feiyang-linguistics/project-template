library(ggplot2)

pl <- ggplot(iris) +
    geom_point(aes(Sepal.Length, Petal.Width, color = Species)) +
    theme_bw()
ggsave("report/fig/iris_scatter.png", pl, width = 6, height = 4.2, dpi = 250)
