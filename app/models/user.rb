class User < ApplicationRecord
  has_many :rides
  has_many :attractions, through: :rides
  validates :password, presence: true
  #validates :admin, presence: true #boolean


  def mood
    if self.happiness < self.nausea
      "sad"
    else
      "happy"
    end
  end

  # def admin
  #   if self.admin_status
  # end
end
