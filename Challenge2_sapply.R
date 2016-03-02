then <- daply(
    .data = gapminder[gapminder$year == 1952,],
    .variables = "continent",
    .fun = function(x) mean(x$lifeExp)
)

now <- daply(
    .data = gapminder[gapminder$year == 2007,],
    .variables = "continent",
## can c(multiple functions, e.g. mean, sd) 
   .fun = function(x) mean(x$lifeExp)
)

diff <- now - then