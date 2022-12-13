variable "finops-ecr" {
  type = string
  description = "Name of the ECR"
}
variable "image_tag_mutability" {
  type = string
  description = "Name of the image repo"
}
variable "tags" {
  type = map(string)
  description = "Name of the tags"
}
variable "policies" {
  type = string
  description = "List the Policy"
}
variable "finopslifecyclepolicy" {
  type = bool
  description = "Description of lifecycyle policy"
}