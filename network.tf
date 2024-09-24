resource "google_compute_network" "VPC1" {
  name = "VPC1"
  project = "river-engine-434515-v2"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet-01" {
  name = "VPC1-subnet-01"
  network = google_compute_network.VPC1
  ip_cidr_range = "10.2.0.0/28"
  region = "asia-south1"
}
