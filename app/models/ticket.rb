# == Schema Information
#
# Table name: tickets
#
#  id         :bigint           not null, primary key
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint           not null
#  user_id    :bigint
#
# Indexes
#
#  index_tickets_on_event_id              (event_id)
#  index_tickets_on_event_id_and_user_id  (event_id,user_id) UNIQUE
#  index_tickets_on_user_id               (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class Ticket < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :event

  validates :comment, length: { maximum: 30 }, allow_blank: true
end
