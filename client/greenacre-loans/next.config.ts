import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  async rewrites() {
    return [
      {
        source: "/apply",
        destination: "http://server:8080/apply", // Hardcoded for Docker
      },
    ];
  }
};

export default nextConfig;
