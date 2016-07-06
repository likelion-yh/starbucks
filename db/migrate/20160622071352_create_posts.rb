class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string "title_db"
      t.string "content_db"
    end
  end
end
