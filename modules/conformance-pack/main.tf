resource "aws_config_conformance_pack" "default" {
  name = module.this.name

  dynamic "input_parameter" {
    for_each = var.parameter_overrides
    content {
      parameter_name  = input_parameter.key
      parameter_value = input_parameter.value
    }
  }

  template_body = data.http.conformance_pack.body
}

data "http" "conformance_pack" {

  url             = var.conformance_pack
  request_headers = var.access_token == "" ? {} : { Authorization = "token ${var.access_token}" }
}
