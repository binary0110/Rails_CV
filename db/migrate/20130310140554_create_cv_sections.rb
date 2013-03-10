class CreateCvSections < ActiveRecord::Migration
  def change
    create_table :cv_sections do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
