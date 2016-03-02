plot_life_expectancy <- function(country){
    
    country_data <- gapminder[gapminder$country == country,]
    plot(country_data$year, country_data$lifeExp, 
         xlab = "Year", ylab = "Life Expectancy", main = country,
         ylim=c(0,80), 
         type = "l")
    
    mean(country_data$lifeExp)
}
