// Simple health check endpoint for client container
export async function GET() {
  return new Response('Client healthy', { status: 200 });
}
