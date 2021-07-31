variable "ACCESS_KEY" {}
variable "SECRET_KEY" {}

provider "aws" {  
      profile = "default"  
      region  = "ap-south-1"
      access_key = "youraccesskey"
      secret_key = "yoursecretkey"
          
}

resource "aws_key_pair" "sameer" {
       key_name   = "sameer-key"
       public_key = "yourpublickey"
}

resource "aws_instance" "Frontserver" {  
      ami = "ami-04db49c0fb2215364"  
      instance_type = "t2.micro"
      key_name = "${aws_key_pair.sameer.key_name}"

tags =  {    
 
Name = "FrontServerInstance" 
     
}
   
 }
