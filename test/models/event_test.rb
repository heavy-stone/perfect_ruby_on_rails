# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  end_at     :datetime         not null
#  name       :string           not null
#  place      :string           not null
#  start_at   :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint
#
# Indexes
#
#  index_events_on_owner_id  (owner_id)
#
require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
