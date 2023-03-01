# Three_tier_Demo
### Requirements

- Create VPC
- Internet gateway should need to associate with VPC
- create NAT gateway in public subnet
- create Public Route table associate to public subnet this should be Route via Internet Gateway
- create Private route table to associate to private subnet and route via NAT gateway.
- EC2 creation

**Terraform modules** are containers of multiple resources. module is some functionality is automated and reusable. also this is package and reuse resource configuration terraform. every terraform configurations has at least one  module known as its own root module. which consist a resources define in the .tf files in working main directory.

Terraform module (usually root module of configuration) can call other modules to include their resources. so call by other module call **************************child Module************************** , so child module can be call by multiple time within the same configuration can use same child module. in addition modules from local file system Terraform can load modules from private & public registry. so we can customize configurations locally and can be use it.