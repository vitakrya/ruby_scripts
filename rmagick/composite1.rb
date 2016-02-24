require 'rmagick'

src = Magick::Image.read('rmagick/images/daewoo_fr_051A.jpg').first
overlay = Magick::Image.read('rmagick/generated_images/draw1.png').first
[
	[120, 54],
	[180, 54],
	[120, 120],
	[180, 120]
].each do |coordinates|
	src.composite!(overlay, coordinates[0], coordinates[1], Magick::OverCompositeOp)
end

src.write('rmagick/generated_images/daewoo_fr_051A_composite1.jpg')