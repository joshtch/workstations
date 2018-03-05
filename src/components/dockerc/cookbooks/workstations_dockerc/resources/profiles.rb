property :profiles_options, Hash

default_action :create

action :create do
  return if profiles_options.nil?

  workstations_dockerc_profiles_images '' do
    profiles_images_options profiles_options['images']
    action :pull
  end
end
