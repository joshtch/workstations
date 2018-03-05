options = node['workstations_git']
return if options.nil?

workstations_git_profiles '' do
  profiles_options options['profiles']
  action :create
end
