resource "google_compute_firewall" "nginx" {
  name    = "allow"
  network = google_compute_network.vpc1.self_link

  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_tags = ["nginx"]
  target_tags = ["nginx"]
}