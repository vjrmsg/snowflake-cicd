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

resource "snowflake_database" "test2" {
  name    = "testing_2"
  comment = "test comment 2"
}

