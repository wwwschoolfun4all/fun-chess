#!/usr/bin/env python3
import http.server
import socketserver
import threading
import requests
import time

class PublicServer:
    def __init__(self, port=8080):
        self.port = port
        self.public_url = None
        
    def start_local_server(self):
        """Start the local HTTP server"""
        Handler = http.server.SimpleHTTPRequestHandler
        with socketserver.TCPServer(("", self.port), Handler) as httpd:
            print(f"🚀 Local server running at http://localhost:{self.port}")
            print("📝 Your Fun Chess website is now accessible locally!")
            print("🌐 For public access, consider using:")
            print("   - ngrok (requires free account)")
            print("   - Docker Hub + Cloud deployment")
            print("   - Traditional web hosting")
            httpd.serve_forever()

if __name__ == "__main__":
    server = PublicServer()
    server.start_local_server()
