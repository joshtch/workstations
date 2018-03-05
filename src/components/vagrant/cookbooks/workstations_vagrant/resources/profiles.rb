property :profiles_options, Hash

default_action :create

action :create do
  return if profiles_options.nil?

  workstations_vagrant_profiles_plugins '' do
    profiles_plugins_options profiles_options['plugins']
    action :install
  end

  workstations_vagrant_profiles_boxes '' do
    profiles_boxes_options profiles_options['boxes']
    action :add
  end
end
