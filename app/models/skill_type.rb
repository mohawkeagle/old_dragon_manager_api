# == Schema Information
#
# Table name: skill_types
#
#  id         :integer          not null, primary key
#  name       :string(45)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SkillType < ActiveRecord::Base
end
