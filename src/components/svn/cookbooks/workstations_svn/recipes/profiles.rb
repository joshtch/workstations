options = node['workstations_svn']
return if options.nil?

workstations_svn_profiles '' do
  profiles_options options['profiles']
  action :create
end
