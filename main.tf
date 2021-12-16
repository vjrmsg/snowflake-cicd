terraform {
  required_providers {
    snowflake = {
      source  = "vjayishg/snowflake"
      version = "1.1.1"
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

