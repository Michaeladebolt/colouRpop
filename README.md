# colouRpop

I made some color palettes based on ColourPop's eyeshadow palettes! Are they the most practical color palettes to make figures with? 

Of course not! But are they fun? I think so! 

Hope you enjoy :) 


To install the package, run:

```

devtools::install_github("michaeladebolt/colouRpop" )
library(colouRpop)

```

After you've installed the package, to preview what a palette looks like you can run: 

```

colouRpop(palette = "youre_golden", show_me = TRUE)
colouRpop(palette = "its_a_mood", show_me = TRUE)

```

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

Below are pictures of the original palettes. These images were taken from ColourPop's website: https://colourpop.com/


![1](https://user-images.githubusercontent.com/32584911/151688682-90ac7afe-09a4-432d-b4d3-67448b8959a7.png)
![2](https://user-images.githubusercontent.com/32584911/151688684-9ffe8621-8ce3-41b9-89bc-e3add8d4ae21.png)
![3](https://user-images.githubusercontent.com/32584911/151688686-699228a8-19b7-42e4-ae11-2d769173f8d4.png)
![4](https://user-images.githubusercontent.com/32584911/151688688-c3526b9d-10f5-44c2-a1bf-e43ac8156cba.png)
![5](https://user-images.githubusercontent.com/32584911/151688690-0476456f-e97d-45ef-a182-b256eee4fce4.png)
![6](https://user-images.githubusercontent.com/32584911/151688691-0a090157-bb99-438c-af05-25d8ff3d1adf.png)
![7](https://user-images.githubusercontent.com/32584911/151688693-8caf958d-bcc4-4a5b-9153-2b997863add8.png)
![8](https://user-images.githubusercontent.com/32584911/151688694-4fad0dc3-46f8-401c-9e2c-aba7a60d429c.png)
![9](https://user-images.githubusercontent.com/32584911/151688695-9c8334a5-1861-48a0-8b5b-0a96573e6b43.png)
![10](https://user-images.githubusercontent.com/32584911/151688696-6fe9e1b6-810a-480a-bd29-8297dd9eea10.png)




