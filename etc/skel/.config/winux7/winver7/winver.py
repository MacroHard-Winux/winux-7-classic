import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QLabel, QVBoxLayout, QWidget, QFrame, QPushButton
from PyQt5.QtGui import QPixmap, QIcon
from PyQt5.QtCore import Qt

class WinverWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        # Set window properties
        self.setWindowTitle('About Windows')
        self.setGeometry(100, 100, 400, 300)

        # Set window icon
        self.setWindowIcon(QIcon('window_icon.png'))

        # Add label for version image
        self.version_label = QLabel()
        self.version_image = QPixmap('version_image.png')
        self.version_label.setPixmap(self.version_image)
        self.version_label.setAlignment(Qt.AlignCenter)

        # Add horizontal line
        self.line = QFrame()
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setLineWidth(1)

        # Add label for description
        self.description_label = QLabel(
                                        '          Macrohard Winux7\n'
                                        '          Pre-Release 1 (build V0.2.1.10) \n'
                                        '          Copywrong (c) 2023 Macrohard Project.  '
                                        '          All rights reserved.\n'
                                        '          The Windows 7 operating system and its user interface are \n'
                                        '          protected by trademark and other pending or existing intellectual property \n'
                                        '          rights in the United States and other countries. \n'
                                        '\n'
                                        '\n'
                                        '\n'
                                        '\n'
                                        '          This project is not in anyway affiliated, associated, authorized, endorsed by, ‏‏‎ ‎‏‏‎ ‏‏‎ ‎‎‏‏‎ ‎‏‏‎ ‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎\n'
                                        '          or in any way officially connected with Microsoft Corporation, \n'
                                        '          or any of its subsidiaries or its affiliates. The official Microsoft website \n'
                                        '          can be found at http://www.microsoft.com. \n'
                                        '\n'
                                        '\n'
)
        self.description_label.setStyleSheet('font-size: 12px;')

        # Add button to close the window
        self.ok_button = QPushButton('OK')
        self.ok_button.setFixedWidth(80)
        self.ok_button.setFixedHeight(25)
        self.ok_button.clicked.connect(self.close)

        # Add widgets to vertical layout
        self.layout = QVBoxLayout()
        self.layout.addWidget(self.version_label)
        self.layout.addWidget(self.line)
        self.layout.addWidget(self.description_label)
        self.layout.addWidget(self.ok_button, alignment=Qt.AlignRight | Qt.AlignBottom)

        # Set central widget to vertical layout
        self.central_widget = QWidget()
        self.central_widget.setLayout(self.layout)
        self.setCentralWidget(self.central_widget)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    winver_window = WinverWindow()
    winver_window.show()
    sys.exit(app.exec_())
