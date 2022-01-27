## color pallets based on eye shadow pallets

colouRpop <- function(pallet = "lust_for_dark", show_me = FALSE){

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

all_pallets <- list(lust_for_dark, limoncello, so_very_lovely)

# assign the pallets depending on what the user wants
if ( pallet == "lust_for_dark") {
  pallet_choice <- all_pallets[[1]]
} else if ( pallet == "limoncello") {
  pallet_choice <- all_pallets[[2]]
}  else {
  pallet_choice <- all_pallets[[3]]
}

if(show_me == TRUE){

  plot( seq(1:length(pallet_choice)),
        col = pallet_choice,
        pch = 16,
        cex = 5,
        xlab=pallet,
        ylab="",
        main = paste0("Number of unique colors: " ,
                      length(pallet_choice) ) )

} else {

}
# return the color pallet
return(pallet_choice)
}

colouRpop(pallet = "lust_for_dark", show_me = TRUE)

plot( seq(1: length(colouRpop(pallet = "limoncello")) ),
      col = colouRpop(pallet = "limoncello"),
      pch = 16,
      cex = 5,
      xlab="",
      ylab="",
      main = paste0("Number of unique colors: ",
                    length(colouRpop(pallet = "limoncello"))) )






