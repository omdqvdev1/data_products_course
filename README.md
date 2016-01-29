# mtcars exploratory plot

This  applications uses standard __mtcars__ dataset provided in R in order to demonstrate 
possibilities of dynamic plotting in a Shiny application.

Initially, the dataset field names have been transformed into more user-friendly discriptive names.
Also, some  variables have been transformed into factor variables, like transmission type or V or S engine type, or number of cylindrs.

The idea is to draw a 2-D plot for two dimensions __Y__ and __X__, which can be selected from the corresponding drop-down lists,
and also use a factor variable which can be selected from a third drop-down list, in order to observe clustering of observations in different colors and draw a smoothing line per each factor value. 

As an option, split per factor can be switched-off by a specific checkbox, so that for all observations will be drawn a single smoothing line. 

Three options for the smoothing are available: __lm__, __loess__ and __rlm__.
Another existing option is the confidence interval, which can be also toggled by the corresponding checkbox.

Source files for the application can be found [here](https://github.com/omdqvdev1/data_products_course)
