<h1>API Documentation</h1>

Authentication
1. Register

Route: POST /api/register
Description: Registers a new user.
Request Body:
name (string): The user's name.
username (string): The username.
password (string): The user's password.
Function: AuthController@register

2. Login

Route: POST /api/login
Description: Logs in a user and provides an authentication token.
Request Body:
username (string): The username.
password (string): The user's password.
Function: AuthController@login

3. User Details

Route: GET /api/user
Description: Retrieves user details.
Function: AuthController@user
Middleware: auth:sanctum

4. Logout

Route: POST /api/logout
Description: Logs out the user and invalidates the authentication token.
Function: AuthController@logout
Middleware: auth:sanctum
Albums

5. Get All Albums

Route: GET /api/albums
Description: Retrieves a list of all albums.
Function: AlbumController@getAllAlbums
Middleware: auth:sanctum

6. View Album

Route: GET /api/albums/{id}
Description: Retrieves details of a specific album by ID.
Function: AlbumController@viewAlbum
Middleware: auth:sanctum

7. Update Album

Route: PATCH /api/albums/update/{id}
Description: Updates the details of a specific album by ID.
Request Body:
artist_id (integer): ID of the artist associated with the album.
year (string): The year of the album.
name (string): The name of the album.
sales (numeric): The sales figure for the album.
last_update (string): The last update date.
Function: AlbumController@updateAlbum
Middleware: auth:sanctum

8. Delete Album

Route: DELETE /api/albums/delete/{id}
Description: Deletes a specific album by ID.
Function: AlbumController@deleteAlbum
Middleware: auth:sanctum

9. Upload Album Image

Route: POST /api/albums/image/{id}
Description: Uploads an image for a specific album by ID.
Request Body:
image (file): The image to upload (JPEG, PNG, JPG, GIF formats, max 2MB).
Function: AlbumController@uploadImage
Middleware: auth:sanctum
Artists

10. Get All Artists

Route: GET /api/artists
Description: Retrieves a list of all artists.
Function: ArtistController@getAllArtists
Middleware: auth:sanctum

11. View Artist

Route: GET /api/artists/{id}
Description: Retrieves details of a specific artist by ID.
Function: ArtistController@viewArtist
Middleware: auth:sanctum

12. Update Artist

Route: PATCH /api/artists/update/{id}
Description: Updates the details of a specific artist by ID.
Request Body:
name (string): The name of the artist.
Function: ArtistController@updateArtist
Middleware: auth:sanctum

13. Delete Artist

Route: DELETE /api/artists/delete/{id}
Description: Deletes a specific artist by ID.
Function: ArtistController@deleteArtist
Middleware: auth:sanctum
