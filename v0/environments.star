# environments is a Starlark module that provides a function to declare an environment config.
#
# It should only be used at the top level of a repo.ocu.star file.
# 
# Example usage:
#   load("github.com/ocuroot/sdk/v0/environments.star", "environment")
#
#   environment("dev", attributes={ "type": "dev" })
#   environment("staging", attributes={ "type": "staging" })
#   environment("prod-us-east", attributes={ "type": "prod" })
#   environment("prod-us-west", attributes={ "type": "prod" })

def environment(name, attributes = {}, archived = False):
    """
    Declares an environment config. This configuration will be applied to the Ocuroot organization
    upon the next deliver or sync operation.

    Args:
        name: The name of the environment. Must be unique within the parent organization.
        attributes: A dictionary of attributes for the environment.
        archived: A boolean indicating whether the environment is archived.
    """
    pass