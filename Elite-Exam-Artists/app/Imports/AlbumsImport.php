<?php

namespace App\Imports;

use App\Models\Artist;
use App\Models\Album;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class AlbumsImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        // Check if the artist exists
        $artist = Artist::firstOrCreate(['name' => $row['artist']]);

        // Create the album with the artist's ID
        return new Album([
            'artist_id' => $artist->id,
            'year' => $row['date_released'],
            'name' => $row['album'],
            'sales' => $row['2022_sales'],
            // add other fields
        ]);
    }
}
