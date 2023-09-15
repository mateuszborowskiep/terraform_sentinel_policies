terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "cloudsecurityteam"

        workspaces {
            name = "terraform_sentinel_policies"
        }
    }
}