# == Schema Information
#
# Table name: spell_circles
#
#  id            :integer          not null, primary key
#  circle        :integer          default("0"), not null
#  spell_type_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class SpellCircleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
