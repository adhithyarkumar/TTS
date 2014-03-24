class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :text

      t.timestamps
    end
  end
end
