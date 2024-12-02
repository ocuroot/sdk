# machine is a Starlark module that provides functions for interacting with the host machine.
#
# Allowed in: build, deploy, destroy, task
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/machine.star", "host")
#   host.shell("echo 'Hello, world!'")

# make_host returns a struct representing the host machine
def make_host():
    def shell(command, shell="sh", env={}, mute=False, continue_on_error=False):
        """
        Runs a shell command on the host machine.

        Args:
            command: The shell command to run.
            shell: The shell to use to run the command. Example: "bash".
            env: A dictionary of environment variables to set.
            mute: Whether to mute the output of the command.
            continue_on_error: Whether to continue the build if the command fails.

        Returns:
            A struct with the following fields:
                combined_output: The interleaved stdout and stderr of the command.
                stdout: The stdout of the command.
                stderr: The stderr of the command.
                exit_code: The exit code of the command.
        """
        pass
    
    def os():
        """
        Returns the operating system of the host machine. Example: "linux", "darwin", "windows".
        Analogous to GOOS values in Go, as listed here https://pkg.go.dev/internal/platform#pkg-variables
        """
        pass
    
    def arch():
        """
        Returns the architecture of the host machine. Example: "amd64", "arm64".
        Analogous to GOARCH values in Go, as listed here https://pkg.go.dev/internal/platform#pkg-variables
        """
        pass
    
    def env_var(name):
        """
        Returns the value of the environment variable `name` on the host machine.
        """
        pass

    return struct(
        shell = shell,
    )

host = make_host()