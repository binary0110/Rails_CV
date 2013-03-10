class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :title
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
