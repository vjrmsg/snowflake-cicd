terraform {
  cloud {
    organization = "testorgst"

    workspaces {
      name = "TestWorkspace"
    }
  }
}

provider "snowflake" {
  account = var.SNOWFLAKE_ACCOUNT
  region  = var.SNOWFLAKE_REGION
  user    = var.SNOWFLAKE_USER
  password  = var.SNOWFLAKE_PASSWORD
}

resource "snowflake_database" "TESTDB111" {
  name    = "TESTDB111"
  comment = "Database for Snowflake Terraform demo"
}

