class AddUserRefToFollowMapping < ActiveRecord::Migration
  def change
    add_reference :follow_mappings, :follower, index: true, foreign_key: true
  end
end
