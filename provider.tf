# Configure terraform
terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 3627436
  api_key = "NRAK-JC08DMMZR3IF1DYMELC1KWEM571"  # usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}