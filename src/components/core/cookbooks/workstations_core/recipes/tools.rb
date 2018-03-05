options = node['workstations_core']
return if options.nil?

workstations_core_tools '' do
  tools_options options['tools']
  action :install
end
