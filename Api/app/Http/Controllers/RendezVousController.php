<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Service;
use App\Models\RendezVous;
use Illuminate\Http\Request;

class RendezVousController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $rendezVous = RendezVous::all();
        return response()->json(['data' => $rendezVous]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            // Validate the request data
            $this->validate($request, [
                'service_id' => 'required|exists:services,id',
                'phone_number' => 'required|numeric|max:9999999999',
                'email' => 'required|email',
                'date_derende_zvous' => 'required|date',

                'heure_de_rendez_vous' => [
                    'required',
                    function ($attribute, $value, $fail) use ($request) {
                        $appointmentTime = Carbon::parse($value);

                        // Check if there is already an appointment scheduled at the same time
                        $existingRendezvous = RendezVous::where('date_derende_zvous', $request->date_derende_zvous)
                            ->where('heure_de_rendez_vous', $appointmentTime->format('H:i'))
                            ->exists();

                        if ($existingRendezvous) {
                            $fail('Un rendez-vous existe déjà à cette heure sélectionnée.');
                        }
                    },
                ],
            ]);
            // Retrieve the Service record based on the provided service_id
            $service = Service::findOrFail($request->service_id);

            // Create a new RendezVous instance
            $rendezvous = new RendezVous();
            $rendezvous->service_id = $service->id;
            $rendezvous->phone_number = $request->phone_number;
            $rendezvous->email = $request->email;
            $rendezvous->date_derende_zvous = $request->date_derende_zvous;
            $rendezvous->heure_de_rendez_vous = $request->heure_de_rendez_vous;
            $rendezvous->etat = $request->etat ?? 'Non Confirme';
            $rendezvous->save();

            // Return success message
            return response()->json(['message' => 'Rendez-vous created successfully'], 201);
        } catch (\Exception $e) {
            // Return error message
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        $rendezVous = RendezVous::findOrFail($id);
        return response()->json(['data' => $rendezVous]);
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

        try {
            // Find the RendezVous instance to update
            $rendezvous = RendezVous::findOrFail($id);

            // Update the RendezVous attributes
            if ($request->has('phone_number')) {
                $rendezvous->phone_number = $request->phone_number;
            }
            if ($request->has('date_derende_zvous')) {
                $rendezvous->date_derende_zvous = $request->date_derende_zvous;
            }
            if ($request->has('email')) {
                $rendezvous->email = $request->email;
            }

            if ($request->has('heure_de_rendez_vous')) {
                $rendezvous->heure_de_rendez_vous = $request->heure_de_rendez_vous;
            }
            $rendezvous->etat = $request->etat ?? 'NonConfirme';
            $rendezvous->save();

            // Return success message
            return response()->json(['message' => 'Rendez-vous updated successfully'], 200);
        } catch (\Exception $e) {
            // Return error message
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    //renvoi les annules
    public function annules()
    {
        try {
            $annuleData = RendezVous::where('etat', 'Annule')->get();

            return response()->json(['data' => $annuleData], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    //supprimer les annules
    public function annuleDestroy($id)
    {
        try {
            $annuleData = RendezVous::findOrFail($id);
            $annuleData->delete();

            return response()->json(['message' => 'Annule data deleted successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error deleting annule data: ' . $e->getMessage()], 500);
        }
    }



    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {

        $rendezVous = RendezVous::find($id);

        if (!$rendezVous) {
            return response()->json(['message' => 'Rendezvous not found'], 404);
        }

        $rendezVous->delete();

        return response()->json(['message' => 'Rendezvous deleted successfully']);
    }
}
