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
#   def deploy(ctx):
#     pass
#
#   def policy(ctx):
#     pass
#
#   package(
#     name="my_package",
#     build=build,
#     policy=policy,
#     deploy=deploy,
#   )

def _set_alias(alias):
        """
        Sets the alias of the build.

        Args:
            alias: The alias to set.
        """
        pass

def _clean(clean):
        """
        Indicates whether this commit has uncommitted changes.
        Equivalent to .patch_hash == "".

        Args:
            clean: False iff this commit has uncommitted changes.
        """
        pass

_build_ctx = struct(
        build = struct(
            id="",
            sequence=0,
            created=0,
            attributes={},
            set_alias=_set_alias
        ),
        commit = struct(
            message="",
            ref="",
            hash="",
            patch_hash="",
            patch_description="",
            clean=_clean,
        ),
    )

def _default_build(build_ctx=_build_ctx):
    """
    An example build function.

    Args:
        build_ctx: The build context.
    """
    pass

# An example policy context object
_policy_ctx = struct(
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

def _default_policy(policy_ctx=_policy_ctx):
    """
    An example policy function.

    Args:
        policy_ctx: The policy context.
    """
    pass

# Example deploy context object
# Used for both deploy and destroy
_deploy_ctx = struct(
        deploy = struct(
            id="",
            inputs={},
            inputs_secret={},
            outputs={},
            outputs_secret={},
        ),
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

def _default_deploy(deploy_ctx=_deploy_ctx):
    """
    An example deploy function.

    Args:
        deploy_ctx: The deploy context.
    """
    pass

def _default_destroy(destroy_ctx=_deploy_ctx):
    """
    An example destroy function.

    Args:
        destroy_ctx: The destroy context.
    """
    pass

def package(name, build=_default_build, policy=_default_policy, deploy=_default_deploy, destroy=_default_destroy):
    """
    Define a package to manage builds and deployments for the code within this directory.

    Args:
        name: The name of the package. Must be unique within this repository.
        build: A function defining the build process for the package. Accepts a build context.
        policy: A function defining the rules for deploying this package. Accepts a context object. Returns a result object as in the policy module.
        deploy: A function defining the deploy process for the package. Accepts a context object.
        destroy: A function defining the destroy process for the package. Accepts a context object.
    """
    pass