# repo is a Starlark module that provides a function to declare a repository config.
#
# It should only be used at the top level of a repo.ocu.star file.
# 
# Example usage:
#   load("github.com/ocuroot/sdk/v0/repo.star", "repo")
#
#   repo(id="localhost")

def repo(id):
    """
    Declares a repository config.

    Args:
        id: The ID of the repository. This is used to reference the repository within Ocuroot state and from other repositories. It should be unique within your organization.
    """
    pass