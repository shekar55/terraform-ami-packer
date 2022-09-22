resource "aws_instance" "web-1" {
    ami = var.imagename
    count = 1
    #availability_zone = element(var.azs, count.index)
    instance_type = "t2.micro"
    key_name = "2022_Devops"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-1"
        Env = "Prod"
        Owner = "Sree"
	CostCenter = "ABCD"
    }
}
