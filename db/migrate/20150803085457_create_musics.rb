class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :content_type
      t.string :nationality
      t.string :content

      t.timestamps null: false
    end
  end
end
