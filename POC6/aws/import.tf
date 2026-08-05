import {
  to = aws_vpc.main
  id = "vpc-0b83ef2580e3f332"
}

import {
  to = aws_subnet.public
  id = "subnet-0a52d86b77c09ac6" # Replace with your deployed Subnet ID
}

import {
  to = aws_security_group.web
  id = "sg-042245d85b6378577" # Replace with your deployed Security Group ID
}
