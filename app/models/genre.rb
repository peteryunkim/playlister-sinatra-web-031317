class Genre < ActiveRecord::Base

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  # def slug
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
  #
  #   Genre.find_by(name: "#{art_name}")
  # end


end
