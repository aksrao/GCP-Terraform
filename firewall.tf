resource "google_compute_firewall" "nginx" {
  name = "allow 22 and 80"
  network = google_compute_network.VPC1

  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports = ["80","8080"]
  }
  allow {
    protocol = "ssh"
    ports = ["22"]
  }
  target_tags = ["nginx"]
}