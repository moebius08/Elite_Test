<script setup>
import { RouterLink, RouterView } from 'vue-router';
import router from './router/index';
import axios from 'axios';

const token = localStorage.token
console.log(token)

const handleLogout = async () => {
      try {
        // Make the logout request and wait for the response
        await axios.post('/api/logout');
        console.log('Logged out successfully');
        // Remove the token from local storage
        localStorage.removeItem('token');
        // Redirect to the login route using router
        router.push('/login');

        location.reload()
      } catch (error) {
        console.error('Logout request failed:', error);
      }
    }

</script>

<template>
  <header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <RouterLink class="navbar-brand" to="/">Navbar</RouterLink>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          </ul>
          <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
            <li class="nav-item" v-if="token">
              <RouterLink class="nav-link" to="/albums">Album</RouterLink>
            </li>
            <li class="nav-item" v-if="!token">
              <RouterLink class="nav-link" to="/login">Sign In</RouterLink>
            </li>
            <li class="nav-item" v-if="token">
              <RouterLink class="nav-link" to="/dashboard">Dashboard</RouterLink>
            </li>
            <li class="nav-item btn btn-danger" v-if="token">
              <button class="nav-link" @click="handleLogout">Logout</button>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <RouterView />
</template>


<style scoped>
</style>
