class CreateStaus < ActiveRecord::Migration
  def change
    create_table :staus do |t|
      t.string :name
      t.string :sting
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
