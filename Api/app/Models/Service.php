<?php

namespace App\Models;

use App\Models\RendezVous;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Service extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'description'];
    public function rendezvous()
    {
        return $this->hasMany(RendezVous::class);
    }
}
