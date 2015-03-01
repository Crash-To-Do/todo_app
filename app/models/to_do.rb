class ToDo < ActiveRecord::Base
  validates_presence_of :title
  include RankedModel
  ranks :position

# def set_order_number
#   last = ToDo.last
#   if last == nil
#     1
#   else
#     last.order + 1
#   end
# end

  # def sort
  #   @todo_list = ToDo.all
  #   @todo_list.each do |f|
  #     f.position = params["sortable"].index(f.id.to_s)+1
  #     f.save
  #   end
  # end
end
