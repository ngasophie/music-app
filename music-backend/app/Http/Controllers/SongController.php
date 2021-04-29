<?php

namespace App\Http\Controllers;

use App\Models\Song;
use App\Models\Genre;
use App\Models\Artist;
use App\Models\SongArtist;
use App\Models\SongGenre;
use App\Http\Resources\ArtistCollection;
use App\Http\Resources\GenreCollection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\LengthAwarePaginator;

class SongController extends Controller
{
    public function getPage(){
        $songs = Song::paginate(20);
        
        foreach($songs as $s){
            $arr_artists = ArtistCollection::getSongArtist($s->id);
            $s->artists = $arr_artists;
        }
        
        return response()->json(['songs' => $songs]);
 
    }
    public function getSong($id){
        $song = Song::where('id', $id)->get();
        $song_artist = SongArtist::where('song_id', $id)->get();
        $song_genre = SongGenre::where('song_id', $id)->get();
        $arr_artist = array();
        foreach($song_artist as $sa){
            array_push($arr_artist,Artist::where('id', $sa->artist_id)->get()[0]);
        }
        $arr_genre = array();
        foreach($song_genre as $sg){
            array_push($arr_genre, Genre::where('id', $sg->genre_id)->get()[0]);
        }
        return response()->json([
            'song' => $song,
            'artists' => $arr_artist,
            'genres' => $arr_genre
        ]);
    }

    public function getSongKeyword(Request $request){
        $keyword = $request->input('search'); 
       
        $name_songs = Song::where('songTitle', 'like', '%'.$keyword.'%')->get();
        if(!empty($name_songs)){
            foreach($name_songs as $s){
                $s->artists = ArtistCollection::getSongArtist($s->id);
            }
        }

        $artist_songs = DB::table('songs')
                    ->join('song_artist', 'songs.id', '=', 'song_artist.song_id')
                    ->join('artists', 'song_artist.artist_id', '=', 'artists.id')
                    ->where('artists.artistName', 'like', '%'.$keyword.'%')
                    ->distinct()
                    ->select('songs.*')
                    ->get();
        foreach($artist_songs as $s){
            $s->artists = ArtistCollection::getSongArtist($s->id);
        }

        $songs = array_merge_recursive((array)$name_songs, (array)$artist_songs);  
        return response()->json(['songs' => $songs]);
    }

    public function getSongGenre($id_genre){
        $songs = DB::table('songs') ->join('song_genre', 'songs.id', '=', 'song_genre.song_id')
                                    ->join('genre', 'song_genre.genre_id', '=', 'genre.id')
                                    ->select('songs.*')
                                    ->where('genre.id', $id_genre)
                                    ->distinct()
                                    ->get();
        foreach($songs as $s){
            $s->artists = ArtistCollection::getSongArtist($s->id);
            $s->genres = GenreCollection::getSongGenre($s->id);
        }
        
        return response()->json(['songs' => $songs]);
    }
}
