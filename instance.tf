resource aws_instance "i1"{
count=3
ami = "ami-0c1a7f89451184c8b"
instance_type= "t2.micro"
key_name= "rajshri"
 provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}