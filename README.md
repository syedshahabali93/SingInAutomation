# SingInAutomation
Sing-In Automation scripts have been added in this project pertaining to "https://test-dashboard.singit.io/home".

##Pre-requisite::::::: ##
- Download and install python 3.10
- Setup environment variable for python
- Navigate to project folder and run command pip install robotframework
- Then run pip install robotframework-seleniumlibrary
- Download chromedriver for Chrome brower and geckodriver for FireFox browser and place them in a folder with name 'chromeDriver'
- Add chromeDriver to 'Path variable' of 'User variables' in environment variables
- Create a new environment variable PYTHONPATH and set value of robot package inside \<full-project-path\>\venv\Lib\site-packages

##Execution
- Navigate to test-cases folder and run 'python -m robot -d results \<testFile name\>' or from root folder run directly 'python -m robot -d results \<relative path from root folder to testFile\>'
