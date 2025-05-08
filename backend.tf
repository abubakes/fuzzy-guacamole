terraform {
    backend "s3" {
        bucket = "abubakes-newday-backend0"
        key = "state/terraform.tfstate"
        region = "us-east-1"
    }
}