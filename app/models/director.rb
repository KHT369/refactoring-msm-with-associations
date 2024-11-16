# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  validates(:name, presence: true)

  has_many(:fimography, class_name: "Movie", foreign_key: "director_id")

  # def filmography
  #   return Movie.where({ :director_id => sefl.id })
  # end
end
