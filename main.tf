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
  account = env.SNOWFLAKE_ACCOUNT
  region  = env.SNOWFLAKE_REGION
  user    = env.SNOWFLAKE_USER
  password  = env.SNOWFLAKE_PASSWORD
}

resource "snowflake_database" "TESTDB111" {
  name    = "TESTDB111"
  comment = "Database for Snowflake Terraform demo"
}

