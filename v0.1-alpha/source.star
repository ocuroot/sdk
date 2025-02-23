# source is a Starlark module that provides functions for interacting with source code.
#
# Allowed in: build, deploy, destroy, task
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/source.star", "source")
#   
#   def build(ctx):
#     source.write("build.txt", "Hello, world!")

def _write(path, content):
    """
    Writes the given content to the file at the given path.

    Args:
        path: The path to the file to write.
        content: The content to write to the file as a string.
    """
    pass    

def _read(path):
    """
    Reads the content of the file at the given path. Returns the content as a string.      
    """
    pass

def _pwd():
    """
    Returns the current working directory within the source repository.
    """
    pass

def _path_to_root():
    """
    Returns the relative path to the root directory of the source repository.
    """
    pass

source = struct(
    write = _write,
    read = _read,
    pwd = _pwd,
    path_to_root = _path_to_root,
)  