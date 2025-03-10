# secrets is a module that provides a function for retrieving secrets from the current
# Ocuroot organization.
#
# Allowed in: build, deploy, destroy, task, trigger_sync
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0.1-alpha/secrets.star", "load_secret")
#   v = load_secret("my-secret")
#   if v == "my-secret":
#     print("secret as expected")
#   else:
#     print("secret not as expected")
#
#   s = secret("this text shouldn't have been committed...oops")
#   print(s) # The contents of s will be hidden in the output

def secret(value):
    """
    Create a secret value.
    This will mark the value as a secret to prevent it from being exposed in logs or
    other outputs.

    Args:
        value: The value of the secret.
    """
    pass

def load_secret(name):
    """
    Returns the value of the secret with the given name.
    Secret values will not be exposed in logs or other outputs.

    Args:
        name: The name of the secret to retrieve.
    """
    pass