import GhostContentAPI from "@tryghost/content-api";

// Create API instance with site credentials
const api = new GhostContentAPI({
  url: 'http://localhost:8080',
  key: 'e1575ba5789bcf7f938841ccc4',
  version: "v5.0"
});

export async function getPosts() {
  return await api.posts
    .browse({
      limit: "all"
    })
    .catch(err => {
      console.error(err);
    });
}
