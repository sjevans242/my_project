ave_LE <- daply(
    .data = gapminder,
    .variable="continent",
    .fun=function(x) mean(x$lifeExp))