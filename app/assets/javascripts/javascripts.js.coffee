$ ->
  $orange = $(".tool.orange")
  $turquoise = $(".tool.turquoise")
  $brown = $(".tool.brown")
  $square = $(".result-bg.js")
  $zoomIn = $(".tool.zoom-in")
  $zoomOut = $(".tool.zoom-out")
  $turnRight = $(".tool.turn-right")
  $turnLeft = $(".tool.turn-left")
 
  
  $zoomInScale = 1.2
  $zoomOutScale = 0.8
  $degree = 0

  $orange.click ->
    $square.css("background-color", "#E7AE00")
  
  $turquoise.click ->
    $square.css("background-color", "#8BBEA5")
    
  $brown.click ->
    $square.css("background-color", "#6F5A42")
    
  $zoomIn.click ->
    $width = $square.width()
    if $width < 249
      $newWidth = ($width * $zoomInScale)
      $newHeight = $newWidth
      $square.animate {width: $newWidth, height: $newHeight}, 300

  
  $zoomOut.click ->
    $width = $square.width()
    if $width > 40
      $newWidth = ($width * $zoomOutScale)
      $newHeight = $newWidth
      $square.animate {width: $newWidth, height: $newHeight}, 300
      
  $turnRight.click ->
    $degree += 20
    $square.css("transform", "rotate(" + $degree + "deg)")
    
    
  $turnLeft.click ->
    $degree -= 20
    $square.css("transform", "rotate(" + $degree + "deg)")
    