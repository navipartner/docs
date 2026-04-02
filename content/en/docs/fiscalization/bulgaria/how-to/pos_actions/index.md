---
title: "Add POS actions for Bulgarian fiscalization"
description: "The following actions associated with the Bulgarian fiscal law can be attached to buttons in any POS menu."
lead: ""
date: 2023-12-07T10:50:37+01:00
lastmod: 2023-12-07T10:50:37+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_actions-b7b8f7539a52dc692bf0de0e6cfe4e5e"
weight: 803
toc: true
type: docs
---

The following actions associated with the Bulgarian fiscal law can be attached to buttons in any POS menu:

## Issue single-purpose vouchers

Single-purpose vouchers can be used as the payment method according to the Bulgarian fiscal law. To create a single-purpose voucher, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Retail Voucher Types** and choose the related link.         
   A list of all existing voucher types is displayed.
2. Create a new [<ins>voucher type<ins>]({{< ref "../../../../retail/vouchers/explanation/voucher_types/index.md" >}}).
3. Set the **Account No.** and specify the **VAT Product** and **VAT Business Posting Groups** associated with that account.     
   The VAT is calculated when the voucher has been issued, as a result.
4. Select the **Payment Type** in the **Voucher Type Card**.
5. Set up the button for issuing vouchers.    
   You can do this by attaching the **ISSUE_VOUCHER** action code to the button on the selected area in the POS menu. You should also manage the parameters so the value for the voucher type code corresponds to the voucher type you've created.
6. Select vouchers as the valid payment type on the POS.    
   You can do this by attaching the **VOUCHER** action code to a button on the selected area in the POS menu, and making sure its **Action Type** is **Payment Type**.

   {{< alert icon="📝" text="Make sure that the payment type is the same as the one set at the <b>Retail Voucher Type Card</b> in the <b>Apply Payment</b> section."/>}}

### VAT declaration law regulation

To fulfill law regulation for canceling the sale of single-purpose vouchers in monthly VAT declaration, find all sales that are completed with the **Voucher** payment method from the **POS Entry Payment Line List** and from the General Journal reverse VAT posting. 

## Print duplicate receipt

A duplicate can be printed only for the last printed receipt. To set the action for printing duplicates, follow the provided steps:

1. Navigate to **POS Menus**, and choose the area of the POS screen that you want the action to be displayed in.
2. Name the action, and set its **Action Type** to **Action**.
3. Set the **Action Code** to **BG_FISCALPRINTER_MGT**, and set the parameters for this action to **printDuplicate**.    
   The action will be displayed on the POS in the selected menu area.

## Reprint Electronic Journal reports

According to the Bulgarian fiscal law, it's possible to add a POS button which enables users to reprint Electronic Journal reports. Follow the provided steps:

1. Navigate to **POS Menus**, and choose the area of the POS screen that you want the action to be displayed in.
2. Add the **EJ-REPRINT** action to the list of actions.       
   With this action, you can print three types of reports:
   - **EOD** – non-fiscal report with the entire EJ for a given fiscal day
   - **T2TEOD** – non-fiscal report for a range from Grand Receipt No. to Grand Receipt No. of EJ data
   - **T2TDATE** – non-fiscal report for a given range of EJ data specified by date 
3. Open the **Menu Buttons Setup**, and set the action type to **Action**, then set the **BG_EJ_REPRINT** action code for each button you add.
4. Set the action parameters for each button to **EOD**.
5. Choose the menu button from where this action will be executed. In this case, it's **PRINTS**.
6. Name the action, and set the action type to **Popup Menu**.
7. Add the **BG_EJ_REPRINT** action code. 
8. Open the POS, and press **Reprint Electronic Journal**.
9. Choose the type of Electronic Journal report that is going to be printed, then set the range of the report data. 

## Export data from the Electronic Journal

The range of data that can be exported from the Electronic Journal can be set from:

- Date to date
- Gran Receipt No. to Gran Receipt No.
- Z Report to Z Report

To set this action on the POS, follow the provided steps:

1. Navigate to **POS Menus**, and choose the area of the POS screen that you want the action to be displayed in.
2. Add the **EJ-EXPORT-DATA** action to the list of actions.       
3. Set the action type to **Action**, and the action code to **BG_EJ_EXPORT_DATA** for each button.
4. Set the action parameters for each button.
5. Choose the menu button from where this action will be executed. In this case, it's **PRINTS**.
6. Name the action, and set the action type to **Popup Menu**.
7. Add the **BG_EJ_EXPORT_DATA** action code. 
8. Open the POS, and press **Export Electronic Journal Data**.
9. Choose the type of Electronic Journal that should be exported, and set the range for the report data.

## Print X and Z reports

To create buttons on the POS for printing X and Z reports compliant with the Bulgarian fiscal law, follow the provided steps:

