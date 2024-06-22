<script setup>
import {getPosts} from '~/api/posts.js';
const posts = await getPosts()
console.log(await getPosts())
</script>

<template>
  <div>
    <h1>Does it work?</h1>
    <div v-for="post in posts" :key="post.id">
      <div v-html="post.html"></div>
    </div>
  </div>
</template>
