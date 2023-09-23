<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::all();
        return response()->json(['data' => $users]);
    }
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
        ]);

        try {
            $user = new User();
            $user->name = $validatedData['name'];
            $user->email = $validatedData['email'];
            $user->password = bcrypt($validatedData['password']);
            $user->save();

            return response()->json([
                'data' => $user,
                'message' => 'User created successfully'
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'email or password error: ' . $e->getMessage()], 500);
        }
    }

    public function show(string $id)
    {
        try {
            $user = User::findOrFail($id);
            return response()->json(['data' => $user]);
        } catch (ModelNotFoundException $e) {
            return response()->json(['message' => 'User not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $id,
            'password' => 'nullable|min:6',
        ]);

        $user = User::findOrFail($id);
        $user->name = $validatedData['name'];
        $user->email = $validatedData['email'];

        if (isset($validatedData['password'])) {
            $user->password = bcrypt($validatedData['password']);
        }

        $user->save();

        return response()->json(['message' => 'User updated successfully', 'data' => $user]);
    }

    public function destroy(string $id)
    {
        try {
            $user = User::findOrFail($id);
            $user->delete();
            return response()->json(['message' => 'User deleted successfully']);
        } catch (ModelNotFoundException $e) {
            return response()->json(['message' => 'User not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }
    // public function Login(Request $request)
    // {
    //     $this->validate($request, [
    //         'Email' => 'required',
    //         'Password' => 'required'
    //     ]);
    //     $user = User::where('Email', $request->Email)->first();
    //     if (!Hash::check($request->Password, $user->Password)) {
    //         return ["error" => "email or pass not mach"];
    //     } else {
    //         "login successful";
    //     }
    //     $token = $user->createToken($user->name);
    //     return response()->json([
    //         "token" => $token->plainTextToken,
    //         "User" => $user,
    //         "login" => true
    //     ]);
    // }
    public function Login(Request $request)
    {
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required'
        ]);
        $user = User::whereEmail($request->email)->first();
        if (isset($user->id)) {
            if (hash::check($request->password, $user->password)) {
                Auth::login($user, $remember = true);
                $token = $user->createToken('Auth_token')->plainTextToken;
                return response()->json([
                    'message' => 'connected seccefuly',
                    'user' => $user,
                    'token' => $token,
                    'login' => true,
                    // 'auth' => auth()->user(),
                ]);
            } else {
                return response()->json([
                    'message' => 'password not correct',
                    'login' => false
                ]);
            };
        } else {
            return response()->json([
                'message' => 'no user exist with this email',
                'login' => false
            ]);
        };
    }
    public function user(Request $request)
    {
        
        $user= $request->user();
        
        return response()->json(['data' => $user]);
    }
    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();

        return response()->json(['message' => 'Successfully logged out']);
}
}
