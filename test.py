from robot.api.deco import keyword
from robot.api import logger
import json
import subprocess
from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver

@keyword
def run_robot_keyword(response):
    d = json.loads(response)
    logger.warn(d['commands'][0])
    BuiltIn().run_keyword(d['commands'][0])

@keyword
def execute_autoIt():
    logger.warn('Execute process')
    subprocess.call(['D:\\sereneo\\livrables_robot\\FileUploadScript.exe'])

@keyword
def execute_js_Code():
    selib = BuiltIn().get_library_instance('SeleniumLibrary')
    js = 'alert("File successfuly uploaded")'
    selib.driver.execute_script(js)
