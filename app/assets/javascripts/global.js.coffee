$ ->
  $js = $("section.javascripts")
  $css = $("section.stylesheets")
  $html = $("section.hypertext")
  
  sections = [$js, $css, $html]
  
  $(window).resize ->
    $height = $(window).height()
    for section in sections
      do ->
        section.css("height", $height)
  
  $(".nav-to-css").on 'click', (e) ->
    e.preventDefault()
    $(".nav-to-js").removeClass("active")
    $(".nav-to-html").removeClass("active")
    $(this).addClass("active")
    $("html, body").animate {scrollTop: $css.offset().top}, 500
    
  $(".nav-to-js").on 'click', (e) ->
    e.preventDefault()
    $(".nav-to-css").removeClass("active")
    $(".nav-to-html").removeClass("active")
    $(this).addClass("active")
    $("html, body").animate {scrollTop: $js.offset().top}, 500
    
  $(".nav-to-html").on 'click', (e) ->
    e.preventDefault()
    $(".nav-to-js").removeClass("active")
    $(".nav-to-css").removeClass("active")
    $(this).addClass("active")
    $height = $html.height() *2
    $("html, body").animate {scrollTop: $html.offset().top}, 500
    
  $(".example-link").on 'click', (e) ->
    e.preventDefault()