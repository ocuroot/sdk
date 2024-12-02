# policy is a Starlark module that provides return values for the policy function.
#
# Allowed in: policy
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/policy.star", "policy")
#
#   def policy(build, environment):
#     if environment.attributes.get("type") == "prod" and build.annotations.get("staged") != "true":
#       return policy.later("Waiting for staging")
#     
#     return policy.ready(
#       inputs={
#         "foo": static("bar"),
#         "baz": dependency(package="pkg1", output="baz"),
#       },
#       valid=after("1h"),
#     )

def ready(inputs={}, valid=None):
    """
    Returns a value indicating that the current build is ready to be deployed in the current environment.

    Args:
        inputs: Inputs to the deploy function. A dictionary mapping string names to input values from the static or dependency functions.
        valid: The time at which this deployment will be considered valid. If this is in the future, the deployment will be paused until this time.
    """
    pass

def later(msg=""):
    """
    Returns a value indicating that the deployment cannot proceed now, but will be able to proceed when certain conditions are met.

    Args:
        msg: A message to display to the user indicating what is blocking the deployment.
    """
    pass

def skip():
    """
    Returns a value indicating that this package should not be deployed in the current environment.
    If a build of this package is already deployed, it will be destroyed.
    """
    pass

def static(value):
    """
    Specifies a static input value to be passed into the ready function.

    Args:
        value: The value to pass into the ready function.
    """
    pass

def dependency(
    package,
    output,
    repo_id=None,
    environment=None,
    secret_name=None,
):
    """
    Specifies a dependency input value to be passed into the ready function.

    Args:
        package: The package name of the dependency to be used. May not be the current package.
        repo_id: The ID of the repository containing the dependency. Defaults to the current repository.
        environment: The environment in which the dependency was built.
        secret_name: The name of a secret to be used as the input value. One of `output` or `secret_name` must be specified.
        output: The name of a deployment output to be used as the input value. One of `output` or `secret_name` must be specified.
    """
    pass
