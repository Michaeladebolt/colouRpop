## color pallets based on eye shadow pallets




colouRpop <- function(pallet = "lust_for_dark", show_me = FALSE){
  library(ggplot2)
  library(cowplot)

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

  all_pallets <- list(lust_for_dark, limoncello, so_very_lovely,
                      big_poppy)

  # assign the pallets depending on what the user wants
  if ( pallet == "lust_for_dark") {
    pallet_choice <- all_pallets[[1]]
  } else if ( pallet == "limoncello") {
    pallet_choice <- all_pallets[[2]]
  }  else if (pallet == "so_very_lovely") {
    pallet_choice <- all_pallets[[3]]
  } else {
    pallet_choice <- all_pallets[[4]] #big poppy
  }

  if(show_me == TRUE){
    # Create demo plot of the colors to print
    cute_plot <- ggplot(data.frame(x = seq(1:length(pallet_choice)),
                                   y = seq(1:length(pallet_choice)) ),
                        aes(x = x, y = y)) +
      geom_point(color = pallet_choice, size = 12) +
      theme_void()

    # plot( seq(1:length(pallet_choice)),
    #        col = pallet_choice,
    #        pch = 16,
    #        cex = 5,
    #        xlab=pallet,
    #        ylab="",
    #        main = paste0("Number of unique colors: " ,
    #                     length(pallet_choice) ) )

    #img_plt <- ggdraw() + draw_image("big_poppy.png")
    # Combine picture and demo plot
    #plot_grid(demo_plot, img_plt, ncol = 2)

  } else {
    # do nothing
  }
  # return the color pallet

  if(show_me == TRUE){
    return(cute_plot)

  }else{

    return(pallet_choice)
  }
}

colouRpop(pallet = "big_poppy", show_me = TRUE)










