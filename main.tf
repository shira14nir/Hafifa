provider "kubernetes" {
  # Configures the Kubernetes provider to use your current kubeconfig
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "shira-terraform-nginx" {
  metadata {
    name = "shira-terraform-nginx"
  }
}

resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx-deployment"
    namespace = kubernetes_namespace.shira-terraform-nginx.metadata[0].name
    labels = {
      app = "nginx"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx:latest"
          port {
            container_port = 80
          }

          # Mount ConfigMap as a volume
          volume_mount {
            name      = "config-volume"
            mount_path = "/etc/config"
            read_only = true
          }
        }

        # Define volumes
        volume {
          name = "config-volume"
          config_map {
            name = kubernetes_config_map.example.metadata[0].name
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name      = "nginx-service"
    namespace = kubernetes_namespace.shira-terraform-nginx.metadata[0].name
  }

  spec {
    selector = {
      app = "nginx"
    }
    port {
      port        = 80
      target_port  = 80
    }
    type = "ClusterIP"
  }
}

resource "kubernetes_ingress" "nginx" {
  metadata {
    name      = "nginx-ingress"
    namespace = kubernetes_namespace.shira-terraform-nginx.metadata[0].name
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
    }
  }

  spec {
    rule {
      http {
        path {
          path = "/"
          backend {
            service_name = kubernetes_service.nginx.metadata[0].name
            service_port = 80
          }
        }
      }
    }
  }
}



resource "kubernetes_config_map" "example" {
  metadata {
    name      = "example-configmap"
    namespace = kubernetes_namespace.shira-terraform-nginx.metadata[0].name
  }

  data = {
    fact1 = "I went on a security mission in Yeruham."
    fact2 = "I love k8s."
    fact3 = "I still have a worker's allowance at the place where I worked before the army."
    age: "18"  
  }
}