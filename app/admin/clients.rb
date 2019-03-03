ActiveAdmin.register Client do
  permit_params :name, :project_id

  # Menu item
  menu :label => "Clients", :parent => "Dimensions"

  filter :name
  filter :project, :collection => proc { Project.all }

  index do
    selectable_column
    column :name
    column(:project, :sortable => :project_id) { |client| link_to truncate(client.project.name, length: 35), admin_project_path(client.project), title: client.project.name }
    # column :project,
    #   :sortable => :project_id { |client| link_to truncate(client.project_name, length: 35), project_path(client.project), title: client.project_name }
    actions
  end

end
