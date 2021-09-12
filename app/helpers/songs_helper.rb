module SongsHelper

    def new_song_link(artist)
        path = artist ? new_artist_song_path(@artist) : new_song_path
        link_to 'Add New Song', path
    end

    def artist_select(song)
        puts "------------------------"
        puts "song.artist: #{song.artist}"
        p song.artist
        if song.artist.nil?
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
            hidden_field_tag "song[artist_id]", song.artist_id
        end
    end

end
