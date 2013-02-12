@default_emphasis_color = "#6C6"
include_theme("night-black")

@lightning_talk_color = @default_foreground
@lightning_talk_background_color = @default_background
@lightning_talk_as_large_as_possible = true
include_theme("lightning-talk-toolkit")

match(Slide) do |slides|
  slides.each do |slide|
    if slide.lightning_talk?
      slide.lightning_talk
    end
  end
end

match(Slide, "**", Note) do |texts|
  texts.prop_set("size", @xx_small_font_size)
  texts.prop_set("foreground", "#99F")
  texts.prop_set("style", "italic")
end

match(Slide, Body) do |bodies|
  bodies.vertical_centering = true
end

@slide_footer_info_left_text = canvas.title.gsub(/\n/, '')
@slide_footer_info_right_text = 'by @parrot_studio for Gunma.web #12 on 2013/02/09'
include_theme("slide-footer-info")