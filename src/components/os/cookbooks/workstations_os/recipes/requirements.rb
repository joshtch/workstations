options = node['workstations_os']
return if options.nil?

workstations_os_requirements '' do
  requirements_options options['requirements']
  action :ensure
end
