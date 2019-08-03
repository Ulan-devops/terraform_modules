terraform {
    backend "s3" {
        region = "us-east-1"
        bucket = "terraform-module-farrukh"
        key = "no"
    }
}