#' colouRpop palettes
#'
#' Plot palettes inspired by eye shadow palettes
#'
#' @param palette A palette to choose.  See [colouRpop_palettes] for a list of applicable choices.
#' @param show_me Logical, if `TRUE` prints a `ggplot` figure of the palette
#' @export
#' @returns A character vector of colours; if `show_me` is true, prints a plot
colouRpop <- function(palette = names(colouRpop_palettes), show_me = FALSE) {
  # ensure a single, valid palette is chosen
  palette <- match.arg(palette)

  # grab the palette from the list
  palette_choice <- colouRpop_palettes[[palette]]

  if (show_me) {
    cute_plot <- ggplot2::ggplot(
      data = data.frame(name = factor(seq_along(palette_choice)), value = 1L),
      ggplot2::aes_string(x = "name", y = "value", fill = "palette_choice")) +
      ggplot2::geom_col() +
      ggplot2::theme_void()

    # Return early!
    return(cute_plot)
  }

  palette_choice
}


#' @rdname colouRpop
#' @export
colouRpop_palettes <- list(
  lust_for_dark = c(
    "#F4CDB4", "#EBAD7B","#C9967F", "#C5AF9A",
    "#A66F5A", "#B47154", "#B77078", "#C79174",
    "#B89994", "#E08C73", "#9E8079", "#9E5758",
    "#614434", "#AF5744", "#6A4B51", "#746F75"
  ),

  limoncello = c(
    "#A76940", "#F7B275", "#9A673A", "#D58B50",
    "#DFBCA0", "#E2AA53", "#DEC358", "#B69F3F",
    "#8E5045", "#A0694A", "#54362C", "#6A788F"
  ),

  so_very_lovely = c(
    "#D4B8A3", "#A18788", "#E2A181", "#7F6F60",
    "#BD9066", "#C89EC3", "#E08278", "#B77070",
    "#C15D53", "#C18D77", "#B17D91", "#744454"
  ),

  big_poppy = c(
    "#EFB19A", "#F5A87E", "#D96336", "#C95731",
    "#C95731", "#AB3F1E", "#AE3F2E", "#953C2E", "#662B25"
  ),

  blowin_smoke = c(
    "#F4F8F4", "#6E6F68", "#D8DACF",
    "#6C7070", "#B4B3BB", "#887D84",
    "#3B393A", "#7A6F6A", "#353334"
  ),

  youre_golden = c(
    "#F1BFA6", "#FBE3D8", "#C1DEDE", "#ECC79B", "#F2CFD5", "#D9A590",
    "#C68B6B", "#BE7C65", "#E5CAB4", "#DE6C5F", "#C5907D", "#E1C4B4",
    "#D5AA81", "#E9A68C", "#A87056", "#DA983A", "#BFC8C3", "#84584F",
    "#C18762", "#945448", "#CA978A", "#C3755F", "#8C5C52", "#886C5E",
    "#62413C", "#9A4C3F", "#694341", "#753323", "#2F4E59", "#8A7580"
  ),

  the_child = c(
    "#ECDEC3", "#D5CEB1", "#D29875",
    "#CFBD87", "#A1AA8D", "#EAD598",
    "#8A7649", "#72674B", "#7C4839"
  ),

  malibu_barbie = c(
    "#FDD9AF", "#FAA6A1", "#D1842E", "#F87055",
    "#FBB70F", "#F7096F", "#F981BB", "#38ABC7",
    "#D56007", "#FA9B4D", "#F8735E", "#A4E7DE",
    "#D7712B", "#F98411"
  ),

  baroque = c(
    "#DEDAD4", "#90767A", "#6C6E6D", "#968990",
    "#9F786B", "#908F92", "#533732", "#363333",
    "#3C3644"
  ),

  its_a_mood = c(
    "#254C57", "#F3D893", "#65310F", "#4F2B2F",
    "#965E4D", "#6C4646", "#4A3D46", "#CA8068",
    "#B09490", "#E6A17A", "#A97B62", "#315249",
    "#325F66", "#67443A", "#3E6C7C", "#612117",
    "#715B2C", "#BD664B", "#BEB6AC", "#D6B78B",
    "#D5B6A4", "#5D4760", "#E1BFA4", "#C29485",
    "#869B95", "#735C7A", "#816243", "#907B63"
  ),

  its_a_princess_thing = c(
    "#E9C3B0", "#EDA8A5", "#DF9789", "#AE765D", "#9C5F4D",
    "#F6EEDA", "#E1BFA6", "#DD9C9B", "#E5B279", "#DADBD6",
    "#B36969", "#A45D88", "#865D70", "#8C645C", "#626368"
  )
)
