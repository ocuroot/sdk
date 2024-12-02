# env is a Starlark module that provides functions for getting and setting 
# environment variables on the host machine.
#
# Allowed in: build, deploy, destroy, task, trigger_sync, policy
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/env.star", "env")
#   value = env.get("FOO")
#   print(value)

# make_env returns a struct with get and set methods
# that can be used to get and set environment variables
def make_env():
    def get(key, default=None):
        """
        Returns the value of the environment variable `key`.

        Args:
            key: The name of the environment variable.
            default: The default value to return if the environment variable is not set.
        """
        pass

    return struct(
        get = get,
    )

# env is the importable struct
env = make_env()
