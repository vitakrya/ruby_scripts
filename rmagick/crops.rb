require 'RMagick'

image = Magick::ImageList.new('rmagick/images/prestigo_multipad_pmt3047_3g_black.jpg')
image.crop!(89, 30, 140, 116)
image.write('rmagick/generated_images/prestigo_multipad_pmt3047_3g_black-crop_1.jpg')