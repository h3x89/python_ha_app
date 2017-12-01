resource "google_compute_network" "roberth3x89" {
  name       = "roberth3x89"
  ipv4_range = "192.168.1.0/24"
}
#
# resource "google_compute_address" "swarm-master" {
#   name = "swarm-master"
# }

resource "google_compute_firewall" "allow-tcp-80" {
  depends_on = [
    "google_compute_network.roberth3x89",
  ]

  name    = "allow-tcp-80"
  network = "${google_compute_network.roberth3x89.name}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-tcp-80"]
}

resource "google_compute_firewall" "allow-tcp-22" {
  depends_on = [
    "google_compute_network.roberth3x89",
  ]

  name    = "allow-tcp-22"
  network = "${google_compute_network.roberth3x89.name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-tcp-22"]
}
