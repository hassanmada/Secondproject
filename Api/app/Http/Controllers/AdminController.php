<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Eloquent\ModelNotFoundException;


class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $admins = Admin::all();
        return response()->json(['data' => $admins]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'Nom' => 'required',
            'Email' => 'required|email|unique:admins,Email',
            'Password' => 'required|min:6',
        ]);

        try {
            // Check if admin with the same email already exists
            $existingAdmin = Admin::where('Email', $validatedData['Email'])->first();
            if ($existingAdmin) {
                return response()->json(['message' => 'Admin with the same email already exists'], 409);
            }

            $admin = new Admin();
            $admin->Nom = $validatedData['Nom'];
            $admin->Email = $validatedData['Email'];
            $admin->Password = bcrypt($validatedData['Password']);
            $admin->save();

            return response()->json([
                'data' => $admin,
                $admin->Email,
                $admin->Password,
                'message' => 'Admin created successfully'
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }



    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        try {
            $admin = Admin::findOrFail($id);
            return response()->json(['data' => $admin]);
        } catch (ModelNotFoundException $e) {
            return response()->json(['message' => 'Admin not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }



    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'Nom' => 'required',
            'Email' => 'required|email|unique:admins,Email,' . $id,
            'Password' => 'nullable|min:6',
        ]);

        $admin = Admin::findOrFail($id);
        $admin->Nom = $validatedData['Nom'];
        $admin->Email = $validatedData['Email'];

        if (isset($validatedData['Password'])) {

            $admin->Password = bcrypt($validatedData['Password']);
        }

        $admin->save();

        return response()->json(['message' => 'Admin updated successfully', 'data' => $admin]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $admin = Admin::findOrFail($id);
            $admin->delete();
            return response()->json(['message' => 'Admin deleted successfully']);
        } catch (ModelNotFoundException $e) {
            return response()->json(['message' => 'Admin not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }




    public function Login(Request $request)
    {
        $this->validate($request, [
            'Email' => 'required',
            'Password' => 'required'
        ]);
        $admin = Admin::where('Email', $request->Email)->first();
        if (!Hash::check($request->Password, $admin->Password)) {
            return ["error" => "email or pass not mach"];
        } else {
            "loggin successful";
        }
        $token = $admin->createToken($admin->Nom);
        return response()->json([
            "token" => $token->plainTextToken,
            "Admin" => $admin,
            "login" => true
        ]);
    }
    public function Logout(Admin $admin,Request $request)
    {
            // Auth::logout();
            $admin->tokens()->delete();
            return response()->json(['message' => 'Logged out successfully',$admin->tokens(),$request]);
      
    }
}
