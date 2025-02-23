# env is a Starlark module that provides functions for getting and setting 
# environment variables on the host machine.
#
# Allowed in: build, deploy, destroy, task, trigger_sync, policy
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/env.star", "env")
#   value = env.get("FOO")
#   print(value)

def _get_env(key, default=None):
    """
    Returns the value of the environment variable `key`.

    Args:
        key: The name of the environment variable.
        default: The default value to return if the environment variable is not set.
    """
    pass

# env provides functions for working with environment variables
env = struct(
    get=_get_env,
)
