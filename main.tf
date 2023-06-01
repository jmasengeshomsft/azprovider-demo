# data "azurerm_api_management" "jm_apim" {
#   name                = "jmdevapim001"
#   resource_group_name = "apim-demos"
# }

# resource "azapi_resource" "myfragment" {
#   type = "Microsoft.ApiManagement/service/policyFragments@2022-08-01"
#   name = "jmNewFragment"
#   parent_id = data.azurerm_api_management.jm_apim.id
#   body = jsonencode({
#     properties = {
#       description = "string"
#       format = "xml"
#       value = <<EOT
#       <fragment>
#         <set-header name="x-request-context-data" exists-action="override">
#           <value>@(context.User.Id)</value>
#           <value>@(context.Deployment.Region)</value>
#         </set-header>
#      </fragment>
#      EOT
#     }
#   })
# }

provider "azurerm" {
    features {}
}

variable "resource_group_name" {}

resource "azurerm_resource_group" "vnet" {
  name     = var.resource_group_name
  location = "East US"
}
