class CampaignMember < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :character
end
