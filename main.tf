# Bucket to store website
resource "google_storage_bucket" "website" {
  name = "example-website-by-ohis"
  location = "US"
}

# Make new object public



# Upload the html file to the bucket
resource "google_storage_bucket_object" "static_site_src" {
  name = "index.html"
  source = "../website/index.html"
  bucket = google_storage_bucket.website.name 
}

# Make the object publicly accessible
