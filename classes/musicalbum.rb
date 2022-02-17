# frozen_string_literal: true

require_relative 'item'
# musicalbum
class MusicAlbum < Item
  attr_accessor :on_spotify, :name, :genre, :publish_date

  def initialize(name, genre, publish_date, on_spotify)
    @name = name
    @genre = genre
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super and @on_spotify
  end
end