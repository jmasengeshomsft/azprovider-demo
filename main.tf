data "azurerm_api_management" "jm_apim" {
  name                = "multi-tenant-apim"
  resource_group_name = "apim-demos"
}

resource "azapi_resource" "myfragment" {
  type = "Microsoft.ApiManagement/service/policyFragments@2022-08-01"
  name = "jmNewFragment"
  parent_id = data.azurerm_api_management.jm_apim.id
  body = jsonencode({
    properties = {
      description = "string"
      format = "xml"
      value = <<EOT
      <fragment>
        <set-header name="x-request-context-data" exists-action="override">
          <value>@(context.User.Id)</value>
          <value>@(context.Deployment.Region)</value>
        </set-header>
     </fragment>
     EOT
    }
  })
}
