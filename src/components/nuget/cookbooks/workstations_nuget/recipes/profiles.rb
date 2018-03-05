options = node['workstations_nuget']
return if options.nil?

workstations_nuget_profiles '' do
  profiles_options options['profiles']
  action :create
end
