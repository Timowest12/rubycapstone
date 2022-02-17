# frozen_string_literal: true

require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name, :genre, :publish_date

  def initialize(name, genre, publish_date, on_spotify)
    super(publish_date)
    @name = name
    @genre = genre
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super and @on_spotify
  end
end
