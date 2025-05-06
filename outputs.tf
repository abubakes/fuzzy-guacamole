output "url" {
    value = aws_instance.my_ec2.public_ip
}

output "ami" {
    value = data.aws_ami.example.id
}