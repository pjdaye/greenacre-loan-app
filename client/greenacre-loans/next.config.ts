import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  async rewrites() {
    return [
      {
        source: "/apply/:path*",
        destination: "http://localhost:5000/apply/:path*", // Proxy to Backend
      },
    ];
  }
};

export default nextConfig;
