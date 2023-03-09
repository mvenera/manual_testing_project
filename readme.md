# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://demo.opencart.com/

UI Documentation: http://docs.opencart.com/en-gb/store-front/

API Documentation: https://restful-booker.herokuapp.com/apidoc/index.html#api-Booking

**The final project will be split into 2 sections: [Testing section](https://github.com/mvenera/manual_testing_project/README.md#1-testing-section) and [SQL section](https://github.com/mvenera/manual_testing_project/README.md#2-sql-section).**

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


* maximum 15 unresolved bugs with high priority
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
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 
