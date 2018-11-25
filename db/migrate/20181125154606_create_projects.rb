class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.boolean :archived, default: false, null: false

      t.timestamps
    end
  end
end
