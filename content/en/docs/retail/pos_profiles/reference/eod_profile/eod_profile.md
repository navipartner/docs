---
title: "End-of-Day/Bin Tr. Profile"
description: "The End of Day/Bin Tr. profile can be used to summarize all data such as transactions, and sales order statuses that have been accumulated by the end of a single business day."
lead: ""
date: 2023-07-04T15:19:37+02:00
lastmod: 2023-07-04T15:19:37+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "eod_profile-95cb4f27fc56a980294e007bde68f1fb"
weight: 122
toc: true
type: docs
---

The End of Day/Bin Tr. profile can be used to summarize all data such as transactions, and sales order statuses that have been accumulated by the end of a single business day. You can define in what manner and how often the end-of-day process will be performed. The following fields should be set up in the **General** section:

| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | The unique ID of the profile.     |
| **Description**   | The short description of the profile.        |
| **End of Day Frequency**  | You can determine at which frequency the POS balancing is performed. There are two available options: **NEVER** - it is up to the business to perform balancing when required; **DAILY** - when the POS unit is opened at the beginning of a work day, a reminder for balancing the POS is displayed, and the work shift can't start before balancing is performed. |


{{< alert icon="📝" text="Daily balancing can also englobe more than one work shift on the same day. A business performs balancing at the end of each work shift. By doing so, it closes the current work shift, and opens the next one."/>}}


| Field Name      | Description |
| ----------- | ----------- |
| **End of Day Type** | You can choose between: **Individual** - EOD for each individual POS unit; **Master & Slave** - the POS unit you select will be the only one used for counting, and all physical cash is carried to it, to be counted as a single set (when counting is performed, the work shift for every individual slave POS unit is closed, and a new one is created and ready to work). |
| **Master POS Unit No.** | The POS unit on which the balancing is performed if the **End of Day Type** is **Master&Slave**. |


{{< alert icon="📝" text="There's a validation process that prevents opening slave POS units until counting and balancing are completed on the master POS unit first. When this is done, the work shift of the slave POS unit becomes available for a new shift to start. Audit-wise, all transactions of slave POS units are accumulated on the master POS unit for the purpose of balancing. The transactions are still allocated to each individual POS unit."/>}}

| Field Name      | Description |
| ----------- | ----------- |
| **Z-report UI** | You can choose what is going to be displayed when the button for the POS balancing action is used: **Summary + Balancing** - if selected, you will get the screens for the **Statistics**; **Balancing Only** - if you choose this option, you will get the **Balancing** screen only (if there's a need for salespeople to access the **Balancing**, this is where such behavior is set up). |
| **X-Report UI** | This X-report screen contains the status of the POS unit. It's not used for performing cash count. You can set a POS menu button to display the status of the POS unit during the work shift. The following options are available: **Summary+Printing** - the **Statistics** screens are retrieved, along with the printed report; **Printing Only** - a report on the status of the POS unit is printed. |
| **Close Workshift UI** | You can have a printout on closing the work shift. Currently, it's not in use as when the balancing is completed, the work shift is automatically closed, and followed by a printout. |
| **Force Blind Counting** | The expected ledger balance of the cash is displayed on the counting screen. When this function is activated, the expected ledger balance of the counted cash isn't visible.  |
| **SMS profile** | You can set an SMS profile to send an SMS to the supervisor on the result of the counting. |
| **Z-Report Number Series** | The number series used for creating the **Document No.** in the POS entry for entries created from running the Z report. |
| **X-Report Number series** | The number series used for creating the **Document No.** in the POS entry for entries created from running the X report. |
| **Bin Transfer Number Series** | Specifies the number series used for creating the document number in the POS entry for entries created when performing the bin transfer. | 
| **Show Zero Amount Lines** | When counting is performed, by default the currency with zero amount for counting isn't displayed. If this function is activated, all currencies are displayed, even if they amount to zero. This function needs to be used with discretion, as it might confuse the salespeople.  |
| **Hide Turnover Section** | Hide the turnover statistics screen. |
| **Disable Difference Field** | If selected, salespeople will be prompted to provide the counted amount. Otherwise, if an amount is entered in the **Difference** field, the **Counting** field will automatically be updated with the difference between the expected ledger balance amount, and the **Difference** field. |
| **Bank Deposit Ref. Asgmt. Method**| You can specify the method used for reference number assignment to bank deposit amounts posted in end-of-day transactions. The following options are available: **Auto** - automatically generated; **Manual** - the manual number is manually input by the salesperson; **No Series** - you can assign a number series yourself. | 
| **Move to Bin Ref. Asgmt. Method** | You can specify the method used for reference number assignment to amounts that need to be moved to other bins during end-of-day transactions. The following options are available: **Auto** - automatically generated; **Manual** - the number is manually input by the salesperson; **No. Series** - you can assign a number series yourself. | 
| **Require Denominations** | You can set an **Assist** button for denomination count on the following fields: **Counted Amount**, **Bank Deposit Amount**, and **Move to Bin Amount**. They are controlled and activated separately.  |


The following fields and options need to be populated in the **Bin Transfer** section:

| Field Name      | Description |
| ----------- | ----------- |
| **In-Transit Bin Code** | Specifies the in-transit bin code used to reference an intermediary bin when posting direct transfer between two POS unit bins. | 
| **Bank Deposit Ref. Asgmt. Method** | Specifies the method used for reference number assignment to "bank deposit" amounts posted in outbound (transfer-out) transfer transactions. The following options are available: **Auto** - automatically generated; **Manual** - the number is manually input by the salesperson; **No. Series** - you can assign a number series yourself. | 
| **Move to Bin Ref. Asgmt. Method** | Specifies the method used for reference number assignment to "move to bin" amounts posted in outbound (transfer-out) transactions. The following options are available: **Auto** - automatically generated; **Manual** - the number is manually input by the salesperson; **No. Series** - you can assign a number series yourself. | 
| **Require Journal for Trans. INs** | Specifies whether the system will require a pre-staged bin transfer journal line to be selected by a POS user when performing inbound bin transfer. | 
| **Tr. from Bank Ref. Asgmt. Method** | Specifies the method used for reference number assignment for "transfer from bank" amounts posted in inbound (transfer-in) transactions. The following options are available: **Auto** - automatically generated; **Manual** - the number is manually input by the salesperson; **No. Series** - you can assign a number series yourself. | 
| **Move from Bin Ref. Asgmt. Method** | Specifies the method used for reference number assignment to "move from bin" amounts posted in inbound (transfer-in) transactions. | 

  ![eod_new](eod_new.PNG)


#### See also

- [<ins>POS profile overview<ins>]({{< ref "../../intro.md" >}})
- [<ins>Configure the POS balancing feature<ins>]({{< ref "../../../pos_processes/how-to/balance_config/index.md" >}})
- [<ins>Generate end-of-day report (POS balance)<ins>]({{< ref "../../../pos_processes/how-to/generate_eod/index.md" >}})