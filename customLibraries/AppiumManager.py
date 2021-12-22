from appium.webdriver.appium_service import AppiumService
from robot.api.deco import library, keyword


@library
class AppiumManager:
    @staticmethod
    @keyword
    def start_appium_service():
        service = AppiumService()
        service.start(args=['--address', '127.0.0.1', '-p', str(4723)])
        print(service.is_running)
        print(service.is_listening)

    @staticmethod
    @keyword
    def stop_appium_service():
        service = AppiumService()
        service.stop()
        print(service.is_running)
        print(service.is_listening)