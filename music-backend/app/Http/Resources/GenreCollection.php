<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Models\AlbumGenre;
use App\Models\SongGenre;
use App\Models\Genre;

class GenreCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    
    public static function getSongGenre($id_song){
        $song_genre = SongGenre::where('song_id', $id_song)->get();
        $arr_genre = array();
        foreach($song_genre as $sa){
            array_push($arr_genre,Genre::where('id', $sa->genre_id)->get()[0]);
        }
        return $arr_genre;
    }

    public static function getAlbumGenre($id_album){
        $album_genre = AlbumGenre::where('album_id', $id_album)->get();
        $arr_genre = array();
        foreach($album_genre as $aa){
            array_push($arr_genre,Genre::where('id', $aa->genre_id)->get()[0]);
        }
        return $arr_genre;
    }
    
}
