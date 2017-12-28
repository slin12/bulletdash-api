class Tracker < ApplicationRecord
  belongs_to :user
  validates :date_format, uniqueness: { scope: :user_id }

  def self.get_last_seven(user)
    user.trackers.sort_by {|tracker| tracker.date_format}.last(7)
  end

end
