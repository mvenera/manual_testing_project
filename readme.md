# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://demo.opencart.com/

UI Documentation: http://docs.opencart.com/en-gb/store-front/

API Documentation: https://restful-booker.herokuapp.com/apidoc/index.html#api-Booking

**The final project will be split into 2 sections: [Testing section](https://github.com/mvenera/manual_testing_project/edit/main/readme.md#1-testing-section) and [SQL section](https://github.com/mvenera/manual_testing_project/README.md#2-sql-section).**

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications

The below Epic was created in JIRA and describes the functional specifications of the Shopping Cart and Checkout modules within the Brosing the Front Store Documentation, on which the final project is based.

As a new customer I want to be able to place an order to make an online shopping.
![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/epic.png)

Exclusions:

From the Shopping cart page:
* Estimate Shipping & Taxes
* Use Coupon Code
* Use Gift Certificate

From the Checkout page:
* Login page

# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for placing an order in the OpenCart application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

#### 1.1.1 Roles assigned to the project and persons allocated

Review UI documentation: Venera Nicolici

QA tester: Venera Nicolici

#### 1.1.2 Entry criteria defined

* functional specifications are defined
* roles needed for the project are allocated
* initial project risks were detected and mitigated

#### 1.1.3 Exit criteria defined


* maximum 15 unresolved bugs
* all tests have been executed
* all resolved bugs have been re-tested and approved by the QA team
* deadline was reached
* no detected major risk remained un-mitigated
* exploratory regression testing must be performed on the application

#### 1.1.4 Test scope

* __Tests in scope:__ All the feature defined in software requirement specs (see Exclusions) need to be tested: functional testing, GUI testing 
* __Tests not in scope:__ performance testing, compatibility testing with multiple browsers, security testing

#### 1.1.5 Risks detected

* Project risks: not sufficient QA testers in QA team, the development team envolved in another high priority project, short deadline of Zephyr Squad trial, low quality of UI documentation
* Product risks: the inability of the application to fulfill the requirements, low quality of non-functional parameters: usability 

#### 1.1.6 Evaluating entry criteria

As a result of the revision of the documentation in the static analysis phase, version v2 / 22.02.2023 resulted: [Browsing the Front Store - Placing Orders](https://github.com/mvenera/manual_testing_project/blob/main/Browsing%20the%20Front%20Store%20-%20Placing%20Orders.docx)

The risk analysis highlighted the need to review the UI documentation and meet the deadline, given that the use of the Zephyr Squad tool is only available for a limited time.

![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/risk_chart_Prisma.png)

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 

## 1.2 Test Monitoring and Control

During the testing process, various reports and graphs were developed, in order to have a better visibility of possible delays or problems that could have influenced the testing objectives.

The sprint was set between 19/02/2023 and 11/03/2023.

The following charts and reports are are valid for the status of 03/03/2023:
![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/Report%2003.03.2023_OP%20board%20-%20Agile%20board%20-%20Jira.png)

![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/Issues_03.03.2023_short.png)

![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/03.03.2023_Test%20View%20By%20Sprint%20-%20Jira.png) 

## 1.3 Test Analysis

The testing process will be executed based on the revised requirements for Placing Order on OpenCart. The following test conditions were found:

* Add products to cart and check if shopping cart is correct updated
* Enter an invalid product quantity and check if the shopping cart is updated
* Check if modifying the quantity or deleting a product in shopping cart updates the shopping cart
* Check if returning to another menu category does change the data in shopping cart 
* Enter data in all mandatory fields and check if the order is placed
* Enter data in all fields and check if the order is placed
* Enter invalid data in every field and check the future actions
* Check if all the calculations are correct: VAT, Eco Tax, Flat Rate
* Check all mandatory fields
* Check other field constraints
* Check all buttons and links
* Check the keyboard special commands: ENTER, TAB, ESC, F5
    
## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are boundary value analysis and use case testing, with positive and negative testing types.

**Test cases:**

![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/test_cases.png)

The test cases with steps can be viewed here: [test-cases.pdf](https://github.com/mvenera/manual_testing_project/blob/main/files/test-cases.pdf)

For the API, the following checklist was generated:

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* Testing environment is up and running: https://demo.opencart.com/
* Access to the testing environment is free
* Cycle summary was created 
* Test cases were added to the cycle summary, into the proper folder
* Postman collection with the bookings API methods was created 
* Authorization token was created for accessing the API

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [cycle_summary_execution.pdf](https://github.com/mvenera/manual_testing_project/blob/main/files/Cycle_Summary-Executions.pdf)
* Bugs have been created based on the failed tests, plus one for reviewing the specifications. The complete bug reports can be found here: [created_bugs.pdf](https://github.com/mvenera/manual_testing_project/blob/main/files/BUGS.pdf)
    *  [Specifications] The documentation is not clear and complete
    *  [Data] For "Guest checkout" option, the "Continue" button does not save the account when all fields are completed
    *  [Data] For "Guest checkout" option, the "Continue" button does not save the account when all mandatory fields are completed
    *  [Data] "Password" field does not accept maximum 20 characters
    *  [Data] "City" field does not accept maximum 128 characters
    *  [Data] "Address 1" field does not accept 128 characters, containing special characters
    *  [UI] The shopping cart black button has invisible text when mouse hover
    *  [Invalid data] Validation message when "0" value is entered for quantity
    *  [Invalid data] The product is added to cart even when the delivery date is in the past
    *  [Invalid data] Validation message when special characters are entered for quantity
    *  [Invalid data] Validation message when letters are entered for quantity
    *  [Invalid data] Validation message when add to cart a product with negative quantity
    *  [Invalid data] Validation message of a product added to cart, when a decimal number is entered for quantity
    *  [Invalid data] Product added to cart when a decimal number is entered for quantity
    *  [Mandatory field] No value in "Qty" field returns a validation message

* API tests are executed based on the checklist. The collection used can be found here: [JSON file with the collection of requests created for Restful-Booker API](https://github.com/mvenera/manual_testing_project/blob/main/files/Booking%20-%20Restful-booker.postman_collection.json)
* Full regression testing is needed after the bugs are fixed

## 1.7 Test Completion


* As the Exit criteria were met and satisfied as mentioned in the appropriate section, this feature is suggested to ‘Go Live’ by the Testing team
* The traceability matrix was generated and can be found here: ![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/traceability%20matrix.png)
* Test execution chart was generated, the final report shows that a number 12 tests have failed of a total of 70 (~ 17%): 

![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/Test_Execution-Jira.png) 
![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/test-cases_fail_pass.png) 
![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/Issue_type.png)
* A number of 70 test cases were planned for execution and all of them were executed
* A number of 15 total bugs were found, from which 1 is resolved; the priority is: 1 is high, 10 are medium, 3 are low, and 1 is lowest

![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/chart-bug.png)

Not all issues are resolved, so a new sprint would be started, in order to closed these issues.
![image](https://github.com/mvenera/manual_testing_project/blob/main/files/images/issue_by_status.png)
