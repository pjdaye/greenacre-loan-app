import type { NextConfig } from "next";

const BACKEND_PORT = process.env.BACKEND_PORT || 8080;
const BACKEND_HOST = process.env.BACKEND_HOST || 'localhost';
const nextConfig: NextConfig = {
  async rewrites() {
    return [
      {
        source: "/apply",
        destination: `http://${BACKEND_HOST}:${BACKEND_PORT}/apply`, // Proxy to Backend
      },
    ];
  }
};

export default nextConfig;
