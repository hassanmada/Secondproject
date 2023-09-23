<?php

namespace App\Models;

use App\Models\Service;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class RendezVous extends Model
{
    use HasFactory;
    protected $fillable = [
        'phone_number', 'date_derende_zvous', 'heure_de_rendez_vous', 'etat','email'
    ];
    public function service()
    {
        return $this->belongsTo(Service::class);
    }
}
