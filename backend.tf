terraform{
    backend "gcs"{
        bucket = "terraform-states-devx"
        prefix = "dev/state"
    }
}