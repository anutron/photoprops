class AddPaperclip < ActiveRecord::Migration
  def up
    remove_column :photos, :title
    add_attachment :photos, :img
  end

  def down
    add_column :photos, :title, :string
    remove_attachment :photos, :img
  end
end
