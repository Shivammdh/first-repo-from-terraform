

resource "github_repository" "terraform-first-repo" {
  name        = "first-repo-from-terraform"
  description = "My First resource for terraform" #this is option.
  visibility  = "public"
  auto_init   = true
}
# resource "github_repository" "terraform-second-repo" {
#   name       = "second-repo-from-terraform"
#   description = "My second resource for terraform"
#   visibility = "public"
#   auto_init  = true
# }

output "terraform-repo-url" {
  value = github_repository.terraform-first-repo.html_url
}
