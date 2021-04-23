<?php

namespace App\Http\Controllers;

use App\Models\UserPlaylist;
use Illuminate\Http\Request;
use App\Http\Resources\UserPlaylistCollection;
use App\Http\Resources\PlaylistCollection;
use App\Models\User;
class UserPlaylistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //get user playlist
        return new UserPlaylistCollection(User::where('id', $request->id)->get());
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
     * @param  \App\Models\UserPlaylist  $userPlaylist
     * @return \Illuminate\Http\Response
     */
    public function show(UserPlaylist $userPlaylist)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserPlaylist  $userPlaylist
     * @return \Illuminate\Http\Response
     */
    public function edit(UserPlaylist $userPlaylist)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserPlaylist  $userPlaylist
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UserPlaylist $userPlaylist)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserPlaylist  $userPlaylist
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserPlaylist $userPlaylist)
    {
        //
    }
}
