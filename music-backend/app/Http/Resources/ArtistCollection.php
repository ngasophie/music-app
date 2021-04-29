<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Models\AlbumArtist;
use App\Models\SongArtist;
use App\Models\Artist;

class ArtistCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    
    public static function getSongArtist($id_song){
        $song_artist = SongArtist::where('song_id', $id_song)->get();
        $arr_artist = array();
        foreach($song_artist as $sa){
            array_push($arr_artist,Artist::where('id', $sa->artist_id)->get()[0]);
        }
        return $arr_artist;
    }

    public static function getAlbumArtist($id_album){
        $album_artist = AlbumArtist::where('album_id', $id_album)->get();
        $arr_artist = array();
        foreach($album_artist as $aa){
            array_push($arr_artist,Artist::where('id', $aa->artist_id)->get()[0]);
        }
        return $arr_artist;
    }
    
}
