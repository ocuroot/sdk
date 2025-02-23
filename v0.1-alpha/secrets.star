# secrets is a module that provides a function for retrieving secrets from the current
# Ocuroot organization.
#
# Allowed in: build, deploy, destroy, task, trigger_sync
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/secrets.star", "secret")
#   v = secret("my-secret")
#   if v == "my-secret":
#     print("secret as expected")
#   else:
#     print("secret not as expected")

def secret(name):
    """
    Returns the value of the secret with the given name.

    Args:
        name: The name of the secret to retrieve.
    """
    pass