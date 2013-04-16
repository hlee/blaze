class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.text :detail
      t.string :out_url

      t.timestamps
    end
  end
end
