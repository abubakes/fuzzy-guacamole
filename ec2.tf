data "aws_ami" "example" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["al2023-ami-2023.*-kernel-6.1-x86_64"]
    }
}

resource "aws_instance" "my_ec2" {
    ami = data.aws_ami.example.id
    instance_type = var.instance_type
    subnet_id = aws_subnet.my_subnet.id
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    user_data = file("./user-data.txt")

    tags = {
        Name = "Abubakar"
    }
}