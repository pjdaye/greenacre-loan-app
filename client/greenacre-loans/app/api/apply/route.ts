// API route to proxy requests to the backend server
export async function POST(request: Request) {
  try {
    const body = await request.json();

    const backendUrl = process.env.BACKEND_HOST
      ? `http://${process.env.BACKEND_HOST}:${process.env.BACKEND_PORT || 8080}/apply`
      : 'http://server:8080/apply'; // Fallback for Docker

    const response = await fetch(backendUrl, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(body),
    });

    if (!response.ok) {
      throw new Error(`Backend responded with status: ${response.status}`);
    }

    const data = await response.json();
    return Response.json(data);
  } catch (error) {
    console.error('Proxy error:', error);
    return Response.json({ error: 'Failed to process request' }, { status: 500 });
  }
}
