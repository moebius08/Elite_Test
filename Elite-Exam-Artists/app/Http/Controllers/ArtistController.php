<?php

namespace App\Http\Controllers;

use App\Models\Artist;
use Illuminate\Http\Request;

class ArtistController extends Controller
{
    //Functions- read the full details of created artist
    public function getAllArtists()
    {
        $artists = Artist::all();

        $data = [
            'status' => 200,
            'data' => $artists
        ];
        return response()->json($data);
    }
    public function viewArtist($id)
    {
        $artist = Artist::find($id);

        if ($artist) {
            $data = [
                'status' => 200,
                'data' => $artist
            ];
        } else {
            $data = [
                'status' => 404,
                'message' => 'artist not found'
            ];
        }

        return response()->json($data);

    }

    //Functions update the full details of created artist
    public function updateArtist(Request $request, $id)
    {
        $artists = Artist::find($id);

        if (!$artists) {
            $data = [
                'status' => 404,
                'message' => 'artist not found'
            ];
            return response()->json($data);
        }
        $validatedData = $request->validate([
            'name' => 'required|string',
        ]);
        $artists->update($validatedData);
        $data = [
            'status' => 200,
            'message' => 'artist updated successfully',
            'data' => $artists
        ];
    return response()->json($data);

    }

    public function deleteArtist($id) {
        $artist = Artist::find($id);

        if (!$artist) {
            $data = [
                'status' => 404,
                'message' => 'artist not found'
            ];
            return response()->json($data);
        }
        $artist->delete();
        $data = [
            'status' => 200,
            'message' => 'artist deleted successfully'
        ];
        return response()->json($data);
    }

    //Functions delete the details of created artist
}
