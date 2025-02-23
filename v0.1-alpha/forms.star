def form(func):
    """
    Register a form that can be requested during the release process.
    May only be called at the top level of a package file.

    Args:
        func: The function that will be called to render the form. It takes a single argument, the context.

    Returns:
        A reference to the form that can be used to request it.
    """
    pass

def markdown(text): 
    """
    Create a markdown text field.

    Args:
        text: The markdown text to display.
    """
    pass

def text_field(label, name, default=None):
    """
    Create a text field.

    Args:
        label: The label to display for the field.
        name: The name of the field.
        default: The default value to use if no value is specified.
    """
    pass

def submit(title):
    """
    Create a submit button.

    Args:
        title: The title to display on the button.
    """
    pass

def get_form(id, form, notify=[]):
    """
    Get the results of a form by name.
    May only be called in the policy function.
    If the form has not been requested before, notifications will be sent to the specified users.

    Args:
        id: An identifier for this instance of the form. Must be unique within the context of the current build.
        form: The form object.
        notify: Users to notify that the form is to be completed. A list of emails.

    Returns:
        The results of the form as a dictionary, or None if the form has not yet been completed.
    """
    pass