# package is a Starlark module that provides functions for defining packages.
#
# Allowed in the main thread of package.ocu.star
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/package.star", "package")
#
#   def build():
#     pass
#
#   def deploy(build, environment, inputs={}):
#     pass
#
#   def policy(build, environment):
#     pass
#
#   package(
#     name="my_package",
#     build=build,
#     policy=policy,
#     deploy=deploy,
#   )

def package(name, build={}, policy={}, deploy={}, destroy={}, tasks={}):
    """
    Define a package to manage builds and deployments for the code within this directory.

    Args:
        name: The name of the package. Must be unique within this repository.
        build: A function defining the build process for the package. Takes no arguments and returns a result object.
        policy: A function defining the rules for deploying this package. Accepts a build and environment. Returns a result object as in the policy module.
        deploy: A function defining the deploy process for the package. Accepts a build, environment and inputs. Returns a result object.
        destroy: A function defining the destroy process for the package. Accepts a build, environment and inputs. No return value.
        tasks: A map of task names to functions. Each task function accepts a build and environment and returns a result object.
    """
    pass