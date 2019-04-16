class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre

  def artist_name=(artist)
       self.artist = Artist.find_or_create_by(name: artist)
  end

  def artist_name
     if self.artist.nil?
       nil
     else
       self.artist.name
     end
  end

  def genre_name=(genre)
       self.genre = Genre.find_or_create_by(name: genre)
  end

  def genre_name
     if self.genre.nil?
       nil
     else
       self.genre.name
     end
  end

   def note_contents=(note)
      self.note = Note.find_or_create_by(content: note)
   end

   def note_contents
      if self.note.nil?
        nil
      else
        self.note.content
      end
   end

end
