class AddAttachmentsPhotoToAssignment2 < ActiveRecord::Migration
  def self.up
    add_column :assignment2s, :photo_file_name, :string
    add_column :assignment2s, :photo_content_type, :string
    add_column :assignment2s, :photo_file_size, :integer
    add_column :assignment2s, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :assignment2s, :photo_file_name
    remove_column :assignment2s, :photo_content_type
    remove_column :assignment2s, :photo_file_size
    remove_column :assignment2s, :photo_updated_at
  end
end
