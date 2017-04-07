require 'pry'
class Artist < ActiveRecord::Base

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  has_many :songs
  has_many :genres, through: :songs
  # 
  # def slug
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
  #   Artist.find_by(name: "#{art_name}")
  # end

end



# def slug_capitalized(slug)
# artist = slug.split(" ")
#   artist.map do |name|
#     name.capitalize
#   end.join(" ")
# end

# self.split("-")[0].split(" ").join("-").downcase
