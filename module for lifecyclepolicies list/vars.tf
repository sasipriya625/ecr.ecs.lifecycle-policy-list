variable "region" {
  type = string
  description = "Name of the Region"
}
variable "finops-cluster" {
   type = string
   description = "Name of the Cluster"
 }
variable "finops-ecr" {
  type = string
  description = "Name of image tag"
}
variable "tags" {
    type = map(string)
    description = "key value for tagging"
}
variable "image_tag_mutability" {
  type = string
  description = "Name of the image"
}
# variable "repository" {
#   type = string
#   description = "name of repository"
# }
variable "finopslifecyclepolicy" {
  type = bool
  description = "Name of life cycle policy"
}
variable "policies" {
  type = map
  description = "Description of Lifecyclepolicy"
}
  