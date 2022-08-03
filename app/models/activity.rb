class Activity < ActiveRecord::Base
    belongs_to :community
    has_many :activity_subs
    has_many :conversations
    has_many :users, through: :activity_subs
end