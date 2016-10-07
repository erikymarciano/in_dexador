class CreateInterestlists < ActiveRecord::Migration[5.0]
  def change
    create_table :interestlists do |t|
      t.string :user_id
      t.string :project_id
      t.boolean :interest
      t.boolean :interesttype

      t.timestamps
    end
  end
end
