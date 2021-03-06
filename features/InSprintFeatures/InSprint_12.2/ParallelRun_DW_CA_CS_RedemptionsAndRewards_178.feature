Feature: Redemptions & Rewards - Student Clubs & Teacher Catalogues
	This feature is to validate the Redemptions & Rewards - Student Clubs & Teacher Catalogues scenarios

 
Background: 
	Given CSR opens the rco-scholastic web site


@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@1
Scenario Outline:Student Clubs section displays when CSR enters into Redemptions and Rewards page:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then Student Clubs section should be displayed
	
Examples:
  | UsingData 											|
  | Student_Clubs_section_displays_Redemptions_Rewards	|
  
  
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@2
Scenario Outline:Student Clubs section not display without add the Student Clubs items to the cart when CSR enters into Redemptions and Rewards page:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Teacher Catalogues items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then Student Clubs section should not be displayed
	
Examples:
  | UsingData 												|
  | Student_Clubs_section_not_display_Redemptions_Rewards	|  		
  

@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@3
Scenario Outline:Toggle button, Student Clubs header, items price and the summary displays correctly in Student Clubs header section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then Toggle button should be displayed in Student Clubs header section
    And header label should be displayed as 'STUDENT CLUBS'
    And Student Clubs items price and the summary should be displayed
	
Examples:
  | UsingData 													|
  | Student_Clubs_header_section_displays_Redemptions_Rewards	|		
  

@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@4
Scenario Outline:Student Clubs section expands by default when CSR enters into Redemptions and Rewards page:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then Student Clubs section should be expanded
	
Examples:
  | UsingData 											|
  | Student_Clubs_section_expands_Redemptions_Rewards	|				
            
            
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@5
Scenario Outline:Minus button displays for the expanded Student Clubs toggle button in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then the label minus should be displayed in Student Clubs header section
	
Examples:
  | UsingData 										|
  | Student_Clubs_label_Minus_Redemptions_Rewards	|		
  
  
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@6
Scenario Outline:Plus button displays when CSR clicks on Expanded Student Clubs toggle button in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    When CSR clicks on expanded Student Clubs toggle button
    Then the label plus should be displayed in Student Clubs header section
    And header label should be displayed as 'STUDENT CLUBS'
	
Examples:
  | UsingData 										|
  | Student_Clubs_label_Plus_Redemptions_Rewards	|		
  
  
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@8
Scenario Outline:Student Clubs label and correct tax displays in Student Clubs second layer of the section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then the label 'Student Clubs Subtotal' should be displayed in the 2nd layer of the section
    And the tax module section and correct tax should be displayed for the Students Clubs items
	
Examples:
  | UsingData 								|
  | Students_Clubs_tax_Redemptions_Rewards	|
  
   
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@10
Scenario Outline:'REDEEM BONUS COUPONS & CREDIT NOTES' label displays in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then the label 'REDEEM BONUS COUPONS & CREDIT NOTES' should be displayed in the 3rd layer of the Student Clubs section
	
Examples:
  | UsingData 														|
  | REDEEM_BONUS_COUPONS_label_Student_Clubs_Redemptions_Rewards	|		
      
      
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@11
Scenario Outline:'Bonus Bank' label and paragraph of text reflective of the label displays in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then the label 'Bonus Bank' should be displayed in the 4th layer of the Student Clubs section
    And paragraph of text reflective of the label section should be displayed in the 4th layer of the Student Clubs section
	
Examples:
  | UsingData 											|
  | Bonus_Bank_label_Student_Clubs_Redemptions_Rewards	|		
    
    
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@12
Scenario Outline:Bonus Bank field text box displays in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then [Bonus Bank] text box should be displayed with the label '-$' in the 4th layer of the Student Clubs section
	
Examples:
  | UsingData 													|
  | Bonus_Bank_textBox_label_StudentClubs_Redemptions_Rewards	|		
  
  
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@13
Scenario Outline:CSR can enter decimal number in Bonus Bank text box in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    When CSR enters amount in Student Clubs Bonus Bank
    Then Student Clubs section Bonus Bank text box should accept the value
	
Examples:
  | UsingData 													|
  | Bonus_Bank_textBox_decimal_StudentClubs_Redemptions_Rewards	|		
 
 
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@14
Scenario Outline:'Paper Bonus Coupons, And Credit Notes' label and paragraph of text reflective of the label displays in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then the label 'Paper Bonus Coupons, And Credit Notes' should be displayed in the 5th layer of the Student Clubs section
    And paragraph of text reflective of the label section should be displayed in the 5th layer of the Student Clubs section
	
Examples:
  | UsingData 													|
  | Paper_Bonus_Coupons_label_StudentClubs_Redemptions_Rewards	|		
    
    
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@15
Scenario Outline:Paper Bonus Coupons And Credit Notes field text box displays in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then [Paper Bonus Coupons And Credit Notes] text box should be displayed with the label '-$' in the 5th layer of the Student Clubs section
	
Examples:
  | UsingData 															|
  | Paper_Bonus_Coupons_textBox_label_StudentClubs_Redemptions_Rewards	|		
  
  
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@16
Scenario Outline:CSR can enter Float value in Paper Bonus Coupons And Credit Notes text box in Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    And CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    When CSR enters amount in Student Clubs Paper Bonus
    Then Student Clubs section Paper Bonus text box should accept the value
	
Examples:
  | UsingData 															|
  | Paper_Bonus_Coupons_textBox_float_StudentClubs_Redemptions_Rewards	|
  
  
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@17
Scenario Outline:APPLY button displays in a Student Clubs section in Rdemptions and Rewards page:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then the Apply button should be displayed with the label 'APPLY' in the 6th layer of the Student Clubs section
	
Examples:
  | UsingData 										|
  | APPLY_label_StudentClubs_Redemptions_Rewards	|
  
    		
@Redemptions&Rewards_StudentClubs&TeacherCatalogues
@DWCACSR-178
@Priority1
@18
Scenario Outline:'Student Clubs Amount Owing' label, Total Student Clubs amount and total items displays in footer layer of the Student Clubs section:[<UsingData>]
	
	Given CSR logs into the application by providing [UserInformation]
	And CSR selects the order type as [Phone Order]
	And CSR navigates to Verify Account Page
	And CSR navigates to Order Entry Page
	And CSR adds Student Clubs items to the cart
    And CSR navigates to Review Cart page from Order Entry page
    When CSR navigates to [Rewards & Coupons] page from [Review Cart] page
    Then the label 'Student Clubs Amount Owing' should be displayed in the footer layer of the Student Clubs section
    And Student Clubs Amount Owing field and Items field should be displayed in the footer layer of the Student Clubs section
	
Examples:
  | UsingData 											|
  | Total_AmountOwing_StudentClubs_Redemptions_Rewards	|
  
 
                      