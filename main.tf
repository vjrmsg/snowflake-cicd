terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }
  }

terraform { 
organization = "testorgst"

    workspaces {
      name = "TestWorkspace"
    }
}



provider "snowflake" {
}


resource snowflake_database_grant grant {
  database_name = "testdb"

  privilege = "USAGE"
  roles     = ["role1", "role2"]
  shares    = ["share1", "share2"]

  with_grant_option = false
}
