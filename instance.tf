resource aws_instance "i1"{
count=3
ami = "ami-09e67e426f25ce0d7"
instance_type= "t2.micro"
key_name= "6july.pem"
 provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}