<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\FavouriteList;
class Song extends Model
{
    use HasFactory;
    protected $table = 'songs';
}
