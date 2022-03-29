variable "datacenter" {
  description = "(Required) Datacenter where the Content Library will be created"
  type        = string
}

variable "datastore" {
  description = "(Required) Datastore where the Content Library will be placed"
  type        = string
}

variable "content_library" {
  type = map(object({
    name                  = string
    description           = string
    subscription_url      = optional(string)
    automatic_sync        = optional(bool)
    on_demand_sync        = optional(bool)
    authentication_method = optional(string)
    username              = optional(string)
    password              = optional(string)
  }))
  description = "(Required) Map containing the configuration for the Content Library"
}