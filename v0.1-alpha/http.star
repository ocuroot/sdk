# http is a Starlark module that provides functions for making HTTP requests.
#
# Allowed in: build, deploy, destroy, task, trigger_sync
#
# Example usage:
#   load("github.com/ocuroot/sdk/v0/http.star", "http")
#   response = http.get("https://example.com")
#   print(response.body)

def _get(url, headers={}):
    """
    Makes a GET request to the given URL.

    Args:
        url: The URL to make the request to.
        headers: A dictionary of headers to include in the request.
    """
    pass

def _post(url, data=None, headers={}):
    """
    Makes a POST request to the given URL.

    Args:
        url: The URL to make the request to.
        data: The data to send in the request.
        headers: A dictionary of headers to include in the request.
    """
    pass

http = struct(
    get = _get,
    post = _post,
)