terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.30"
    }
  }

  backend "remote" {
    organization = "testorgst"

    workspaces {
      name = "testorgst"
    }
  }
}

provider "snowflake" {
  account = var.SNOWFLAKE_ACCOUNT
  region  = var.SNOWFLAKE_REGION
  user    = var.SNOWFLAKE_USER
  password = var.SNOWFLAKE_PASSWORD
}

resource "snowflake_database" "TESTDB111" {
  name    = "TESTDB111"
  comment = "Database for Snowflake Terraform demo"
}

