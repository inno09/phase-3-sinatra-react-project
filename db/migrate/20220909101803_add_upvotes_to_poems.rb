class AddUpvotesToPoems < ActiveRecord::Migration[6.1]
  def change
    add_column :poems, :upvotes, :integer
    add_column :poems, :downvotes, :integer
  end
end
