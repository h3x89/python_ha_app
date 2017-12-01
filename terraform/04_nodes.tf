resource "google_compute_instance" "swarm-master" {
  count = "1"

  name         = "swarm-master"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  tags         = ["allow-tcp-80", "allow-tcp-22"]


  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }

  network_interface {
    network = "roberth3x89"

    access_config {
      # nat_ip = "${element(google_compute_address.swarm-master.*.address, count.index)}"
    }
  }
  metadata {
  ssh-keys = "ubuntu:${file("${var.public_key_path}")}"
}
}

resource "null_resource" "ansible-provision" {
  provisioner "local-exec" {
    command = "echo \"[swarm-master]\" > swarm-inventory"
  }

  provisioner "local-exec" {
    command = "echo \"${join("\n",formatlist("%s ansible_ssh_user=%s", google_compute_instance.swarm-master.*.network_interface.0.access_config.0.assigned_nat_ip, var.ssh_user))}\" >> swarm-inventory"
  }
}
