import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
    server: {
        proxy: {
            '/api/login': 'http://127.0.0.1:8000',
            '/api/user': 'http://127.0.0.1:8000',
            '/api/artists': 'http://127.0.0.1:8000',
            '/api/albums': 'http://127.0.0.1:8000',
            '/api/logout': 'http://127.0.0.1:8000',



        }
    },
    plugins: [
        vue(),
    ],
    resolve: {
        alias: {
            '@': fileURLToPath(new URL('./src',
                import.meta.url))
        }
    }
})