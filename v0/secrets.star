# secrets is a module that provides a function for retrieving secrets from the current
# Ocuroot organization.
#
# Allowed in: build, deploy, destroy, task, trigger_sync
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/secrets", "secret")
#   v = secret("my-secret")
#   if v == "my-secret":
#     print("secret as expected")
#   else:
#     print("secret not as expected")

def secret(name):
    """
    Returns the value of the secret with the given name.

    Args:
        name (str): The name of the secret to retrieve.

    Returns:
        str: The value of the secret.

    Example:
        secret_value = secret("api-key")
    """
    pass
