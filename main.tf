terraform {
  required_providers {
    snowflake = {
      source  = "vijaysri/snowflake"
      version = "0.25.17"
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
}

resource "snowflake_database" "TESTDB111" {
  name    = "TESTDB111"
  comment = "Database for Snowflake Terraform demo"
}

