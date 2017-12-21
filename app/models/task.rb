class Task < ApplicationRecord
  belongs_to :user

  def initialize(params)
    super(params)
    self.order = Task.all.length + 1
  end

end
