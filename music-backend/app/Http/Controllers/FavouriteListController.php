<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\FavouriteList;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\FavouriteListCollection;
class FavouriteListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //get list
        return new FavouriteListCollection(User::where('id', $request->id)->get());
    }
    public function addFavorite(Request $request){
        DB::table('favorite_list')->insert([
            'user_id' => $request->id,
            'song_id' => $request->song_id
        ]);
    }

    public function deleteFavorite(Request $request){
        FavouriteList::where('user_id', $request->id)
        ->where('song_id', $request->song_id)
        ->delete();
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\favourite_list  $favourite_list
     * @return \Illuminate\Http\Response
     */
    public function show(favourite_list $favourite_list)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\favourite_list  $favourite_list
     * @return \Illuminate\Http\Response
     */
    public function edit(favourite_list $favourite_list)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\favourite_list  $favourite_list
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, favourite_list $favourite_list)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\favourite_list  $favourite_list
     * @return \Illuminate\Http\Response
     */
    public function destroy(favourite_list $favourite_list)
    {
        //
    }
}
