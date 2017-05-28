class Test < ApplicationRecord
  has_many :favorites

  def self.search(search)
    search = search.upcase
    where("procedure_name like ?", "%#{search}%")
  end

  def self.starts_with(letter)
    # if this is a `#` then do a different search...
    #  where(....)
    # else
      where("procedure_name like ?", "#{letter}%")
  end
end
