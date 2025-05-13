provider "google" {
  credentials = file("key.json")  
  project     = "delta-coast-459008-t7"
  region      = "us-central1"
}

