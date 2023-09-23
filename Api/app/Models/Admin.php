<?php

namespace App\Models;

// use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Admin extends Model
{
    // use Authenticatable;
    use HasFactory;
    use HasApiTokens;
    protected $guard = 'admin';

    protected $fillable = [
        'Nom', 'Email', 'Password',
    ];

    protected $hidden = [
        'Password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
