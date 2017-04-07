class Song < ActiveRecord::Base

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
  
  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :artist



  # def slug #changing file name (Action Bronson - Larry Csonka [indie]) to larry-csonka
  #
  #   self.name.split(" ").join("-").downcase
  # end
  #
  # def self.find_by_slug(slug)
  #
  #   artist = slug.split("-")
  #   art_name = artist.map do |name|
  #       name.capitalize
  #     end.join(" ")
  #     # binding.pry
  #   # Song.where(“name LIKE ?“, "#{art_name}")
  #
  #   Song.find_by(name: "#{art_name}")
  # end

end

#SLUG?
# .gsub("[", "-").split("-")[1].split(" ").join("-").downcase
