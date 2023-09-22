provider "google" {
    project = "${var.gcp_project}"
    region = "europe-west1"
}

resource "google_compute_instance" "demo" {
    name = "${var.instance_name}"
    machine_type = "${var.machine_type}"
    zone = "europe-west1-b"

    boot_disk {
        initialize_params {
            image = "${var.image}"
        }
    }

    network_interface {
        network = "default"

        access_config {
            // Ephemeral IP
        }
    }

}