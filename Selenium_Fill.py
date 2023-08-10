import time

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver import ActionChains, Keys

chrome_driver_path = "chromedriver"
serv_obj = Service(chrome_driver_path)
driver = webdriver.Chrome(service=serv_obj)
driver.get("https://www.techlistic.com/p/selenium-practice-form.html")
driver.maximize_window()

driver.find_element(By.NAME,"firstname").send_keys("MANOJ")

driver.find_element(By.XPATH, "//input[@name='lastname']").send_keys("BOYA")

driver.find_element(By.XPATH, "//input[@value='Male']").click()

driver.find_element(By.XPATH, "//input[@value='1']").click()

driver.find_element(By.ID, "datepicker").send_keys("04-04-1998")

actions = ActionChains(driver)

time.sleep(3)

actions.move_to_element(driver.find_element(By.ID, "submit")).perform()

time.sleep(3)

driver.find_element(By.XPATH, "//input[@value='Automation Tester']").click()

driver.find_element(By.XPATH, "//input[@value='Selenium Webdriver']").click()

driver.find_element(By.ID,"continents").click()

driver.find_element(By.XPATH, "//select[@id='continents']//option[text()='Asia']").click()

actions.move_to_element(driver.find_element(By.XPATH, "//b[text()='Steps to Automate:']")).perform()

time.sleep(3)

driver.find_element(By.XPATH, "//span[text()='x']").click()

driver.find_element(By.XPATH, "//option[text()='Browser Commands']").click()

actions.move_to_element(driver.find_element(By.XPATH, "//option[text()='WebElement Commands']")).perform()

time.sleep(3)

driver.find_element(By.XPATH, "//option[text()='WebElement Commands']").click()

Input_File = driver.find_element(By.ID, 'photo')

Input_File.send_keys("/Users/manoj.boya/Downloads/selenium-screenshot-69.png")

driver.find_element(By.XPATH, "//a[text()='Click here to Download File']").click()

time.sleep(8)

driver.back()

actions.move_to_element(driver.find_element(By.ID, 'submit')).perform()

driver.find_element(By.ID, "submit").click()

time.sleep(8)

print("Successful")
