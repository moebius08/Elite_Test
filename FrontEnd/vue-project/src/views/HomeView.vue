<script>
import router from '../router/index'

export default {
  mounted() {
    router.push('/login');
    window.location.reload();
  }
}
</script>

<template>
  <main>
    <div class="container justify-content-center align-items-center">
      <h1 class="text-center">Elite Project Exam</h1>
    </div>
  </main>
</template>
