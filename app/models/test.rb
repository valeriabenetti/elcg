class Test < ApplicationRecord
  def self.search(search)
    search = search.upcase
    where("procedure_name like ?", "%#{search}%")
  end
end
