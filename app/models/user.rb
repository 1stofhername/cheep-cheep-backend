class User < ActiveRecord::Base
    has_many :messages
    has_many :conversations, through: :messages

    def get_conversations
        self.conversations
    end

    def self.find_users_by_first_name name
        User.where("lower(first_name)=?", name.downcase).first
    end

    def self.find_users_by_email email
        User.where("lower(email)=?", email.downcase).first
    end
    
end