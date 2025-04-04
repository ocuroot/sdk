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
            set_alias=_set_alias,
            created=0,
            outputs={},
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

def _package_state(name="", repo_id="",outputs=[]):
    """
    Retrieve the current deployed state of a package.
    The environment is implied by the parent object.

    Args:
        name: The name of the package.
        repo_id: The ID of the repository.
        outputs: A list of deployment outputs to include in the state.
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
        deployed_environments=[
            struct(
                name="",
                attributes={},
                package_state=_package_state,
            )
        ],
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
    """
    pass

def ready(inputs={}):
    """
    Returns a value indicating that the current build is ready to be deployed in the current environment.

    Args:
        inputs: Inputs to the deploy function. A dictionary mapping string names to input values from the static or dependency functions.
    """
    pass

def later():
    """
    Indicates that the build is not ready to deploy in this environment and this policy function should be re-executed at a later date.
    """
    pass

def skip():
    """
    Indicates that this build should never be deployed in this environment.
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