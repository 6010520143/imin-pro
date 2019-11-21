class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :title
      t.string :category
      t.string :content

      t.timestamps
    end
  end
end
