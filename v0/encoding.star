# encoding is a Starlark module that provides functions for working with JSON and YAML.
#
# Allowed in all functions.
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/encoding.star", "json")
#
#   a = json.encode({"foo": "bar"})
#   b = json.decode(a)
#   print(b) # Should print a value matching {"foo": "bar"}

def make_json():
    def encode(data):
        """
        Encodes the given value to JSON and returns the result as a string.
        """
        pass   

    def decode(data):
        """
        Decodes the provided JSON string and returns the resulting value.
        """
        pass

    return struct(
        encode = encode,
        decode = decode,
    )

def make_yaml():
    def encode(data):
        """
        Encodes the given value to YAML and returns the result as a string.
        """
        pass   

    def decode(data):
        """
        Decodes the provided YAML string and returns the resulting value.
        """
        pass

    return struct(
        encode = encode,
        decode = decode,
    )   