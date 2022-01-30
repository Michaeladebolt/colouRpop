# Welcome to colouRpop!

I made some color palettes based on ColourPop's eyeshadow palettes! Are they the most practical color palettes to make figures with? 

Of course not! But are they fun? I think so! 

Hope you enjoy :) 


## Installation
To install the package, run:

```

devtools::install_github("michaeladebolt/colouRpop" )
library(colouRpop)

```

## Preview palettes
After you've installed the package, to preview what a palette looks like you can run: 

```

colouRpop(palette = "youre_golden", show_me = TRUE)

```

![image](https://user-images.githubusercontent.com/32584911/151691852-ac328d90-e1bd-46d1-9b1c-d719a066f09f.png)

```
colouRpop(palette = "its_a_mood", show_me = TRUE)
```
![image](https://user-images.githubusercontent.com/32584911/151691884-6705eb08-e5d1-42c8-bc44-69adbeea876d.png)


```
colouRpop(palette = "the_child", show_me = TRUE)
```

![image](https://user-images.githubusercontent.com/32584911/151691893-71e7f8e7-01c4-4f51-9f29-762992222342.png)


```
colouRpop(palette = "limoncello", show_me = TRUE)

```

![image](https://user-images.githubusercontent.com/32584911/151691931-3cc65bc5-a5d8-4b81-bf81-8a0e23b53395.png)


## Use the palettes
To use a palette in a figure, delete the `show_me` argument, or change it to `FALSE` (the default is `FALSE`). You can use the `colouRpop` function directly in a plot, or save the output to an object to use in a plot. For example:

```

fake_data <- data.frame(x = as.factor(rnorm(n = 9, mean = 5, sd = 1) ),
                        y = as.factor(rnorm(n = 9, mean = 5, sd = 1)))

ggplot(data = fake_data, 
       aes(x = x, y = y)) +
  geom_point(color = colouRpop(palette = "big_poppy"), 
             size = 12.5) +
  theme_void() 

```



![image](https://user-images.githubusercontent.com/32584911/151461007-4afd2a3b-e001-4ae1-a17c-2fbc1b9762e1.png)


You can also save the output of the function to an object, and then use that object in your plot. For example:


```

colors <- colouRpop(palette = "its_a_mood", show_me = FALSE)

fake_data <- data.frame(x = as.factor(rnorm(n = 28, mean = 5, sd = 1) ),
                        y = as.factor(rnorm(n = 28, mean = 5, sd = 1)))

ggplot(data = fake_data, 
       aes(x = x, y = y)) +
  geom_point(color = colors, 
             size = 12.5) +
  theme_void() 

```

![image](https://user-images.githubusercontent.com/32584911/151461131-902f27c3-e807-4762-b7ce-33a7eb6d3008.png)

## View all the palettes
Below are pictures of the original palettes. These images were taken from ColourPop's website: https://colourpop.com/




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



