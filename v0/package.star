# package is a Starlark module that provides functions for defining packages.
#
# Allowed in the main thread of package.ocu.star
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/package.star", "package")
#
#   def build(ctx):
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

def _build_ctx():
    """
    An example build context object.

    Returns:
        A build context object with default values.
    """

    def set_alias(alias):
        """
        Sets the alias of the build.

        Args:
            alias: The alias to set.
        """
        pass

    return struct(
        build = struct(
            id="",
            sequence=0,
            created=0,
            attributes={},
            set_alias=set_alias
        ),
        commit = struct(
            message="",
            ref="",
            hash="",
            clean=False,
        ),
    )

def _default_build(ctx=_build_ctx()):
    """
    An example build function.

    Args:
        ctx: The build context.
    """
    pass

def _policy_ctx():
    """
    An example policy context object.

    Returns:
        A policy context object with default values.
    """
    return struct(
        build = struct(
            id="",
            alias="",
            sequence=0,
            created=0,
            attributes={},
            annotations={},
        ),
        environment = struct(
            name="",
            attributes={},
        ),
    )

def _default_policy(ctx=_policy_ctx()):
    pass

def _default_deploy():
    pass

def _default_destroy():
    pass

def package(name, build=_default_build, policy=_default_policy, deploy=_default_deploy, destroy=_default_destroy, tasks={}):
    """
    Define a package to manage builds and deployments for the code within this directory.

    Args:
        name: The name of the package. Must be unique within this repository.
        build: A function defining the build process for the package. Accepts a build context.
        policy: A function defining the rules for deploying this package. Accepts a build and environment. Returns a result object as in the policy module.
        deploy: A function defining the deploy process for the package. Accepts a build, environment and inputs. Returns a result object.
        destroy: A function defining the destroy process for the package. Accepts a build, environment and inputs. No return value.
        tasks: A map of task names to functions. Each task function accepts a build and environment and returns a result object.
    """
    pass