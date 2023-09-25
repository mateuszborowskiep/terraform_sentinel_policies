module "tfplan-functions" {
    source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "gcp-functions" {
    source = "./gcp-functions/gcp-functions.sentinel"
}

policy "enforce-mandatory-labels" {
    source = "./enforce-mandatory-labels.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-gce-machine_type" {
    source = "./restrict-gce-machine_type.sentinel"
    enforcement_level = "advisory"
}