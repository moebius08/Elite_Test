<template>
    <div>
      <div class="search-bar">
        <input v-model="searchArtist" @input="filterAlbums" placeholder="Search artist">
      </div>
      <table class="table">
        <thead>
          <tr>
            <th>Album Name</th>
            <th>Artist</th>
            <th>Release Year</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="album in filteredAlbums" :key="album.id">
            <td>{{ album.name }}</td>
            <td>{{ getArtistName(album.artist_id) }}</td>
            <td>{{ album.year }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    data() {
      return {
        albums: [],
        artists: [],
        searchArtist: '',
      };
    },
    async created() {
      // Fetch the list of albums and artists from your API and store them in the 'albums' and 'artists' data properties
      
    const token = localStorage.token

    if (!token) {
      // If there's no token, redirect to the login page
      this.$router.push('/login');
      return;
    }
      await this.fetchAlbums();
      await this.fetchArtists();
    },
    methods: {
      async fetchAlbums() {
        try {
          const response = await axios.get('/api/albums');
          this.albums = response.data.data;
        } catch (error) {
          console.error(error);
        }
      },
      async fetchArtists() {
        try {
          const response = await axios.get('/api/artists');
          this.artists = response.data.data;
        } catch (error) {
          console.error(error);
        }
      },
      filterAlbums() {
        // No need to filter here, we will do it in the computed property.
      },
      getArtistName(artistId) {
        const artist = this.artists.find(artist => artist.id === artistId);
        return artist ? artist.name : 'Unknown Artist';
      },
    },
    computed: {
      filteredAlbums() {
        // Filter the albums based on the searchArtist value
        const search = this.searchArtist.toLowerCase();
        return this.albums.filter(album => {
          const artist = this.artists.find(artist => artist.id === album.artist_id);
          return artist.name.toLowerCase().includes(search);
        });
      },
    },
  };
  </script>
  
  <style scoped>
  .search-bar {
    margin-bottom: 20px;
  }
  </style>
  