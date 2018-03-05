options = node['workstations_dockerc']
return if options.nil?

workstations_dockerc_profiles '' do
  profiles_options options['profiles']
  action :create
end
