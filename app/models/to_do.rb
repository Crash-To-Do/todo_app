class ToDo < ActiveRecord::Base
  validates :title, presence: true
  validates :order, presence: true
end


def set_order_number
  last = ToDo.last
  if last == nil
    1
  else
    last.order + 1
  end
end
