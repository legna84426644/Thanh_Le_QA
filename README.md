# ormuTest

A sample framework for web application testing using Robot Framework 

# Feature
* Run on different browsers (Chrome, Chrome headless, Firefox, Firefox headless)
* Html report and screenshot captured on failure
* Can use Python to implement low level keywords
* Use [Selenium2Library] for high level keywords

# Requirements and Installation
* Following packages are required:
    - robotframework
    - robotframework-seleniumlibrary
    - selenium

```sh
$ pip install -r requirements.text
```

# How To Run Test
* Run the whole test

* The framework also support running test with different condition such as run a single test case, run a single test suite, run test by tag,...

# Explaination

# Why Is Robot Framework
* Enables easy-to-use tabular syntax for creating test cases in a uniform way.
* Provides ability to create reusable higher-level keywords from the existing keywords.
* Provides easy-to-read result reports and logs in HTML format.
* Is platform and application independent.
* Provides a simple library API for creating customized test libraries which can be implemented natively with either Python or Java.
* Provides a command line interface and XML based output files for integration into existing build infrastructure (continuous integration systems).
* Provides support for Selenium for web testing, Java GUI testing, running processes, Telnet, SSH, and so on.
* Supports creating data-driven test cases.
* Has built-in support for variables, practical particularly for testing in different environments.
* Provides tagging to categorize and select test cases to be executed.
* Enables easy integration with source control: test suites are just files and directories that can be versioned with the production code.
* Provides test-case and test-suite -level setup and teardown.
* The modular architecture supports creating tests even for applications with several diverse interfaces.

[Selenium2Library]: <http://robotframework.org/Selenium2Library/Selenium2Library.html>