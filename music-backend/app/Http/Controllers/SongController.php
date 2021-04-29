<?php

namespace App\Http\Controllers;

use App\Models\Song;
use App\Models\Genre;
use App\Models\Artist;
use App\Models\SongArtist;
use App\Models\SongGenre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SongController extends Controller
{
    public function getPage(){
        $songs = Song::paginate(20);
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

    // public function getSongGenre($genre_id){
    //     $songs_genre = Song::Where('id')
    // }
}
