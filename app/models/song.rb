class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

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

   def note_contents=(notes)
    notes.each do |note|
      self.notes.build(content: note)
# => #<Note id: nil, name: "song title", song_id: 1>
    end
   end

   def note_contents

     self.notes.map do |note|
       if note.content.nil?
         nil
       else
         note.content
       end
     end

      # if self.notes.nil?
      #   nil
      # else
      #   self.notes.content
      # end
   end

end
