options = node['workstations_dockere']
return if options.nil?

workstations_dockere_profiles '' do
  profiles_options options['profiles']
  action :create
end
