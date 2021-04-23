<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

use App\Models\User;
use App\Models\Playlist;
use App\Models\PlaylistSong;
use App\Models\Song;
use App\Models\UserPlaylist;
use App\Http\Resources\PlaylistCollection;
class UserPlaylistCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $userId = $request -> user() ->id;
        $playlist = UserPlaylist::where('user_id',$userId) ->get();
        $playListArr = array();
        foreach($playlist as $p)
        {
                $playlist =  Playlist::where('id', $p->playlist_id)->get();
              
                $songIdArr = PlayListSong::where('playlist_id', $playlist[0]["id"])->get();
                $songArr = array();
                foreach($songIdArr as $s)
                {
                    array_push($songArr, Song::where('id', $s->song_id)->get()[0]);
                }
                array_push(
                    $playListArr,
                [
                    'list' => $playlist[0],
                    'song' =>$songArr
                ]);
        }        
        return 
        [
            'user' => $request -> user(),
            'playlist'=> $playListArr
        ];
    }
}
