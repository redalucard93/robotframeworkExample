from robot.api.deco import keyword
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
import json
@keyword
def run_robot_keyword(response):
    d = json.loads(response)
    #logger.warn(d['command'])
    BuiltIn().run_keyword(d['command'])
    return d['command']
