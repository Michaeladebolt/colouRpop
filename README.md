
<!-- README.md is generated from README.Rmd. Please edit that file -->

# colouRpop

<!-- badges: start -->
<!-- badges: end -->

I made some color palettes based on ColourPop’s eyeshadow palettes! Are
they the most practical color palettes to make figures with?

Of course not! But are they fun? I think so!

Hope you enjoy :)

To install the package, run:

## Installation

You can install the development version of colouRpop from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Michaeladebolt/colouRpop")
```

## Example

After you’ve installed the package, to preview what a palette looks like
you can run:

``` r
library(colouRpop)
colouRpop(palette = "youre_golden", show_me = TRUE)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r
colouRpop(palette = "its_a_mood", show_me = TRUE)
```

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" />

To use a palette in a figure, delete the `show_me` argument, or change
it to `FALSE` (the default is `FALSE`). You can use the `colouRpop`
function directly in a plot, or save the output to an object to use in a
plot. For example:

``` r
library(ggplot2)
fake_data <- data.frame(x = as.factor(rnorm(n = 9, mean = 5, sd = 1) ),
                        y = as.factor(rnorm(n = 9, mean = 5, sd = 1)))

ggplot(data = fake_data, 
       aes(x = x, y = y)) +
  geom_point(color = colouRpop(palette = "big_poppy"), 
             size = 12.5) +
  theme_void() 
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

You can also save the output of the function to an object, and then use
that object in your plot. For example:

``` r
colors <- colouRpop(palette = "its_a_mood", show_me = FALSE)

fake_data <- data.frame(x = as.factor(rnorm(n = 28, mean = 5, sd = 1) ),
                        y = as.factor(rnorm(n = 28, mean = 5, sd = 1)))

ggplot(data = fake_data, 
       aes(x = x, y = y)) +
  geom_point(color = colors, 
             size = 12.5) +
  theme_void() 
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

Below are pictures of the original palettes. These images were taken
from ColourPop’s website: <https://colourpop.com/>


![1](https://user-images.githubusercontent.com/32584911/151690814-bb9dd93b-dd85-4c25-82d0-5ab69bd52445.png)
![2](https://user-images.githubusercontent.com/32584911/151690816-16506dd4-52eb-43af-b2de-9c127bfcb5d0.png)
![3](https://user-images.githubusercontent.com/32584911/151690817-76e64897-aacb-4c07-be81-5516ac114657.png)
![4](https://user-images.githubusercontent.com/32584911/151690818-a8acad61-a1d3-4eb7-b8dc-6cbda248b4b8.png)
![5](https://user-images.githubusercontent.com/32584911/151690819-f9e735af-cbc1-4446-9901-fa71e8254c9a.png)
![6](https://user-images.githubusercontent.com/32584911/151690820-9cead925-a3f7-4e67-8f62-abd1f706fb44.png)
![7](https://user-images.githubusercontent.com/32584911/151690821-7c134e94-2c6f-4c2d-a9ad-6f99b3df8205.png)
![8](https://user-images.githubusercontent.com/32584911/151690822-6b745363-7fc8-44f7-8bf5-8d67596d6f32.png)
![9](https://user-images.githubusercontent.com/32584911/151690824-9f070ede-af8b-401c-ac44-9319019d155f.png)
![10](https://user-images.githubusercontent.com/32584911/151690825-d3ab5d3e-5428-4424-bdff-db9f5ae5d575.png)
![11](https://user-images.githubusercontent.com/32584911/151690826-b53e59b0-b8e9-4798-8970-e17c1f9fde5c.png)


