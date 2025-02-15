terraform {
  
  required_providers {
    
    google ={ 
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
}

provider "google" {
    project = "test-proj-451009"
    region = "us-west1"
}

resource "google_storage_bucket" "mybucket" {
  name = "mybucket110009-9717"
  location = "us-west1"
  versioning {
    enabled = true
  }
}

output "name" {
  value = google_storage_bucket.mybucket.name
}
