class ToDo < ActiveRecord::Base
  validates :title, presence: true
  validates :order, presence: true
end
