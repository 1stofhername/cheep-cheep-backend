
class User < ActiveRecord::Base
    has_many :followers
    has_many :users, through: :followers

    def get_followers
       followers.each do |f|
        user_id = f.follower_id
        User.find_by(id: user_id.to_i)
    end
    
end

    
end