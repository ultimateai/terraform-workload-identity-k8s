/**
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 This will create the service account on gcp Project.
*/

resource "google_service_account" "service_accounts" {
  account_id   = var.service_account_name
  display_name = var.service_account_display_name
  project      = var.project_id
}

/*
 This will create the k8s service account if it doesn't exist.
*/


resource "kubernetes_service_account" "main" {
  count                           = var.enable_kubernetes_service_account ? 1 : 0
  automount_service_account_token = var.automount_service_account_token
  metadata {
    name      = var.kubernetes_service_account
    namespace = var.namespace
    annotations = {
      "iam.gke.io/gcp-service-account" = google_service_account.service_accounts.email
    }
  }
}

/*
 This will create the worload Identity Binding for k8s service account 
 with google Service Account
*/

resource "google_service_account_iam_member" "workload_identity_binding" {
  service_account_id = google_service_account.service_accounts.name
  role               = "roles/iam.workloadIdentityUser"
  member             = "serviceAccount:${var.project_id}.svc.id.goog[${var.namespace}/${var.kubernetes_service_account}]"
  depends_on         = [google_service_account.service_accounts]
}
