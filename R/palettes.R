## color pallets based on eye shadow pallets

colouRpop <- function(palette = "lust_for_dark", show_me = FALSE){
  library(ggplot2)

  lust_for_dark <- c("#F4CDB4", "#EBAD7B","#C9967F", "#C5AF9A",
                     "#A66F5A", "#B47154", "#B77078", "#C79174",
                     "#B89994", "#E08C73", "#9E8079", "#9E5758",
                     "#614434", "#AF5744", "#6A4B51", "#746F75")

  limoncello <- c("#A76940", "#F7B275", "#9A673A", "#D58B50",
                  "#DFBCA0", "#E2AA53", "#DEC358", "#B69F3F",
                  "#8E5045", "#A0694A", "#54362C", "#6A788F")

  so_very_lovely <- c("#D4B8A3", "#A18788", "#E2A181", "#7F6F60",
                      "#BD9066", "#C89EC3", "#E08278", "#B77070",
                      "#C15D53", "#C18D77", "#B17D91", "#744454")

  big_poppy <- c("#EFB19A", "#F5A87E", "#D96336", "#C95731",
                 "#C95731", "#AB3F1E", "#AE3F2E", "#953C2E", "#662B25")

  blowin_smoke <- c("#F4F8F4", "#6E6F68", "#D8DACF",
                    "#6C7070", "#B4B3BB", "#887D84",
                    "#3B393A", "#7A6F6A", "#353334")

  youre_golden <- c("#F1BFA6", "#FBE3D8", "#C1DEDE", "#ECC79B", "#F2CFD5", "#D9A590",
                    "#C68B6B", "#BE7C65", "#E5CAB4", "#DE6C5F", "#C5907D", "#E1C4B4",
                    "#D5AA81", "#E9A68C", "#A87056", "#DA983A", "#BFC8C3", "#84584F",
                    "#C18762", "#945448", "#CA978A", "#C3755F", "#8C5C52", "#886C5E",
                    "#62413C", "#9A4C3F", "#694341", "#753323", "#2F4E59", "#8A7580")

  the_child <- c("#ECDEC3", "#D5CEB1", "#D29875",
                 "#CFBD87", "#A1AA8D", "#EAD598",
                 "#8A7649", "#72674B", "#7C4839")

  malibu_barbie <- c("#FDD9AF", "#FAA6A1", "#D1842E", "#F87055",
                     "#FBB70F", "#F7096F", "#F981BB", "#38ABC7",
                     "#D56007", "#FA9B4D", "#F8735E", "#A4E7DE",
                     "#D7712B", "#F98411")
  baroque <- c("#DEDAD4", "#90767A", "#6C6E6D", "#968990",
               "#9F786B", "#908F92", "#533732", "#363333",
               "#3C3644")

  its_a_mood <- c("#254C57", "#F3D893", "#65310F", "#4F2B2F",
                  "#965E4D", "#6C4646", "#4A3D46", "#CA8068",
                  "#B09490", "#E6A17A", "#A97B62", "#315249",
                  "#325F66", "#67443A", "#3E6C7C", "#612117",
                  "#715B2C", "#BD664B", "#BEB6AC", "#D6B78B",
                  "#D5B6A4", "#5D4760", "#E1BFA4", "#C29485",
                  "#869B95", "#735C7A", "#816243", "#907B63")

  its_a_princess_thing <- c("#E9C3B0", "#EDA8A5", "#DF9789", "#AE765D", "#9C5F4D",
                            "#F6EEDA", "#E1BFA6", "#DD9C9B", "#E5B279", "#DADBD6",
                            "#B36969", "#A45D88", "#865D70", "#8C645C", "#626368")



  # Combine all the pallets in a list
  all_palettes <- list(lust_for_dark, limoncello, so_very_lovely,
                      big_poppy, blowin_smoke, youre_golden,
                      the_child, malibu_barbie, baroque, its_a_mood, its_a_princess_thing)

  # assign the pallets depending on what the user wants
  if ( palette == "lust_for_dark") {
    palette_choice <- all_palettes[[1]]
  } else if ( palette == "limoncello") {
    palette_choice <- all_palettes[[2]]
  }  else if (palette == "so_very_lovely") {
    palette_choice <- all_palettes[[3]]
  } else if (palette == "big_poppy") {
    palette_choice <- all_palettes[[4]]
  } else if (palette == "blowin_smoke") {
    palette_choice <- all_palettes[[5]]
  } else if (palette == "youre_golden") {
    palette_choice <- all_palettes[[6]]
  } else if (palette == "the_child") {
    palette_choice <- all_palettes[[7]]
  } else if (palette == "malibu_barbie") {
    palette_choice <- all_palettes[[8]]
  } else if (palette == "baroque") {
    palette_choice <- all_palettes[[9]]
  } else if (palette == "its_a_mood") {
    palette_choice <- all_palettes[[10]]
  } else {
    palette_choice <- all_palettes[[11]] #its a princess thing
  }

  if(show_me == TRUE){
    cute_plot <- ggplot(data = data.frame(name = as.factor(seq(1:length(palette_choice))),
                                          value = rep(length(palette_choice))),
                        aes(x = name, y = value)) +
      geom_bar(stat = "identity",
               fill = palette_choice) +
      theme_void()
  } else {
    # do nothing
  }

  # Conditional return!
  if(show_me == TRUE){
    return(cute_plot)
  }else{
    return(palette_choice)
  }
}











