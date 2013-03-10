class AddCvIdToCvSections < ActiveRecord::Migration
  def change
    add_column :cv_sections, :cv_id, :integer
  end
end
