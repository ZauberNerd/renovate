group "default" {
	targets = ["latest", "slim"]
}

target "settings" {
  target = "final"
}

target "slim" {
  inherits = ["settings"]
  tags = ["renovate/renovate:slim"]
  args = { "IMAGE" = "slim" }
  cache-from = ["renovate/renovate:_cache-slim"]
}

target "latest" {
  inherits = ["settings"]
  tags = ["renovate/renovate"]
  cache-from = ["renovate/renovate:_cache-latest"]
}
