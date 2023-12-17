variable "vpc_web" {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc web"
}

variable "vpc_web_europe" {
  type        = string
  default     = "172.16.0.0/16"
  description = "vpc web europe"
}

