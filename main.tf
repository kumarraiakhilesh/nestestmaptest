resource "azurerm_resource_group" "akhilesh_rg" {
  for_each = var.recource1
  name     = each.value.name
  location = each.value.location
}
resource "azurerm_storage_account" "akhilesh_storage" {
  depends_on               = [azurerm_resource_group.akhilesh_rg]
  for_each                 = var.storage1
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_replication_type = each.value.account_replication_type
  account_tier             = each.value.account_tier
}
resource "azurerm_virtual_network" "akhilesh_vnet" {
  for_each            = var.vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  dynamic "subnet" {
    for_each = each.value.subnet
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }
}
