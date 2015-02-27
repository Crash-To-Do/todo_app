class ToDo < ActiveRecord::Base
  validates :title, presence: true
  validates :due_at, presence: true
  validates :order, presence: true
end
