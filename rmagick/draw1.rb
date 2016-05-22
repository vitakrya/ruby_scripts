require 'RMagick'

canvas = Magick::ImageList.new
canvas.new_image(45, 45, Magick::HatchFill.new('#56e1a8', 'gray90'))

circle = Magick::Draw.new
circle.stroke 'tomato'
circle.fill_opacity 0.6
circle.stroke_opacity 0.9
circle.stroke_width 5
circle.stroke_linecap 'round'

circle.ellipse(canvas.rows / 2, canvas.columns / 2, 16, 16, 0, 270)
circle.draw(canvas)
canvas.write('rmagick/generated_images/draw1.png')