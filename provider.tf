# environments/dev/provider.tf
provider "aws" {
  region = "us-west-2"
  profile = "dev-profile" # AWS profile for dev environment
}
