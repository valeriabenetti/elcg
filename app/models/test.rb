class Test < ApplicationRecord
  def self.search(search)
    where("procedure_name like :pattern", "%#{:query}%")
  end
end
