class Task < ApplicationRecord
  belongs_to :user

  def initialize
    super

    self.order = Task.all.length + 1
  end

end
