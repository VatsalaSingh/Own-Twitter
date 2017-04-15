class AddTweetRefToLikes < ActiveRecord::Migration
  def change
    add_reference :likes, :tweet, index: true, foreign_key: true
  end
end
