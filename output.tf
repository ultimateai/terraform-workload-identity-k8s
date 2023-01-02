output "service_accounts_email" {
  value       = google_service_account.service_accounts.email
  description = "The e-mail address of the service account."
}