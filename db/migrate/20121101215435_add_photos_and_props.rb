class AddPhotosAndProps < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      # TODO: paperclip stuff.
      
      t.timestamps
    end
    
    create_table :props do |t|
      t.string :title
      t.integer :photo_id
      
      t.timestamps
    end
    
    add_index :props, :photo_id
  end
end
