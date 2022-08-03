class Conversation < ActiveRecord::Base
    belongs_to :activity
    has_many :users, through: :messages
end