rg-block = {
    name = "SA-RG"
    location = "centralindia"
}

sa-new = {
      sa-1 = {
        name = "gundebhifinancerbhi"
        account_tier = "Standard"
        account_replication_type = "LRS"
        tags = { 
            env = "production"
      }
      }

      sa-2 = {
        name = "upsccivildocs"
        account_tier = "Standard"
        account_replication_type = "LRS"
        tags = { 
            env = "production"
      }
    }
}

cont = {
        cont-1 = {
      name = "awsazuredocindiawwe"
      container_access_type = "private"
        sa = "sa-1"
        }
        cont-2 = {
      name = "azureawsdocindiawwe"
      container_access_type = "private"
      sa = "sa-2"
        }

    }