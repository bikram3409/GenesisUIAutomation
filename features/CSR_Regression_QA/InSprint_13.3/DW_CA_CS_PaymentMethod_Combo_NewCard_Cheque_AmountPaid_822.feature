Feature: Payment - Payment Method - Combo - New Card & Cheque - Amount to be Paid
	This feature is to validate the Payment - Payment Method - Combo - New Card & Cheque - Amount to be Paid Scenarios.

 
Background: 
	Given CSR opens the rco-scholastic web site


@PaymentMethod
@DWCACSR-822
@Priority1
@1
Scenario Outline:CSR enters amount less than total amount in the amount to be paid field in Credit Card_822:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects [Add a New Card]
	And CSR enters [Amount Less than Total Amount] in [Creidt Card fld]
	When CSR clicks outside the textbox
	Then CSR sees the amount in [Cheque fld] that is the difference between total amount and [Amount Less than Total Amount]
	
Examples:
  | UsingData               				|
  | QA_CSR_amount_to_be_paid_by_credit_card_822    |
  

@PaymentMethod
@DWCACSR-822
@Priority1
@2
Scenario Outline:CSR enters amount less than total amount in the amount to be paid field in Cheques_822:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects [Add a New Card]
	And CSR enters [Amount Less than Total Amount] in [Cheque fld]
	When CSR clicks outside the textbox
	Then CSR sees the amount in [Credit Card fld] that is the difference between total amount and [Amount Less than Total Amount]
	
Examples:
  | UsingData               			|
  | QA_CSR_amount_to_be_paid_by_cheque_822   	|
  
 
@PaymentMethod
@DWCACSR-822
@Priority1
@3
Scenario Outline:CSR enters amount more than the total amount in the amount to be paid field in Credit Card_822:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects [Add a New Card]
	And CSR enters [Amount More than Total Amount] in [Creidt Card fld]
	When CSR clicks outside the textbox
	Then CSR sees the amount 0.00 in [Cheque fld]
	
Examples:
  | UsingData               					|
  | QA_CSR_over_amount_to_be_paid_by_credit_card_822   |
  

@PaymentMethod
@DWCACSR-822
@Priority1
@4
Scenario Outline:CSR enters amount more than the total amount in the amount to be paid field in Cheque_822:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects [Add a New Card]
	And CSR enters [Amount More than Total Amount] in [Cheque fld]
	When CSR clicks outside the textbox
	Then CSR sees the amount 0.00 in [Credit Card fld]
	
Examples:
  | UsingData               				|
  | QA_CSR_over_amount_to_be_paid_by_Cheque_822   	|
  

@PaymentMethod
@DWCACSR-822
@Priority1
@5
Scenario Outline:CSR enters exact amount as the total amount in the amount to be paid field in Credit Card_822:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects [Add a New Card]
	And CSR enters the total amount in [Creidt Card fld]
	When CSR clicks outside the textbox
	Then CSR sees the amount 0.00 in [Cheque fld]
	
Examples:
  | UsingData               								 |
  | QA_CSR_enters_same_tot_amount_to_be_paid_by_credit_card_822 	 |
  

@PaymentMethod
@DWCACSR-822
@Priority1
@6
Scenario Outline:CSR enters exact amount as the total amount in the amount to be paid field in Cheque_822:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart to meet the minimum amount
	And CSR navigates to Review Cart page from Order Entry page
	And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
	And CSR navigates to [Payment] page from [Redeem & Rewards] page
	And CSR selects Combination of Credit Card and Cheques as payment
	And CSR selects [Add a New Card]
	And CSR enters the total amount in [Cheque fld]
	When CSR clicks outside the textbox
	Then CSR sees the amount 0.00 in [Credit Card fld]
	
Examples:
  | UsingData               							|
  | QA_CSR_enters_same_tot_amount_to_be_paid_by_Cheque_822 	|
      