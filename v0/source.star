# source is a Starlark module that provides functions for interacting with source code.
#
# Allowed in: build, deploy, destroy, task
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/source.star", "source")
#   
#   def build(ctx):
#     source.write("build.txt", "Hello, world!")

def make_source():
    def write(path, content):
        """
        Writes the given content to the file at the given path.

        Args:
            path: The path to the file to write.
            content: The content to write to the file as a string.
        """
        pass    

    def read(path):
        """
        Reads the content of the file at the given path. Returns the content as a string.      
        """
        pass

    def pwd():
        """
        Returns the current working directory within the source repository.
        """
        pass
    
    def path_to_root():
        """
        Returns the relative path to the root directory of the source repository.
        """
        pass

    return struct(
        write = write,
        read = read,
        pwd = pwd,
        path_to_root = path_to_root
    )  

source = make_source()