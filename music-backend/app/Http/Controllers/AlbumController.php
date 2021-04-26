<?php

namespace App\Http\Controllers;

use App\Models\Album;
use App\Models\Song;
use App\Models\Genre;
use App\Models\Artist;
use App\Models\AlbumArtist;
use App\Models\AlbumGenre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Http\JsonResponse;
class AlbumController extends Controller
{
    public function getAlbums()
    {
        $albums = DB::table('albums')->get();
        return response()->json(['albums' => $albums]);
    }

    public function getAlbumSongs($album_id){
        $songs = Song::where('album_id',$album_id)->get();
        $album = Album::where('id', $album_id)->get();

        $album_artist = AlbumArtist::where('album_id', $album_id)->get();
        $album_genre = AlbumGenre::where('album_id', $album_id)->get();
        $arr_artist = array();
        foreach($album_artist as $sa){
            array_push($arr_artist,Artist::where('id', $sa->artist_id)->get()[0]);
        }
        $arr_genre = array();
        foreach($album_genre as $sg){
            array_push($arr_genre, Genre::where('id', $sg->genre_id)->get()[0]);
        }
        return response()->json([
            'album' => $album,
            'songs' => $songs,
            'artists' => $arr_artist,
            'genres' => $arr_genre
        ]);
    }
    
}
