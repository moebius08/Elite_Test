
<template>
    <div class="d-flex align-items-center justify-content-center height">
        <main class="form-signin w-25 m-auto">
            <form>
                <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
                <div class="form-floating">
                    <input name="username" type="username" v-model="data.username" class="form-control" id="username" placeholder="username">
                    <label for="username">Username</label>
                </div>
                <br>
                <div class="form-floating">
                    <input name="password" v-model="data.password" type="password" class="form-control" id="password" placeholder="Password">
                    <label for="password">Password</label>
                </div>
                <br>
                <button 
                    @click="submit()"
                    type="button"
                    class="btn btn-primary w-100 py-2" name="submit">Sign in</button>
                <p class="mt-5 mb-3 text-body-secondary">Elite Exam</p>
            </form>
        </main>
    </div>

</template>

<script>
import axios from 'axios';
import router from '../router/index'
import { reactive } from 'vue';

export default {
    name: "Login",
    setup() {
        const data = reactive({
            username: '',
            password: '',
        });

        const token = localStorage.token
        if (token) {
        // If there's no token, redirect to the login page
        router.push('/dashboard');
        return;
        }
        const submit = async () => {
            try {
                const response = await axios.post('/api/login', data, {
                    headers: { 'Content-Type': 'application/json' },
                    withCredentials: true,
                });
                if(response.status === 200) {
                    const token = response.data.message;
                    localStorage.setItem('token', token);
                    router.push('/dashboard')
                }
            } catch (error) {
                console.error(error);
            }
        }

        

        return { data, submit }
    }
}
</script>

<style>
  .height {
    height: calc(100vh - 60px); 
  }
</style>

