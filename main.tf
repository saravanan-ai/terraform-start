data "aws_instance" "existing_instance" {
  instance_id = var.instance_id
}

resource "null_resource" "start_instance" {
  provisioner "local-exec" {
    command = "aws ec2 start-instances --instance-ids ${var.instance_id}"
  }

  depends_on = [data.aws_instance.existing_instance]
}

output "instance_state" {
  value = data.aws_instance.existing_instance.instance_state
}
