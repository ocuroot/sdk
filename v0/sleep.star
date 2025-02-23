# sleep is a Starlark module that provides functions for pausing execution.
#
# Allowed in: build, deploy, destroy, task
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/sleep.star", "sleep")
#   
#   def deploy(): 
#     # Deploy a service
#     sleep("1m")
#     # Execute a test

def sleep(duration):
        """
        Pauses execution for the given duration.

        Args:
            duration: The duration to pause for. Example: "1m" for 1 minute, "2s" for 2 seconds.
        """
        pass