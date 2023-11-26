mock "tfplan" {
  module {
    source = "./mocks/mock-tfplan.sentinel"
  }
}

mock "tfplan/v2" {
 module {
    source = "./mocks/mock-tfplan-v2.sentinel"
  }
}

policy "check-ec2-name-tag" {
  source = "./policies/check-ec2-name-tag.sentinel"
  enforcement_level = "hard-mandatory"
}
