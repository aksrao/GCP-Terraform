resource "google_compute_instance" "nginx" {
  name         = "nginx-server"
  zone         = "asia-south1-a"
  machine_type = "e2-small"

  tags = ["nginx"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  metadata_startup_script = file("script.sh")

  network_interface {
    network    = google_compute_network.vpc1.self_link
    subnetwork = google_compute_subnetwork.subnet-01.self_link
    access_config {
    }
  }

}
output "external-ip" {
  value = google_compute_instance.nginx.network_interface[0].access_config[0].nat_ip
}