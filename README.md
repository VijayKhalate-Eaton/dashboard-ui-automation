
## Dashboard UI Automation using Robot Framework
Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with generic and custom libraries.

Robot Framework is operating system and application independent. It is implemented using Python which is also the primary language to extend it. The framework has a rich ecosystem around it consisting of various generic libraries and tools that are developed as separate projects. For more information about Robot Framework and the ecosystem, see http://robotframework.org.

Robot Framework project is hosted on GitHub where you can find source code, an issue tracker, and some further documentation. Downloads are hosted on PyPI.

Robot Framework development is sponsored by Robot Framework Foundation. If you are using the framework and benefiting from it, consider joining the foundation to help maintaining the framework and developing it further.
## Requirements

Python3 installation required on system, version 3.10

install the followings packages at your machine as well as pycharm IDE

``` shell 
 
 pip install robotframework
 pip install robotframework-seleniumlibrary
 add plugin in pychrm IDE - IntelliBot @SeleniumLibrary Patched
  ```

 
## Getting Started..

Clone the repository with

```

git clone - https://github.com/etn-electrical/blim-dashboard-ui-automation.git

```
## on Windows

`` shell
    python3
    pip
    pipenv
```
Please check below link to install and setup path for pipenv

https://pipenv.pypa.io/en/latest/install/#pragmatic-installation-of-pipenv

After installing and setup path for above packages, check version of each one by running below command
```shell
python --version
pip --version
pipenv --version
```

Once you are done with installation of above packages run 
```shell
pipenv install 
```
under 'UI' (project) folder. Pipenv will read the Pipfile and Pipfile.lock files for the project, create the virtual environment, and install all the dependencies as needed.


## Contents

See the following list for an explanation about what directory contains.



## How to run test cases

Using terminal we need to hit the following comand

for Blim - "robot -d path filename.robot"

for example --  "robot -d Results/BlimResults/LoginResults TestCases/BLIMPortal/FunctionalTestSuites/Login/LoginTestCase01.robot" 
