Automated tests for https://practicetestautomation.com/practice-test-login were created using Robot Framework
and Robot Framework Selenium Library

The login tests are ran for chrome, edge, and firefox. Additional browsers can be added as needed in the commented
section of the login_tests.robot file. If there are any failures in the tests, a screenshot of the browser is
automatically created if possible.

Setup steps on local environment:
1. Install python. Latest version (3.12) is compatible.

2. Create a directory where all the code will be copied or downloaded to e.g. login_automation

3. Go to the directory cd /login_automation in this case

4. Create a virtual environment as not to mess up other python projects you may have by typing
    python -m venv .

5. Once the virtual environment is created, go to the created "Scripts" directory in windows or the "bin" directory in
   linux or mac and run the appropriate activate script
   source activate ->linux, mac
   activate.bat -> windows

6. Run the command below to install the required libraries
   pip install -r requirements.txt

7. To run the tests, run the following command. This will generate 3 files,log.html, output.xml, and report.html.
   robot tests/login_tests.robot

8. Details of the test run are in output.xml and can be viewed as an html file in log.html while report.html provides a
   summary of the test run.
