#!/usr/bin/python3R
import os
import sys
from PyQt5.QtGui import QPixmap, QFont, QIcon
from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QVBoxLayout, QHBoxLayout, QPushButton, QSpacerItem, QSizePolicy, QFrame
from PyQt5.QtCore import Qt

class Window(QWidget):
    def __init__(self):
        super().__init__()

        #Remove maximise button
        self.setWindowFlags(self.windowFlags() & ~Qt.WindowMaximizeButtonHint)

        # Set window icon
        self.setWindowIcon(QIcon('winux7_icon.png'))

        # Set window title and size
        self.setWindowTitle("Welcome to Winux 7")
        self.setGeometry(50, 50, 100, 100)

        # Set Segoe UI font
        font = QFont("Segoe UI", 10)

        # Create layout for the welcome message and logo
        welcome_layout = QHBoxLayout()

        # Load the logo image
        logo_path = os.path.join(os.path.dirname(__file__), "logo.png")
        logo_image = QPixmap(logo_path).scaledToHeight(50)

        # Create the welcome label
        welcome_label = QLabel("Welcome to ")
        welcome_label.setFont(QFont("Segoe UI", 32))
        welcome_label.setAlignment(Qt.AlignRight)

        # Create the logo label
        logo_label = QLabel()
        logo_label.setPixmap(logo_image)

        # Add the labels to the welcome layout
        welcome_layout.addWidget(welcome_label)
        welcome_layout.addWidget(logo_label)

        # Add horizontal line
        self.line = QFrame()
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setLineWidth(1)

        # Create layout for the "What do you want to do?" label and buttons
        action_layout = QVBoxLayout()

        # Create the "What do you want to do?" label
        action_label = QLabel("What do you want to do?")
        action_label.setFont(QFont("Segoe UI", 16))
        action_label.setStyleSheet("margin-top: 10px; margin-bottom: 10px;")

        # Create the "Setup Microsoft Office" button
        office_button = QPushButton("Setup Microsoft Office")
        office_button.setStyleSheet("max-width: 200px; margin-bottom: 10px;")
        office_button.setFont(font)
        office_button.clicked.connect(lambda: os.system('bash ~/Desktop/Winux\ Tools/Install\ MS\ Office.sh'))

        # Create the "Setup Adobe Photoshop" button
        photoshop_button = QPushButton("Setup Adobe Photoshop")
        photoshop_button.setStyleSheet("max-width: 200px; margin-bottom: 10px;")
        photoshop_button.setFont(font)
        photoshop_button.clicked.connect(lambda: os.system('bash ~/Desktop/Winux\ Tools/Install\ PhotoShop.sh'))

        # Create the "Setup 7Zip" button
        zip_button = QPushButton("Setup 7Zip")
        zip_button.setStyleSheet("max-width: 200px; margin-bottom: 10px;")
        zip_button.setFont(font)
        zip_button.clicked.connect(lambda: os.system('bash ~/Desktop/Winux\ Tools/Install\ 7Zip.sh'))

        # Create the "Install Windows 10 VM" button
        vm_button = QPushButton("Install Windows 10 VM")
        vm_button.setStyleSheet("max-width: 200px; margin-bottom: 10px;")
        vm_button.setFont(font)
        vm_button.clicked.connect(lambda: os.system('bash ~/Desktop/Winux\ Tools/Install\ Windows\ VM.sh'))

        # Add the label and buttons to the action layout
        action_layout.addWidget(action_label)
        action_layout.addWidget(office_button)
        action_layout.addWidget(photoshop_button)
        action_layout.addWidget(zip_button)
        action_layout.addWidget(vm_button)

        # Create the main layout and add the sub-layouts
        main_layout = QVBoxLayout()
        main_layout.addLayout(welcome_layout)
        main_layout.addLayout(action_layout)

        # Set the main layout for the window
        self.setLayout(main_layout)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = Window()
    window.show()
    sys.exit(app.exec_())
