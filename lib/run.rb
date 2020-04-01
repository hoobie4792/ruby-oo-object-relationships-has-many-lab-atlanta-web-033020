require 'pry'
require_relative './artist'
require_relative './song'

adele = Artist.new("Adele")
hello = Song.new("Hello")
adele.add_song(hello)

binding.pry