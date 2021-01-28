from robot.api.deco import keyword
from robot.api import logger
import json
import subprocess
from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver

@keyword
def run_robot_keyword(response):
    d = json.loads(response)
    logger.warn(d['command'])
    BuiltIn().run_keyword(d['command'])
    return d['command']

@keyword
def execute_autoIt():
    logger.warn('Execute process')
    subprocess.call(['D:\\sereneo\\livrables_robot\\FileUploadScript.exe'])