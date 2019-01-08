class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :autor
      t.text :cuerpo
      t.string :imagen
      t.date :fecha

      t.timestamps
    end
  end
end
