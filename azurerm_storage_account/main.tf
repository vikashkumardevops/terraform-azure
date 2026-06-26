resource "azurerm_resource_group" "rg-sa" {
    
  name     = var.rg-block.name
  location = var.rg-block.location
}

resource "azurerm_storage_account" "sa" {
    for_each = var.sa-new
  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.rg-sa.name
  location                 = azurerm_resource_group.rg-sa.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  tags = each.value.tags
}

resource "azurerm_storage_container" "cont" {
    for_each = var.cont
  name                  = each.value.name
  storage_account_id    = azurerm_storage_account.sa[each.value.sa].id
  container_access_type     = each.value.container_access_type
}
