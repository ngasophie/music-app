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
use App\Http\Resources\ArtistCollection;
use App\Http\Resources\GenreCollection;
class AlbumController extends Controller
{
     public function getAlbums()
    {
        $albums = Album::all();
        return response()->json(['albums' => $albums]);
    }

    public function getAlbumSongs($album_id){
        $songs = Song::where('album_id',$album_id)->get();
        $album = Album::where('id', $album_id)->get();

        $arr_artist = ArtistCollection::getAlbumArtist($album_id);
        $arr_genre = GenreCollection::getAlbumGenre($album_id);
       
        return response()->json([
            'album' => $album,
            'songs' => $songs,
            'artists' => $arr_artist,
            'genres' => $arr_genre
        ]);
    }
    
}
