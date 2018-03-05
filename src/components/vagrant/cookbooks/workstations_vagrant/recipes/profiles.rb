options = node['workstations_vagrant']
return if options.nil?

workstations_vagrant_profiles '' do
  profiles_options options['profiles']
  action :create
end
