class Community < ActiveRecord::Base
    has_many :community_subs
    has_many :users, through: :community_subs
    has_many :activities
    belongs_to :user
end