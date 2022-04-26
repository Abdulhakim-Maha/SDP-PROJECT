module.exports = {
  async rewrites() {
    return [
      {
        source: "/api/orders",
        destination: "https://sdp-project.vercel.app/api/orders",
      },
    ];
  },
  images: {
    domains: [
      "res.cloudinary.com",
      "sdp-project.vercel.app",
      "sdp-project-git-main-abdulhakim-maha.vercel.app",
      "sdp-project-abdulhakim-maha.vercel.app",
    ],
  },
};
