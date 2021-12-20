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


resource "snowflake_database" "git_db_demo" {
  name    = "GIT_DB_Demo"
  comment = "Database for Snowflake Terraform demo"
}
