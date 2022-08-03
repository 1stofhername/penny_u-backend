class User < ActiveRecord::Base
    has_many :community_subs
    has_many :communities, through: :community_subs
    has_many :activity_subs
    has_many :activities, through: :activity_subs

end