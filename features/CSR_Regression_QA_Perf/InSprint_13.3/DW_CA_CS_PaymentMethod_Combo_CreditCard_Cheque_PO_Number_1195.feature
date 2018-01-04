Feature: Payment - Payment Method - Combo - Saved Card & Cheque - Edit - PO Number
	This feature is to validate the Payment - Payment Method - Combo - Saved Card & Cheque - Edit - PO Number Scenarios.

 
Background: 
	Given CSR opens the rco-scholastic web site


@PaymentMethod_PO
@DWCACSR-1195
@Priority1
@1
Scenario Outline:CSR can enter maximaum of 20 alphanumeric in PO Number field in PO Number layer section in Payment page_1195:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects saved Credit Card
	When CSR enters [PO Number]
	Then PO Number field should accept the entered value
	
Examples:
  | UsingData               			|
  | Perf_QA_CSR_enters_20_integers_1195     	|
  | Perf_QA_CSR_enters_20_alphanumeric_1195 	|
  

@PaymentMethod_PO
@DWCACSR-1195
@Priority1
@2
Scenario Outline:CSR cannot enter more than 20 alphanumeric in PO Number field in PO Number layer section in Payment page_1195:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects saved Credit Card
	When CSR enters [PO Number]
	Then PO Number field should not accept the entered value
	
Examples:
  | UsingData               			|
  | Perf_QA_CSR_enters_21_integers_1195     	|
  | Perf_QA_CSR_enters_21_alphanumeric_1195 	|
  
