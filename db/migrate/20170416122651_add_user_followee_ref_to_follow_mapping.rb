class AddUserFolloweeRefToFollowMapping < ActiveRecord::Migration
  def change
    add_reference :follow_mappings, :followee, index: true, foreign_key: true
  end
end
