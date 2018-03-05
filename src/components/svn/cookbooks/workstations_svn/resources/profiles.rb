property :profiles_options, Hash

default_action :create

action :create do
  return if profiles_options.nil?

  workstations_svn_profiles_workspaces '' do
    profiles_workspaces_options profiles_options['workspaces']
    action :create
  end
end
