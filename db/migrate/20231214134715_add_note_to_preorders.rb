class AddNoteToPreorders < ActiveRecord::Migration[7.0]
  def change
    add_column :preorders, :note, :string
  end
end