1. Navigate to **POS Menus**, and choose the **Other Functions** menu area to enable execution of these actions from there.
2. Provide the name of the action, set the action type to **Action**, and enter the **BG_FISCALPRINTER_MGT** action code.
3. Set the parameters for each action (**printXReport** and **printZReport** respectively).
4. Open the POS, and press **Print X Report** or **Press Z Report**.     
   After the action is executed, a confirmation message is displayed to notify you whether the report generation was successful.

## Print fiscal memory report

There are two versions of fiscal memory reports - full and short. Both can be requested to print the data from the specified time frame, or data between two issued Z reports.. 

To set this action on the POS, follow the provided steps:

1. Navigate to **POS Menus**, and choose the area of the POS screen that you want the action to be displayed in.
2. Add the **PRINT-FM-REPORTS** action to the list of actions.
3. Click **Buttons** and set the additional buttons for printing various types of reports.     
   The action type of each button should be **Action**, and their action code - **BG_PRINT_FM_REPORT**.
4. Set the parameters according to the version and the way in which the data range for the report was selected:

   - Print full report from day to day – set the parameter value to **FD2D**
   - Print short report from day to day – set the parameter value to **SD2D**
   - Print full report from Z report number to Z report No. – set the parameter value to **FZ2Z**
   - Print short report from Z report number to Z report No. – set the parameter value to **SZ2Z**

5. Choose the menu button from where this action will be executed. In this case, it's **PRINTS**.
6. Name the action, and set the action type to **Popup Menu**,
7. Add the **PRINT_FM_REPORTS** action code. 
8. Open the POS, and press **Print Fiscal Memory Reports**.
9. Select the type of fiscal memory report that should be printed, and set the range of the report data.

## Print last non-fiscalized receipt

To add a button with the action for printing the last non-fiscaized receipt attached, follow the provided steps:

1. Navigate to **POS Menus**, and find the **Prints** menu from where the actions will be executed.
2. Provide the name of the action in the **Caption**, set the action type to **Action**, and the action code to **BG_FISCALPRINTER_MGT**.
3. Set the parameter value to **printLastNotFiscalized**.     
   The **Print Last Non-fiscalized Receipt** button is now displayed under the **Prints** button on the POS.

## Select and print non-fiscalized receipt

To add a button which allows users to select and print a non-fiscalized receipt, follow the provided steps:

1. Navigate to **POS Menus**, and find the **Prints** menu from where the actions will be executed.
2. Provide the name of the action in the **Caption**, set the action type to **Action**, and the action code to **BG_FISCALPRINTER_MGT**.
3. Set the parameter value to **printSelectedNotFiscalized**.      
   The **Print Selected Non Fiscalized Receipt** button is now displayed under the **Prints** button on the POS.    
4. Press the **Print Selected Non Fiscalized Receipt** to display the **BG POS Audit Log Aux. Info** page with the non-fiscalized transactions you can choose from.
5. Choose the transaction, and press **OK** to print the receipt.

## Audit Log Lookup

To add a button which executes audit log lookup from POS menus, follow the provided steps:

1. Navigate to **POS Menus**, and find the **Search** menu from where the actions will be executed.
2. Set the action type to **Action**, and provide the action code **BG_AUDIT_LOOKUP**.
3. Set the parameter value to **All**.
4. Open the POS, and execute this action to bring up the **BG POS Audit Log Aux. Info** page. 

## Fiscalized transactions lookup

To add a button to the POS menus which executes audit log lookup with fiscalized transactions only, follow the provided steps:

1. Navigate to **POS Menus**, and find the **Search** menu from where the actions will be executed.
2. Set the action type to **Action**, and provide the action code **BG_AUDIT_LOOKUP**.
3. Set the parameter value to **All Fiscalized**.
4. Open the POS, and execute this action to bring up the **BG POS Audit Log Aux. Info** page and see only the fiscalized transactions.

## Non-fiscalized transactions lookup

To add a button to the POS menus which executes audit log lookup with non-fiscalized transactions only, follow the provided steps:

1. Navigate to **POS Menus**, and find the **Search** menu from where the actions will be executed.
2. Set the action type to **Action**, and provide the action code **BG_AUDIT_LOOKUP**.
3. Set the parameter value to **All Non-Fiscalized**.
4. Open the POS, and execute this action to bring up the **BG POS Audit Log Aux. Info** page and see only the non-fiscalized transactions.

## Last transaction lookup 

To add a button to the POS menus which executes audit log lookup with only the last transaction displayed, follow the provided steps:

1. Navigate to **POS Menus**, and find the **Search** menu from where the actions will be executed.
2. Set the action type to **Action**, and provide the action code **BG_AUDIT_LOOKUP**.
3. Set the parameter value to **Last Transaction**.
4. Open the POS, and execute this action to bring up the **BG POS Audit Log Aux. Info** page and see only the last transaction.