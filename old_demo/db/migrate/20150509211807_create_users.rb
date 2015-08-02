class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	#id automatically added
    	t.column "first_name", :string, :limit => 25
    	t.string "last_name", :limit => 50
    	t.string "email", :default => "", :null => false
    	t.string "password", :limit => 40
    	
    	t.timestamps
    	#t.datetime "updated_at"
    	#t.datetime "created_at"
      t.timestamps null: false
    end
  end
end
