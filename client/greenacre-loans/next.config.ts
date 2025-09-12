import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  async rewrites() {
    return [
      {
        source: "/apply",
        destination: `http://${process.env.BACKEND_HOST || "server"}:${process.env.BACKEND_PORT || 8080}/apply`,
      },
    ];
  }
};

export default nextConfig;
