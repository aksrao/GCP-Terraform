resource "google_compute_instance" "nginx" {
  name = "nginx-server"
  zone = "asia-south1-a" 
  machine_type = "e2-small"

  tags = ["nginx"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  metadata = {
    "ssh-keys" = <<EOT
      ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDEX8+TcITLQroWoM8pxDgtq+r+keNV8aFIE9G2AZ0UwaR+cSy+6wG3fZM+jbCOr8+lZohTxQyc8PRLRZG1FOTLLC3BkjNteyGuCfFuZGHVZWcuPB3aa7M3QMe9IUB6DfKCNclGPno0PvbksNnM0qJAlxzwN8IAXDeyKptg1P/7LqYE7O9dlwDL+xM14MyQkQpxW/s27/ECh+dieedmlc1m7VyXM7cwEg7DF2kYUIPkF7hg0+jCTnniRyRybOljpCkog1eHqV2g7Hi5NT3Pw0GK7KbFHN+3a8oBd7dB8bZmsFS/8BgHWcTZMXyH0T2+iecMqV9KH/i7oOWMaw/wepmptHQIuZOf0KB++4LbVWwFOM8G6CtLMy/TGmpX/qf64EHR/vEWfEGbRv5kZToo9Gf2014Thf+PaAA3QXsETHyxbdwU8ypKpBWQdWj45svENQyyBq2ARkJFeCahz4uAY32UdOAJ+j9MMo4olVb5wO2wbwZTGoyS7Fz1O8c39AqxPT7Uf1dVb04fuTC002dqlY+r5OxDqITawDp8+zWzPcMOA7O8XrLMhxWTXqqtMydFek2eOms9xkkQrmAdgue2/ccUZ3HN6l+mfc/W3JYIlYsHQJQzhcIpfcL0Zv4A/gRcWMMzhRRzrxk2Q9IctJG46MPb+PP6TKikFDnpeFW6IqQ7lQ== akshayrao@Akshays-Laptop.local
      EOT
  }
  network_interface {
    network = google_compute_network.VPC1
  }

}