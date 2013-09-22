$ ->
  $greenBox = $(".green-box")
  $blueBox = $(".blue-box")
  $violetBox = $(".violet-box")
  $greenArrow = $(".green-arrow")
  $blueArrow = $(".blue-arrow")
  $violetArrow = $(".violet-arrow")
  $firstLink = $("li.first-link")
  $secondLink= $("li.second-link")
  
  $("footer.green").click ->
    $(this).parent().children(".content.green").toggleClass("active")
    $(this).parent().toggleClass("active")
    $(this).children(".green-arrow").toggleClass("active")
      
  $("footer.blue").click ->
    $(this).parent().children(".content.blue").toggleClass("active")
    $(this).parent().toggleClass("active")
    $(this).children(".blue-arrow").toggleClass("active")
  
  $("footer.violet").click ->
    $(this).parent().children(".content.violet").toggleClass("active")
    $(this).parent().toggleClass("active")
    $(this).children(".violet-arrow").toggleClass("active")
    
  
  $("section.html").on "click", ->
    if $(".green-box.html").hasClass("active") or $(".blue-box.html").hasClass("active")
      $(".long-arrow.html").addClass("longer")
    else
      $(".long-arrow.html").removeClass("longer")
  
  $("section.stylesheets").on "click", ->
    if $(".green-box.css").hasClass("active") or $(".blue-box.css").hasClass("active")
      $(".long-arrow.css").addClass("longer")
    else
      $(".long-arrow.css").removeClass("longer")
    
    
  $firstLink.click ->
    $(this).parent().parent().parent().children(".code-area").children("span.second").removeClass("active")
    $(this).parent().parent().parent().children(".code-area").children("span.first").addClass("active")
    $(this).parent().children(".second-link").removeClass("active")
    $(this).addClass("active")
    
  $secondLink.click ->
    $(this).parent().parent().parent().children(".code-area").children("span.second").addClass("active")
    $(this).parent().parent().parent().children(".code-area").children("span.first").removeClass("active")
    $(this).parent().children("li.first-link").removeClass("active")
    $(this).addClass("active")
    
  