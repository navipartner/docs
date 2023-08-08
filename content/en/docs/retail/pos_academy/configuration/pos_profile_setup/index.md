---
title: "Set up POS profiles"
description: "This portion of the POS Academy contains instructions for setting up the necessary profiles for the Bring It to You Retail Store Ltd fictional example company."
lead: ""
date: 2023-08-07T16:23:27+02:00
lastmod: 2023-08-07T16:23:27+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_profile_setup-5ae42ad7b8c1ffcbd70fcde12dac16d4"
weight: 18
toc: true
type: docs
---

[POS profiles]({{< ref "../../../pos_profiles/intro.md" >}}) are the main features used for configuring POS units. They can be found in the **POS Unit Card** administrative section of all POS units defined in Business Central. This portion of the POS Academy contains instructions for setting up the necessary profiles for the *Bring It to You Retail Store Ltd* fictional example company.

## Posting profile setup

Each POS unit can have a different set of posting rules which are set up in the **POS Posting Profile** administrative section. Set up the following options for the fictional example company *Bring It to You Retail Store Ltd.*:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Profile**, and choose the related link. 
2. Create **New**. 
3. Add **the Code in** the indicated field.       
   In this specific case, the code should be set as **DEFAULT**. 
4. Add **a Description** such as **Default POS Posting Profile**. 
5. Choose between the **Store** and the **Customer** in the **Default POS Posting Setup** field.      
   This setup determines whether the posting setup of customer or of POS store will be used on sales where you have a customer attached to it.  
6. Set the value of the **Source Code** field to **RETAIL**. 
7. Set the posting group **NATIONAL** in the **General Business Posting Group** field. 
8. Set the VAT posting group **NATIONAL** in the **VAT Business Posting Group** field. 

{{< alert icon="📝" text="The <b>Tax Area Code</b> and <b>Tax Liable</b> fields are only used in the US localization."/>}}

{{< alert icon="📝" text="The <b>POS Period Register No. Series</b> is defined only if the posting to the <b>General Ledger</b> is done by posting the period compression."/>}}

{{< alert icon="📝" text="The <b>VAT Customer No.</b> is used if a customer is assigned to the POS store."/>}}

9. Define how the POS entries will be posted in **Posting Compression**.     
   In this example, the compression is performed **Per POS Entry**, but the following options are available: 
   - **Uncompressed** – Every POS entry line is posted as-is in the General Ledger.  
   - **Per POS Entry** – The lines are compressed per an account code within that entry.      
      Example: If there are 3 lines for a sale with the same revenue account, the entry is compressed into one line in the General Ledger entry for that transaction.  
   - **Per POS Period** – All transactions within that POS period are compressed by the same General Ledger account.  
      Example: 100 sales lines are compressed as 1 line in the General Ledger.

  {{< alert icon="📝" text="As the record is kept in Business Central for the Bring It to You Retail Store Ltd, you should not set the interface to an external ERP system in the <b>Auto Process External POS Sales</b> option. "/>}}

10. Use the **Max POS Posting Differences** field to define the maximum allowed difference caused by the difference between currencies.      
    It is set as a buffer of 0.50.  
11. Define the General Ledger account **8410** on which these differences are posted in the Difference Account. 
12. Define the General Ledger account **9140** in which all sales rounding amounts are posted in the **POS Sales Rounding Account** field. 
13. Add **0.50** in the **POS Sales Amount Rounding** field to determine the decimal space on which the rounding is performed. 
14. Set the **Rounding Type** to **Nearest**.

<iframe width="560" height="315" src="https://www.youtube.com/embed/NACqyx-5Jc4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Audit profile setup

The POS audit profile is used for assigning different number series and different rules for printing to different POS units. Setting up this profile is mandatory for creating a fully operational POS store.

The following options can be set up in the **General** section for the fictional example company *Bring It to You Retail Store Ltd.*:

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Code** | The unique code for the POS Audit Profile. | **DEFAULT** |
| **Description** | The short description of the profile. | **POS Audit Profile** |
| **Sales Ticket No. Series** | The number series used for creating the document number. For **Sales Ticket No. Series**, it's important to make sure the number series has the **Allowed Gaps** set to **TRUE**. | **NPR-SALES**  |
| **Sale Fiscal No. Series** | The number series used for creating the fiscal number. | **NPR-PE-FIS** |
| **Credit Sale Fiscal No. Series** | The number series used for creating the fiscal number for returns. | **NPR-PE-FIS** |
| **Balancing Fiscal No. Series** | The number series used for creating the fiscal number for balancing. | **NPR-BAL-P** |
| **Fill Sales Fiscal No. On** | The condition under which the fiscal number is populated. | You can choose between **All Sale** and **Successful Sale**. | 
| **Audit Log Enabled** | Used in certain countries for creating additional logs, usually for the VAT. | Not set for Bring It to You Retail Store Ltd. |
| **Audit Handler** | If **Audit Log Enabled** is checked use this field to choose which log will be created. | Not set for Bring It to You Retail Store Ltd. |
| **Allow Zero Amount Sale** | Used if you wish to allow finalizing the sale with the amount zero. | Disactivated  |
| **Print Receipt On Cancel Sale** | Used if the receipts should be printed whenever a sale is cancelled. | Disactivated  |
| **Allow Printing Receipt Copy** | Used if a receipt copy is printed. | Always |
| **Do Not Print Receipt on Sale** | Used if receipts shouldn’t be printed on sale. | Disactivated   |
| **Require Item Return Reason** | When goods are returned to the store, a cashier is prompted to enter a reason code for the return of the goods. | Disactivated  |

