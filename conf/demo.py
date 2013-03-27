#
# import from the main settings then override some of the values
#
from main.settings import *

GALAXY_TEMPLATE = """
<br>
<b>Galaxy username:</b> {{display_name}}<br>
    {% if tool_id %}
        <b>Tool name:</b> {{tool_name}}<br>
        <b>Tool version:</b> {{tool_version}}<br>
        <b>Tool id:</b> {{tool_id}}<br>
    {% endif %}
    {% if tags %}
        Tags: <b> {{tags}}
    {% endif %}
"""

class Bunch(object):
    def __init__(self, **kwargs):
        self.__dict__.update(kwargs)

GALAXY = Bunch()

EXTERNAL_AUTHENICATION = {
    "TEST-KEY" : Bunch(key="abcd", template=GALAXY_TEMPLATE),
}