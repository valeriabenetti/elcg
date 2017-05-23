class Test < ApplicationRecord
  def self.search(search)
  where("procedure_name like ?", "%#{@search}%")
  end
end
