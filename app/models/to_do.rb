class ToDo < ActiveRecord::Base
  validates_presence_of :title
  include RankedModel
  ranks :position

def self.set_position
  last = ToDo.rank(:position).last
  if last == nil
    1
  else
    last.position + 1
  end
end

  # def sort
  #   @todo_list = ToDo.all
  #   @todo_list.each do |f|
  #     f.position = params["sortable"].index(f.id.to_s)+1
  #     f.save
  #   end
  # end

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      ToDo.all
    end
  end
end
