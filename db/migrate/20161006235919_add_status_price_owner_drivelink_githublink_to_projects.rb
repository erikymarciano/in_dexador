class AddStatusPriceOwnerDrivelinkGithublinkToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :status, :text
    add_column :projects, :price, :float
    add_column :projects, :owner, :integer
    add_column :projects, :drivelink, :text
    add_column :projects, :githublink, :text
  end
end
