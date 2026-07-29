"""Run `py server.py`, then open http://localhost:8000 in a browser."""

from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler


if __name__ == "__main__":
    server = ThreadingHTTPServer(("localhost", 8000), SimpleHTTPRequestHandler)
    print("3D viewer: http://localhost:8000")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped.")
        server.server_close()
