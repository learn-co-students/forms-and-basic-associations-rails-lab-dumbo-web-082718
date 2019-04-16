class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre

  def artist_name=(artist)
    # if self.artist.nil?
    #   nil
    # else
       self.artist = Artist.find_or_create_by(name: artist)

    # end
  end

  def artist_name
     if self.artist.nil?
       nil
     else
       self.artist.name
     end
  end

end
