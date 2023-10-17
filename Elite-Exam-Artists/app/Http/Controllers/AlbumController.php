<?php

namespace App\Http\Controllers;

use App\Imports\AlbumsImport;
use App\Models\Album;
use App\Models\Artist;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class AlbumController extends Controller
{
    public function getAllAlbums()
    {
        $albums = Album::all();

        $data = [
            'status' => 200,
            'data' => $albums
        ];
        return response()->json($data);
    }

    public function viewAlbum($id)
    {
        $album = Album::find($id);

        if ($album) {
            $data = [
                'status' => 200,
                'data' => $album
            ];
        } else {
            $data = [
                'status' => 404,
                'message' => 'Album not found'
            ];
        }

        return response()->json($data);

    }

    public function updateAlbum(Request $request, $id)
{
    $album = Album::find($id);

    if (!$album) {
        $data = [
            'status' => 404,
            'message' => 'Album not found'
        ];
        return response()->json($data);
    }
    $validatedData = $request->validate([
        'artist_id' => 'required|integer',
        'year' => 'required|string',
        'name' => 'required|string',
        'sales' => 'required|numeric',
        'last_update' => 'required|string',
    ]);
    $album->update($validatedData);
    $data = [
        'status' => 200,
        'message' => 'Album updated successfully',
        'data' => $album
    ];
    return response()->json($data);
}

public function deleteAlbum($id)
{
    $album = Album::find($id);

    if (!$album) {
        $data = [
            'status' => 404,
            'message' => 'Album not found'
        ];
        return response()->json($data);
    }
    $album->delete();
    $data = [
        'status' => 200,
        'message' => 'Album deleted successfully'
    ];
    return response()->json($data);
}
public function uploadImage(Request $request, $id)
{
    $album = Album::find($id);
    if (!$album) {
        $data = [
            'status' => 404,
            'message' => 'Album not found'
        ];
        return response()->json($data);
    }
    $request->validate([
        'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Adjust the validation rules as needed
    ]);
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        $image->storeAs('images', $imageName, 'public');
        $album->cover_image = 'images/' . $imageName;
        $album->save();
        $data = [
            'status' => 200,
            'message' => 'Image uploaded successfully',
            'data' => $album
        ];
        return response()->json($data);
    }
    $data = [
        'status' => 400,
        'message' => 'Image upload failed'
    ];
    return response()->json($data);
}




}
