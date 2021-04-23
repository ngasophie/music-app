<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Models\FavouriteList;
use App\Models\Song;
class FavouriteListCollection extends ResourceCollection
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
        $favouriteList = FavouriteList::where('user_id',$userId) ->get();
        $arr = array();
        foreach($favouriteList as $f)
        {
            array_push($arr, Song::where('id', $f->song_id)->get());
        }
        return 
        [
            'user' => $request -> user(),
            'song' => $arr
        ];
    }
}
