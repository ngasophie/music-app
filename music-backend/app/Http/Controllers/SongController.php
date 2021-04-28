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
    // public function getPage($page){
    //     $start_page = 20 * ($page - 1);
    //     $end_page = 20 * $page + 1;
    //     $songs = DB::table('songs')->where('id', '>', $start_page)
    //     ->where('id', '<', $end_page)->get();
    //     return response()->json([
    //         'page' => $page,
    //         'songs' => $songs
    //     ]);
    // }

    public function getSong($id){
        $song = DB::table('songs')->where('id', $id)->get();

        $arr_artist = ArtistCollection::getSongArtist($id);
        $arr_genre = GenreCollection::getSongGenre($id);

        return response()->json([
            'song' => $song,
            'artists' => $arr_artist,
            'genres' => $arr_genre
        ]);
    }


    public function getSongKeyword(Request $request){
        $keyword = $request->input('search'); 
        $songs = Song::where('songTitle', 'like', '%$keyword%')->get();
        // return response()->json(['keyword' => $keyword]);
    }

    
}
