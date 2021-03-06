Feature: International Orders
	This feature is to validate Order Entry – Flyer Module – Order Entry Module – Accept International Orders scenarios.
	
Background:
	Given CSR opens the rco-scholastic web site
  
@OrderEntry_InternationalOrders
@DWCACSR-115
@Priority1
@1
Scenario Outline: CSR completes order with US account using Credit Card payment method using US Billing Address:[<UsingData>]
Given CSR logs into the application by providing [UserInformation]
And CSR selects the order type as [Phone Order]
And CSR navigates to Verify Account Page
And CSR navigates to Order Entry Page
And CSR adds Student Clubs items to the cart to meet the minimum amount
And CSR navigates to Review Cart page from Order Entry page
And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
And CSR navigates to [Payment] page from [Redeem & Rewards] page
And CSR selects Credit Card as payment
When CSR selects [Add a New Card]
And CSR fills the Credit card and Billing information form
And CSR navigates to [Confirm & Submit] page
And CSR submits the order
Then CSR can succesfully submit the order
Examples:
  | UsingData                                        |
  | QA_InternationalOrders_US_Teacher_US_BillingAddress |

@OrderEntry_InternationalOrders
@DWCACSR-115
@Priority1
@2
Scenario Outline: CSR completes order with US account using Credit Card payment method using Canadian Billing Address:[<UsingData>]
Given CSR logs into the application by providing [UserInformation]
And CSR selects the order type as [Phone Order]
And CSR navigates to Verify Account Page
And CSR navigates to Order Entry Page
And CSR adds Student Clubs items to the cart to meet the minimum amount
And CSR navigates to Review Cart page from Order Entry page
And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
And CSR navigates to [Payment] page from [Redeem & Rewards] page
And CSR selects Credit Card as payment
When CSR selects [Add a New Card]
And CSR fills the Credit card and Billing information form
And CSR navigates to [Confirm & Submit] page
And CSR submits the order
Then CSR can succesfully submit the order
Examples:
  | UsingData                                        |
  | QA_InternationalOrders_US_Teacher_CA_BillingAddress |

@OrderEntry_InternationalOrders
@DWCACSR-115
@Priority1
@3
Scenario Outline: Error message shown when Flyer Code entered is not mapped to US account:[<UsingData>]
Given CSR logs into the application by providing [UserInformation]
And CSR selects the order type as [Phone Order]
And CSR navigates to Verify Account Page
And CSR navigates to Order Entry Page
When CSR enters Flyer Code not mapped to US account
Then CSR sees error notification above the Flyer Code textbox
And CSR sees message ‘Club not valid for US customers.’
Examples:
  | UsingData                               |
  | QA_OrderEntry_InternationalOrders_Error_US |

@OrderEntry_InternationalOrders
@DWCACSR-115
@Priority1
@4
Scenario Outline: CSR completes an order with US account:[<UsingData>]
Given CSR logs into the application by providing [UserInformation]
When CSR selects the order type as [Phone Order]
And CSR navigates to Verify Account Page
And CSR navigates to Order Entry Page
And CSR adds Student Clubs items to the cart to meet the minimum amount
And CSR navigates to Review Cart page from Order Entry page
And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
And CSR navigates to [Payment] page from [Redeem & Rewards] page
When CSR selects Cheques as payment
And CSR navigates to [Confirm & Submit] page
And CSR submits the order
Then CSR can succesfully submit the order
Examples:
  | UsingData                                      |
  | QA_InternationalOrders_US_Teacher_Completes_Order |
  
