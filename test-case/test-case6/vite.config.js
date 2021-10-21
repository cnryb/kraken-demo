import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig(({ mode }) => ({
  plugins: [vue()],
  build: {
    minify: mode === 'production',
    rollupOptions: {
      input: 'src/main.js',
      output: {
        entryFileNames: `[name].js`,
        manualChunks: {}
      }
    }
  }
}))
