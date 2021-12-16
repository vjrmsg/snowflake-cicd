terraform {
  required_providers {
    snowflake = {
      source  = "vijaysri/snowflake"
      version = "1.2.21"
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