## View profile setup

The POS View Profile determines what the POS Unit display looks like and how the contents are formatted.  

In the **General** section you can set up the following options for the fictional example company *Bring It to You Retail Store Ltd.*: 

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Code** | The unique code for the POS View Profile. | **DEFAULT**  |
| **Description** | The short description of a profile. | **POS View Profile**  |
| **POS Theme code** | The POS theme used in the POS unit – it can be customized or left BLANK, so that the NPR default theme is used. | Leave it blank. |
| **Show discount** | Display discount in the POS sale lines. | **Activated** |
| **Show prices including VAT** | If active, the Unit price and the Line amount fields on the POS sale lines are displayed with the VAT. | **Activated** |
| **Initial sales view** | The initial view from which a transaction is initiated. You can choose between the Sales View and the Restaurant View. | **Sales View** |
| **After end of sale view** | When a sale is completed, either the Sales View or the Login View is displayed on the POS. | **Initial Sales View** |
| **Name and Date Formatting**  | The standard for name and date formatting. | Use the date and name formatting standard for Denmark. |


## End-of-day profile setup

The End-of-Day profile can be used to summarize data like transactions and sales order statuses that have been accumulated by the end of a single business day. You can define in what manner and how often the end-of-day process is performed.  

The following fields need to be set up: 

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Code** | The unique code for the profile.  | **DEFAULT** | 
| **Description** | The short description of profile. | **EOD** |
| **End of Day Frequency** | You can determine how frequently the POS balancing is performed. There are two available options: **Never** - it is up to the business to perform balancing when required; **Daily**- when the POS unit is opened at the beginning of a workday, a reminder for balancing the POS is displayed, and the work shift can't start before balancing is performed. | **Daily** |

{{< alert icon="📝" text="Daily balancing can include multiple work shifts during the same day. A business performs balancing at the end of each work shift. If this is done, the current work shift is closed, and the next one is opened."/>}}

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **End of Day Type** | You can choose between: **Individual** - EOD for each individual POS unit; **Master & Slave** - the POS unit you select will be the only one used for counting, and all physical cash is carried to it to be counted as one set. When counting is done, the work shift for every individual slave POS unit is closed, and a new one is created and ready to be used. | **Individual** | 

{{< alert icon="📝" text="The Master & Slave setup is usually used on mPOS or on self-service kiosks, where you only receive credit card/MobilePay transactions instead of cash, since it isn't that practical to perform cash count on these devices."/>}}

{{< alert icon="📝" text="There's a validation process that prevents opening slave POS units until counting and balancing is completed on the master POS unit first. Audit-wise, all transactions of slave POS units are accumulated on the master POS unit for the purpose of balancing, but the transactions are still allocated to each individual POS unit."/>}}

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Z-report UI** | On balancing, while **Summary + Balancing** is selected, you will get the screens for the **Statistics** and **Balancing**. If the option: **Balancing Only** is chosen, then only the **Balancing** screen will be available. |
| **X-Report UI** | This X-report contains the status of the POS unit. It's not used for performing cash count. You can set a POS menu button to display the status of the POS unit during the work shift. In this setup, the **Statistics** screens are retrieved, along with the printed report. If the option **Printing Only** is selected, a report on the status of the POS unit is printed. | **Summary** + **Printing **|
| **Close Workshift UI** | | This option is not used for Bring It to You Retail Store Ltd. | 
| **User Experience** | | Business Central |
| **Force Blind Counting** | When this function is activated, the expected ledger balance of the counted cash isn't visible. | **Disactivated** |
| **SMS profile** | If an SMS profile is set, you will have the possibility to send an SMS to the supervisor on the result of the counting. SMS Services subscription through NaviPartner is required for this option as well. | This option is not used for Bring It to You Retail Store Ltd. |
| **Z-Report Number Series** | Use system-generated number series, without any specific number defined. | This option is not used for Bring It to You Retail Store Ltd. |
| **X-Report Number series**  | Use system-generated number series, without any specific number defined. | This option is not used for Bring It to You Retail Store Ltd. |
| **Show Zero Amount Lines** | When counting is performed, by default the currency with zero amount for counting isn't displayed. If this function is activated, all currencies are displayed, even if they amount to zero.   | **Disactivated**|
| **Hide Turnover Section** | Hide the turnover statistics screen. | **Disactivated** |
| **Disable Difference Field** | If active, the salespeople are prompted to provide the counted amount. Otherwise, if an amount is entered in the **Difference** field, the **Counting** field is automatically updated with the difference between the expected ledger balance amount, and the **Difference** field.  | **Activated** |
| **Require Denominations** | You can set an **Assist** button for denomination count on the following fields: **Counted Amount**, **Bank Deposit Amount**, and **Move to Bin Amount**. | All 3 options **Activated** |

