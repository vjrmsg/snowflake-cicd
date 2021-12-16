terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "testorgst"

    workspaces {
      name = "TestWorkspace"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "TESTDB111" {
  name    = "TESTDB111"
  comment = "Database for Snowflake Terraform demo"
}

