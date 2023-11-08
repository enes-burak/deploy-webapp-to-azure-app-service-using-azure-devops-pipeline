terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = "0.10.0"
    }
  }
}

provider "azuredevops" {
  # Configuration options
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
}