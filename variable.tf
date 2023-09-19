variable "key_pair_name" {
  type    = string
  default = "demokeypair"
}

variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCjaU/RhZ92zoWXfdvVwavHiTJAqCJlVkhrX243Jkc9r1y6wmCJv3BsHzVeztf3X5BAThdtnxbC5AQ0wopOvFLrZ0L1W5X6jPdf4dcPcEnfEhov6TG8v2kgSzchPej7H5Mp4HvkGhskXYgCx+fuTwNtTF3L0RAiRxWGMj3L6FlSe53kzDKzmSs+otWISazZ5oFZ5TeZFJYBfeEEN4nHVaN7ghOF0xXeRmuDqRHdEk9P2ZpQWWaiDLqlEMlODI1XiJuX7aF7l76VeCZZn4YAVLgB/Gu+JvndRbd9WyR3I/ExjMqq24JgqTMMI7LWdMDpea2c+Ue+qx1a7lNqN1ei88o3YyfY7nKZE7I91YKDXC6iJiLFFLjs9dfLXpIX09XpaNmIq3vrf3ptqpQjl/SIAs0ZlgFuRJFQd/W69CLafynyQHmPXostOhtx+dINKh+d3eqbsIX0Scu5i9cR7ce9gGMWFL0BHIcwWA0l+Q5fE0gbIoV3UT5LNSE6NffUloJYBqdmtxf9ve8dqZpZxihvnHcxaxA+t+XQSW12BvNKZknhdo8fkHFPBFxGpDDgV7pC220kypm8RzuJWSrh2IAu7vTF599/TA8l/3X/X4d09ljx0p3r1sp7bQeV1WNAd5uAp/PGcMCtNnlPg+AOLJhwKvSgMEsvRdvENLLeEbT2WnbSnQ== benny@DESKTOP-LV65TID"
}
variable "already_created_key_pair_name" {
  type    = string
  default = "demokeypair"
}