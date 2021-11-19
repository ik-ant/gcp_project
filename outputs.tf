output "app_bastion_app_open_tunnel_command" {
    description = "Command that opens an SSH tunnel to the Bastion instance"
    value = "${module.bastion_app.ssh} -N -q -f"
}

output "app_configure_kubectl_command_for_cluster" {
    value = "gcloud container clusters get-credentials ${module.google_kubernetes_cluster_app.name} --zone ${module.google_kubernetes_cluster_app.zone} --project ${module.google_kubernetes_cluster_app.project_id}"
}

output "kubectl_alias_command" {
    description = "Command that creates an alias for kubectl using Bastion as proxy. Bastion ssh tunnel must be running."
    value = "alias kubectl='${module.bastion_app.kubectl_command}'"
}



output "db_bastion_open_tunnel_command" {
    description = "Command that opens an SSH tunnel to the Bastion instance"
    value = "${module.bastion_db.ssh} -N -q -f"
}

output "db_configure_kubectl_command_for_cluster" {
    value = "gcloud container clusters get-credentials ${module.google_kubernetes_cluster_db.name} --zone ${module.google_kubernetes_cluster_db.zone} --project ${module.google_kubernetes_cluster_db.project_id}"
}

