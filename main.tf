/*
provider "azurerm" {
    features {}
}
*/

########## Modules ################

module "app-service" {
    source = "./modules/app-service"
    location            = "${var.deploy_location}" # var.location
    environment         = var.environment
    owner               = var.owner
    description         = "Linux Docker container app"
    # app_name            = var.app_service_name
    # app_port            = var.app_service_port
    # docker_image        = var.app_service_image
    # docker_image_tag    = var.app_service_image_tag
}
