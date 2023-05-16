resource "yandex_alb_http_router" "tf-router" {
  name = "my-http-router"
  labels = {
    tf-label    = "tf-label-value"
    empty-label = ""
  }
}
resource "yandex_alb_virtual_host" "virtual-host" {
  name           = "my-virtual-host"
  http_router_id = yandex_alb_http_router.tf-router.id
  route {
    name = "my-route"
    http_route {
      http_route_action {
        backend_group_id = yandex_alb_backend_group.backend-group.id
        timeout          = "3s"
      }
    }
  }
}
resource "yandex_alb_backend_group" "backend-group" {
  name = "my-backend-group"
  http_backend {
    name             = "test-http-backend"
    weight           = 1
    port             = 9292
    target_group_ids = ["${yandex_alb_target_group.target-group.id}"]
    load_balancing_config {
      panic_threshold = 50
    }
    healthcheck {
      timeout  = "3s"
      interval = "3s"
      http_healthcheck {
        path = "/"
      }
    }
  }
}
resource "yandex_alb_target_group" "target-group" {
  name = "my-target-group"

  dynamic "target" {
    for_each = yandex_compute_instance.app
    content {
      subnet_id  = var.subnet_id
      ip_address = target.value.network_interface.0.ip_address
    }
  }
}
resource "yandex_alb_load_balancer" "test-balancer" {
  name       = "reddit-alb"
  network_id = "enpk6rml9viue7kled1q"
  allocation_policy {
    location {
      zone_id   = var.zone
      subnet_id = var.subnet_id
    }
  }

  listener {
    name = "reddit-alb-listerner"
    endpoint {
      address {
        external_ipv4_address {
        }
      }
      ports = [9292]
    }
    http {
      handler {
        http_router_id = yandex_alb_http_router.tf-router.id
      }
    }
  }
}
