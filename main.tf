data "vsphere_datacenter" "datacenter" {
  name = var.datacenter
}

// looks up the datastore
data "vsphere_datastore" "datastore" {
  name          = var.datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

// creates a content library
resource "vsphere_content_library" "content_library" {
  for_each        = var.content_library
  name            = each.value.name
  description     = each.value.description
  storage_backing = [data.vsphere_datastore.datastore.id]
  dynamic "subscription" {
    for_each = var.content_library[each.key].subscription_url != null ? ["true"] : []
    content {
      subscription_url      = each.value.subscription_url
      automatic_sync        = each.value.automatic_sync
      on_demand             = each.value.on_demand_sync
      authentication_method = each.value.authentication_method
      username              = each.value.username
      password              = each.value.password
    }
  }
}