SimpleCaptcha.setup do |sc|
  # default: 100x28
  sc.image_size = '70x30'

  # default: 5
  sc.length = 4

  # default: simply_blue
  # possible values:
  # 'embosed_silver',
  # 'simply_red',
  # 'simply_green',
  # 'simply_blue',
  # 'distorted_black',
  # 'all_black',
  # 'charcoal_grey',
  # 'almost_invisible'
  # 'random'
  sc.image_style = 'mycaptha'
  sc.add_image_style('mycaptha', [
    "-background '#FFFFFF'",
    "-fill '#666666'",
    "-border 1",
    "-bordercolor '#FFFFFF'"])

  # default: low
  # possible values: 'low', 'medium', 'high', 'random'
  sc.distortion = 'low'
end
