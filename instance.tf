resource aws_instance "i1"{
count=3
ami = "ami-0c1a7f89451184c8b"
instance_type= "t2.micro"
key_pair= "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCpikCDqIdaLBdq5ar392TaQTtELpEgMUF8lHWE5frC+qYfqfzyc/w4OdPj5ocROlDApIWlVIn3IFfg4CkoirnBkK+L9IHQHn8hKy5FVP0jZ+6njcUW1oMaeVoBy+TGTL9GzQqLLD/CaOdY5OoH63hOn5uoHj5PKjIWJenSsrpVwdmunDwRDcipWtyhKIy91DLFouiEkh1kgonPhstgoqQYFDes36UYMTqy9NyV5ePERboxd3m4Zmh7oGbHALXWLM0odfGQ8epCtEo/wIxmkQn4YQMa4Hn9h4DYKOQUxsQWOFcro2F5Us9CtZVAnyGXHnBKJyxGaqovvC1QTQ7Q5tVBrJzKjSqd0mAqPxTFMSj4UbsPs2xC5hySuN4ik2c9VD0wceJj169uNdssKyN8D+D235JthFmd4Xkuc5VaipUP9vyELkz71wkaElUkwU3kcmRz4Xq1JGzhmK1lml5pBGWJddgyaapi8ipELzvoqJ0o3aqoNpM4Ig/COtg5SsHP7ls= ubuntu@ip-172-31-6-2
"
 provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}
