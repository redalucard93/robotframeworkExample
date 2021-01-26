from robot.api.deco import keyword
from robot.api import logger
import json
@keyword
def run_robot_keyword(response):
    d = json.loads(response)
    return d['command']
