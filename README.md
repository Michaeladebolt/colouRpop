# colouRpop

I made some color palettes based on ColourPop's eyeshadow paletts! Are they the most practical color palettes to make figures with? 

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

![Slide1](https://user-images.githubusercontent.com/32584911/151461327-c540d635-1c3f-4679-b654-de96dcadc5f2.jpeg)
![Slide2](https://user-images.githubusercontent.com/32584911/151461331-779862ed-009e-4951-b9f6-0fa86bbd8e79.jpeg)
![Slide3](https://user-images.githubusercontent.com/32584911/151461334-6a048769-690a-41a1-8384-275e336b6fcb.jpeg)
![Slide4](https://user-images.githubusercontent.com/32584911/151461338-0cad8e7c-4f86-4784-b9e0-3238100eacc6.jpeg)
![Slide5](https://user-images.githubusercontent.com/32584911/151461340-18937faf-e0fe-4136-972a-fb6bfb4b58f3.jpeg)
![Slide6](https://user-images.githubusercontent.com/32584911/151461343-8130364f-c22b-40a0-85ca-b016835a2b95.jpeg)
![Slide7](https://user-images.githubusercontent.com/32584911/151461344-16123001-488c-4e2c-9ac9-f8e337cf35ed.jpeg)
![Slide8](https://user-images.githubusercontent.com/32584911/151461346-b7507998-229f-4036-bbde-8d83fffbc5d3.jpeg)
![Slide9](https://user-images.githubusercontent.com/32584911/151461347-d8cf097f-f2b7-46e8-b8a4-3196cffb1d61.jpeg)
![Slide10](https://user-images.githubusercontent.com/32584911/151461350-8c909b79-5417-4a5d-8b2a-4e74af89ff74.jpeg)
![Slide11](https://user-images.githubusercontent.com/32584911/151461351-c40e5a0a-7e52-4265-a3c7-86b66e3636a7.jpeg)
![Slide12](https://user-images.githubusercontent.com/32584911/151461355-fa984b28-6325-42a8-a043-a4ba887fc8ee.jpeg)





