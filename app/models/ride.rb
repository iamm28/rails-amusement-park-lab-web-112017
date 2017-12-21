class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :attraction

  def take_ride
    if (self.user.tickets < self.attraction.tickets && self.user.height < self.attraction.min_height)
      "Sorry. You do not have enough tickets the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
    elsif self.user.tickets < self.attraction.tickets
      "Sorry. You do not have enough tickets the #{self.attraction.name}."
    elsif self.user.height <= self.attraction.min_height
      "Sorry. You are not tall enough to ride the #{self.attraction.name}."
    elsif (self.user.tickets > self.attraction.tickets && self.user.height > self.attraction.min_height)
      self.user.tickets -= self.attraction.tickets
      self.user.nausea += self.attraction.nausea_rating
      self.user.happiness += self.attraction.happiness_rating
      #updates the instance how do we save the update to the db?
    end
  end
end
