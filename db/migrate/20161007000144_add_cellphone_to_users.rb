class AddCellphoneToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cellphone, :string
  end
end
