class Tracker < ApplicationRecord
  belongs_to :user

  def self.get_last_seven(user)
    user.trackers.sort_by {|tracker| tracker.date_format}.first(7)
  end

end
