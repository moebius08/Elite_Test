<script>
import axios from 'axios';

export default {
  data() {
    return {
      artists: [],
      albums: [],
      artistTotalSales: {},
    };
  },
  async mounted() {
    const token = localStorage.token

    if (!token) {
      // If there's no token, redirect to the login page
      this.$router.push('/login');
      return;
    }

    try {
      const artistsResponse = await axios.get('/api/artists');
      this.artists = artistsResponse.data.data;

      const albumsResponse = await axios.get('/api/albums');
      this.albums = albumsResponse.data.data;

      if (localStorage.getItem('reloaded')) {
      // The page was just reloaded. Clear the value from local storage
      // so that it will reload the next time this page is visited.
      localStorage.removeItem('reloaded');
    } else {
      // Set a flag so that we know not to reload the page twice.
      localStorage.setItem('reloaded', '1');
      location.reload();
    }


      this.calculateTotalSales();
    } catch (error) {
      console.error(error);
    }
  },
  methods: {
    calculateTotalSales() {
      this.albums.forEach(album => {
        const artistId = album.artist_id;
        const sales = album.sales;
        if (!this.artistTotalSales[artistId]) {
          this.artistTotalSales[artistId] = sales;
        } else {
          this.artistTotalSales[artistId] += sales;
        }
      });
    },
    refreshPage() {
      window.location.reload();
    },

  },
  computed: {
    combinedData() {
      return this.artists.map(artist => ({
        artist: artist.name,
        totalAlbumSales: this.artistTotalSales[artist.id] || 0,
      }));
    },
    topArtist() {
      if (this.combinedData.length === 0) {
        return null;
      }

      // Sort artists by total album sales in descending order
      const sortedArtists = [...this.combinedData].sort((a, b) => b.totalAlbumSales - a.totalAlbumSales);

      // Return the top artist
      return sortedArtists[0];
    },
  },
};
</script>


<template>
                <div class="container-fluid">
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
</div>
<!-- Content Row -->
<div class="row">
    <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                    Top 1 artist who sold most combined album sales
                  </div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800" v-if="topArtist">
                    {{ topArtist.artist }} with a total of {{ topArtist.totalAlbumSales }} Album Sales
                  </div>
                  <div v-else>
                    Loading...
                  </div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
  </div>
<div class="container">
    <div class="col">
      <table class="table table-bordered" v-if="combinedData.length > 0">
        <thead slot="head">
            <th>Artist</th>
            <th>Total Number of Albums Sold</th>
        </thead>
        <tbody>
          <tr v-for="(row, index) in combinedData" :key="index">
            <td>{{ row.artist }}</td>
            <td>{{ row.totalAlbumSales }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

</template>

