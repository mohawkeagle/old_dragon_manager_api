# == Schema Information
#
# Table name: campaign_journals
#
#  id          :integer          not null, primary key
#  description :text(65535)      not null
#  active      :boolean          default("1"), not null
#  campaign_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CampaignJournal < ActiveRecord::Base
  belongs_to :campaign
end
