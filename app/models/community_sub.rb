class CommunitySub < ActiveRecord::Base
    belongs_to :community
    belongs_to :user
end