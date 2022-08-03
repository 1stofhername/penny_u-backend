class Conversation < ActiveRecord::Base
    belongs_to :activity
    has_many :messages
    has_many :users, through: :messages
end