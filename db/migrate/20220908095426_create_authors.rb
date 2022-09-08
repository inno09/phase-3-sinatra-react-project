class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :author do |t|
      t.string :name
    end
  end
end