## Input box profile setup

The [POS Input Box Profile]({{< ref "../../../pos_profiles/reference/input_box_profile/input_box_profile.md" >}}) is used for setting up which data will be recognized in the POS unit’s input box. 

By default, there is one default POS input box profile with the **Code SALE** and **Description Default EAN box Sales Setup** in the system that you can select when setting up a POS unit. If there is a need to create a different profile, you can create a new one with the unique **Code** and **Description**. 

## Receipt text profile setup

The POS Unit Receipt Text Profile can be used for assigning additional text to the receipt footer area. Every POS unit can contain distinct text in the footer if they have different POS unit Receipt Text Profiles with different text in them. The POS Unit Receipt Text Profile consists of two sections: **General** and **POS Sales Ticket Receipt Text**. Although not required for setting up POS stores, you can still create it for additional personalization.

The following fields can be defined:

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Code** | The unique code for a profile. | **NP CONFIG** | 
| **Description** | The short description of a profile. | **Bring It to You Retail Store Ltd receipt text** |
| **Sales Ticket Receipt Text** | The text which will be displayed in the footer. | **Thank you for your visit! Please check out our website for new promotions and offers!** |

## Named action profile setup

Follow the provided steps to set all the required actions and establish a fully operational POS unit. To create a new POS Named Action Profile: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List**, and choose the related link. 
2. Open the **POS Unit Card** of the POS unit you’ve [created]({{< ref "../pos_unit/index.md" >}}), and then open the **POS Named Actions Profile Card** from the **POS Named Actions Profile** dropdown. 
3. **Create New**.      
   The **POS Named Actions Profile** window is displayed. 
4. Provide the **Code** in the **General** section. 
5. Populate the fields in the **Actions** section: 

| Field Name      | Example | 
| ----------- | ----------- | 
| **Login Action Code (required)** | **LOGIN** |
| **Text Enter Action Code (required)** | **TEXT_ENTER** | 
| **Item Insert Action Code (required)** | **ITEM** |
| **Payment Action Code (required)**  | **PAYMENT_2** | 
| **Customer Action Code (required)** | **CUSTOMER_SELECT** |
| **Lock POS Action Code** | Leave it blank if the screen is not set to lock automatically (otherwise, add the **LOCK_POS** action). |
| **Unlock POS Action Code** | Leave it blank if the screen locking isn’t set (otherwise, add the **UNLOCK_POS** action). |
| **On Before Payment View Action Code** | Leave it blank. If an action is triggered just before switching to the **Payment View**, this field should be populated with the name of that action. | 
| **Idle Timeout Action Code** | Leave it blank. (this field is reserved for self-service POS units) |
| **Admin Menu Action Code** | Leave it blank. (this field is reserved for self-service POS units) |
| **End of Day Action Code** | **BALANCE V4**  |

## Other profiles

The following profiles also exist in our Retail solution, but they do not need to be set up for the *Bring It to You Retail Store Ltd* fictional example company for the reasons listed below:

- [**POS Global Sales Profile**]({{< ref "../../../pos_profiles/how-to/global_profile/global_profile.md" >}}) - In the specific scenario for the *Bring It to You Retail Store Ltd*, there is only one company in Business Central for the 3 operations, defined as locations, so Global POS Sales Setup should be left blank. 
- [**POS Pricing Profile**]({{< ref "../../../pos_profiles/how-to/pricing_profile/pricing_profile.md" >}}) - For *Bring It to You Retail Store Ltd*, this profile is kept blank, as all POS units use the same pricing policies.  
- [**POS Self-Service Profile**]({{< ref "../../../pos_profiles/how-to/ss_profile/ss_profile.md" >}}) - In the *Bring It to You Retail Store Ltd*, leave this field blank, as these POS Unit don't support self-service. 
- [**POS Display Profile**]({{< ref "../../../pos_profiles/reference/display_profile/display_profile.md" >}}) - In the *Bring It to You Retail Store Ltd*, you will leave this field blank as you are not using a 2nd display.
- [**POS HTML Display Profile**]({{< ref "../../../pos_profiles/how-to/html_profile/html_profile.md" >}}) - In the *Bring It to You Retail Store Ltd*, you will leave this field BLANK as you are not using a 2nd display.
- [**POS Tax Free Profile**]({{< ref "../../../pos_profiles/reference/tax_free_ref/tax_free_ref.md" >}}) - In the *Bring It to You Retail Store Ltd*, leave this field blank, as the tax-free profile isn't required.
- [**POS Security Profile**]({{< ref "../../../pos_profiles/how-to/security_profiles/security_profiles.md" >}}) - In the *Bring It to You Retail Store Ltd*, leave this field blank as you are not setting an admin password to unlock the POS Unit. 
- [**POS Inventory Profile**]({{< ref "../../../pos_profiles/how-to/inventory/inventory.md" >}}) - In the *Bring It to You Retail Store Ltd*, leave this field blank as the inventory profile isn't required.