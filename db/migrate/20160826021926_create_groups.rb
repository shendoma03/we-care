class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|

      t.string :group_name
      t.text :description
      t.string :category
      t.text :contact
      t.string :location
      t.string :img

      t.timestamps
    end
  end
end
