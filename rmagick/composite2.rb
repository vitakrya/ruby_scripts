require 'rmagick'

src = Magick::Image.read('rmagick/images/lenovo_g50_70_core_i3_403U.jpg').first
puts Magick::GRAYColorspace
src = src.resize_to_fill(102, 102).quantize(256, Magick::GRAYColorspace).contrast(true)
overlay = Magick::Image.read('rmagick/generated_images/draw1.png').first
src.composite!(overlay, 2, 10, Magick::OverCompositeOp)
colored = Magick::Image.new(102, 102) {
	self.background_color = '#fffff1'
}

colored.composite!(src.negate, 0, 0, Magick::CopyOpacityCompositeOp)
colored.write('rmagick/generated_images/lenovo_g50_70_core_i3_403U_colored.jpg')