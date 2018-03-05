property :profiles_workspaces_options, Hash

default_action :create

action :create do
  return if profiles_workspaces_options.nil?

  profiles_workspaces_options.each do |workspace_name, workspace_options|
    workstations_svn_workspace workspace_name do
      workspace_options workspace_options
      action :create
    end
  end
end
