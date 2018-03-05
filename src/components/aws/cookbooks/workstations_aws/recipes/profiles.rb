options = node['workstations_aws']
return if options.nil?

workstations_aws_profiles '' do
  profiles_options options['profiles']
  action :create
end
