# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  validates(:name, presence: true)

    # Actor has many characters is expected to have many characters class_name => Character

  # def characters
   # key = self.id

    # the_many = Character.where({ :actor_id => key })

    # return the_many
  # end

  has_many(:characters)
  has_many(:filmography, through: :characters, source: :movie)

  # Actor has many filmography is expected to have many filmography through characters source => movie

  # def filmography
   # the_many = Array.new

   # self.characters.each do |joining_record|
   #   destination_record = joining_record.movie

    #  the_many.push(destination_record)
  #  end

   # return the_many
  # end
end
