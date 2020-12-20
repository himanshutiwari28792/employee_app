class Employee < ApplicationRecord
  #relationship
  has_one_attached :avatar

  #validations
  validates :name, presence: true, allow_blank: false
  validates_uniqueness_of :email, allow_blank: false
  validates :phone, numericality: {only_integer: true}
  validates :avatar, attached: true, content_type: [:png, :jpg, :jpeg]

  # class methods
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
