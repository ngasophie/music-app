<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Models\User;
use App\Models\PlayList;
use App\Models\PlayListSong;
use App\Models\Song;
use App\Models\UserPlaylist;
class PlaylistCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // $playlistId = $this -> id;
        // $songIdArr = PlayListSong::where('playlist_id', $playlistId)->get();
        // $songArr = array();
        // foreach($songIdArr as $s)
        // {
        //     array_push($songArr, Song::where('id', $s->song_id)->get());
        // }
        return [
            'id' => $this
        ];
    }
}
