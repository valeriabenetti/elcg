class Test < ApplicationRecord
   include ImageUploader[:image]
  has_many :favorites, dependent: :destroy

  def self.search(search)
    search = search.upcase
    where("procedure_name like ?", "%#{search}%")
  end

  def self.starts_with(letter)
    if letter == "#"
      where("procedure_name similar to ?", "[1-9]%")
    else
      where("procedure_name like ?", "#{letter}%")
    end
  end
end
