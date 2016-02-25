require 'rmagick'

# Change the size in two steps, height first then width
def two_step_resize(img, filename, max_x, max_y)
	x = img.columns
	y = img.rows

	# make sure it is a float w/ the 1.0*
	ratio = (1.0 * x) / y
	new_y = max_y
	new_x = ratio * new_y

	if new_x > max_x
		new_x = max_x
		new_y = new_x / ratio
	end

	# do change in two steps, first the height
	img.resize!(x, new_y)
	# then the width
	img.resize!(new_x, new_y)

	# save it, with the least compression to get a better image
	img.write(filename) { self.quality = 100 }
end

# spin the image before resizing
def resize_with_rotate(img, output_filename, max_x, max_y)
	res = img.rotate(100).resize_to_fit(max_y, max_x).rotate(-50)
	res.write(output_filename) { self.quality = 100 }
end


src_images_path = 'rmagick/images/25-02-2016'
generated_dest = 'rmagick/generated_images/25-02-2016'
filename = "#{src_images_path}/m_bostock.jpg"
img = Magick::Image.read(filename).first
two_step_resize(img, "#{generated_dest}/m_bostock-2_resized.jpg", 64, 128)

img = Magick::Image.read(filename).first
resize_with_rotate(img, "#{generated_dest}/m_bostock-2_resized_with_rotate.jpg", 84, 338)
