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

def _json_encode(data):
    """
    Encodes the given value to JSON and returns the result as a string.
    """
    pass   

def _json_decode(data):
    """
    Decodes the provided JSON string and returns the resulting value.
    """
    pass

json = struct(
    encode = _json_encode,
    decode = _json_decode,
)

def _yaml_encode(data):
    """
    Encodes the given value to YAML and returns the result as a string.
    """
    pass   

def _yaml_decode(data):
    """
    Decodes the provided YAML string and returns the resulting value.
    """
    pass

yaml = struct(
    encode = _yaml_encode,
    decode = _yaml_decode,
)   