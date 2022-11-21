import sys
from PySide6 import QtCore, QtGui, QtWidgets
from PySide6.QtCore import Qt
from PySide6.QtGui import QPixmap, QImage
from PySide6.QtWidgets import QMainWindow, QApplication

from ui.todomainwindow import Ui_MainWindow
from ui import resources_rc


class MainWindow(QMainWindow, Ui_MainWindow):
    """
    Basic class to build the app UI.
    """
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.show()




if __name__=="__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    app.setStyle("Fusion")
    app.exec()