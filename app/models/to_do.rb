class ToDo < ActiveRecord::Base
  validates :title, presence: true
  # acts_as_list
  default_scope { order('position') }
end


# def set_order_number
#   last = ToDo.last
#   if last == nil
#     1
#   else
#     last.order + 1
#   end
# end

def sort
  @todo_list = ToDo.all
  @todo_list.each do |f|
    f.position = params["sortable"].index(f.id.to_s)+1
    f.save
  end
end
