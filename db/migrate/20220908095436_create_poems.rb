class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :content
      t.integer :author_id
      t.integer :genre_id
    end
  end
end
