class AddApprovedToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :approved, :boolean
  end
end
