class Card < ApplicationRecord

  validates :name, presence: true, uniqueness: true

  def self.search(name_or_rarity)
  	if name_or_rarity.present?
      Card.where("lower(name) = ? or lower(rarity) = ?", name_or_rarity.downcase, name_or_rarity.downcase)
  	else
  	  Card.all
  	end
  end
end
