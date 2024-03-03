resource "aws_instance" "firefly_test_instance_2-bc1" {
  ami                         = "ami-0ef9e689241f0bb6e"
  associate_public_ip_address = true
  availability_zone           = "eu-west-1a"
  cpu_core_count              = 1
  cpu_threads_per_core        = 1
  credit_specification {
    cpu_credits = "standard"
  }
  disable_api_termination = false
  ebs_optimized           = false
  enclave_options {
    enabled = false
  }
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "firefly_test"
  metadata_options {
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
  }
  monitoring = false
  private_ip = "172.31.10.121"
  root_block_device {
    iops        = 3000
    throughput  = 125
    volume_size = 8
    volume_type = "gp3"
  }
  security_groups = ["launch-wizard-2"]
  subnet_id       = "subnet-9486d6f1"
  tags = {
    Name = "firefly_test_instance_2"
  }
  tenancy                = "default"
  vpc_security_group_ids = ["sg-002c1c401cdcf84c2"]
  # The following attributes have default values introduced when importing the resource into terraform: [timeouts]
  lifecycle {
    ignore_changes = [timeouts]
  }
}


resource "aws_instance" "firefly_test_instance-c22" {
  ami                         = "ami-0ef9e689241f0bb6e"
  associate_public_ip_address = true
  availability_zone           = "eu-west-1a"
  cpu_core_count              = 1
  cpu_threads_per_core        = 1
  credit_specification {
    cpu_credits = "standard"
  }
  disable_api_termination = false
  ebs_optimized           = false
  enclave_options {
    enabled = false
  }
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "firefly_test"
  metadata_options {
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
  }
  monitoring = false
  private_ip = "172.31.9.55"
  root_block_device {
    iops        = 3000
    throughput  = 125
    volume_size = 8
    volume_type = "gp3"
  }
  security_groups = ["launch-wizard-2"]
  subnet_id       = "subnet-9486d6f1"
  tags = {
    Name = "firefly_test_instance"
  }
  tenancy                = "default"
  vpc_security_group_ids = ["sg-002c1c401cdcf84c2"]
  # The following attributes have default values introduced when importing the resource into terraform: [timeouts]
  lifecycle {
    ignore_changes = [timeouts]
  }
}

