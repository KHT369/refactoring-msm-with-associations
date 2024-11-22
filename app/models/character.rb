# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  belongs_to(:movie, foreign_key: "movie_id", class_name: "Movie")
  #can just leave it as :movie with no foreign_key and class_name. it just defaults there

  belongs_to(:actor, foreign_key: "actor_id", class_name: "Actor")
  #can just be belongs_to :actor
end
