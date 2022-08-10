class Conversation < ActiveRecord::Base
    has_many :messages
    has_many :users, through: :messages
    belongs_to :user
end