options = node['workstations_core']
return if options.nil?

workstations_core_requirements '' do
  requirements_options options['requirements']
  action :ensure
end
