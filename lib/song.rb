require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'
  
class Song
  extend Memorable::ClassMethods, Findable
  include Paramble, Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []



  def self.all
    @@songs
  end



  def artist=(artist)
    @artist = artist
  end


end
