property :profiles_images_options, Hash

default_action :pull

action :pull do
  return if profiles_images_options.nil?

  profiles_images_options.each do |image_name, image_options|
    workstations_dockere_image image_name do
      image_options image_options
      action :pull
    end
  end
end
