path "secret2/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Even though we allowed secret/*, this line explicitly denies
# secret2/super-secret. This takes precedence.
path "secret2/super-secret" {
  capabilities = ["deny"]
}
path "secret2/foo" {
  capabilities = ["read"]
}
