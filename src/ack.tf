resource "helm_release" "ack" {
  name            = "ack"
  namespace       = "ack-system"
  chart           = "ack-chart"
  repository      = "oci://public.ecr.aws/aws-controllers-k8s"
  create_namespace = true
  values = [
    <<-EOF
    s3:
      enabled: true
      aws:
        region: "ap-southeast-1"
    EOF
  ]
}