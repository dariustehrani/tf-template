prefix              = "tf-template"
location            = "westeurope"
resource_group_name = "tf-template"

tags = {
  environment = "lab"
  project     = "globalplatform"
  cost_center = "4711"
  system_owner = "darius"
  managed_by  = "terraform"
  managed_git = "https://github.com/dariustehrani/tf-template.git"
}
