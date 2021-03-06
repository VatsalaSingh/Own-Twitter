class User < ActiveRecord::Base




   devise :database_authenticatable, :registerable, :confirmable, :recoverable, stretches: 12
	has_many :tweets
   has_many :likes
   has_many :follower_mappings, class_name: 'FollowMapping', foreign_key: 'followee_id'
   has_many :followee_mappings, class_name: 'FollowMapping', foreign_key: 'follower_id'
   has_many :followers, through: :follower_mappings
   has_many :followees, through: :followee_mappings
   #has_many :feed

   def feed
   	users = followees.pluck(:id) + [self.id]
   	feed_tweets = Tweet.includes(:user, :likes).where("user_id in (?)",users)
  	feed_tweets
   end

end
