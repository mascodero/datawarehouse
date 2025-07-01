variable "resource_group_name" {
  description = "Le nom du groupe de ressources Azure"
  type        = string
}

variable "location" {
  description = "La région Azure"
  type        = string
}

variable "tags" {
  description = "Les tags à appliquer au groupe de ressources"
  type        = map(string)
  default     = {}
}

variable "adf_name" {
  description = "Nom de l'ADF"
  type        = string
}

variable "vsts_configuration" {
  description = "Configuration du projet Azure DevOps"
  type = object({
    account_name    = string
    branch_name     = string
    project_name    = string
    repository_name = string
    root_folder     = string
    tenant_id       = string
  })
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}
variable "client_id" {
  description = "client_id"
  type        = string
}
variable "client_secret" {
  description = "client_secret"
  type        = string
}
variable "tenant_id" {
  description = "tenant_id"
  type        = string
}

