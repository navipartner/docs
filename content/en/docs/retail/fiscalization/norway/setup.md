---
title: "Set up fiscalization compliance - Norway"
description: "This article details how to configure NP Retail for compliance in Norway.

"
lead: ""
date: 2023-10-12T15:39:11+02:00
lastmod: 2023-10-12T15:39:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-65080acdfce686c8f3047f42a09438cc"
weight: 999
toc: true
type: docs
---

This article details how to configure NP Retail for compliance in Norway.

1. Go to **POS Audit Profiles** page, enable the audit log, and set the **Audit Handler** to **NO_LOVDATA**.      

  ![norway1](norway1.PNG)

  **Audit Log** is used for recording all POS unit activities - drawer opening, salesperson sign-in, sale transactions, initial receipt prints etc.      

2. Make sure this audit profile is set for all POS units from the **POS Unit List**.
3. Enable the fiscalization by activating the **Enable NO Fiscalisation** toggle switch.
4. Reach out to NaviPartner for a self-signed certificate that contains a proper algorithm, that is specific to your customer.
5. Move to the **Sign Certificate** panel, and click **Upload Certificate**.
6. Move on to the **SAF-T Cash** panel, and populate the available fields with additional information for exporting an XML file to the **SAF-T** POS unit. 
	- **SAF-T Contact No.** – choose the contact person.
	- **Not Applicable VAT Code** – choose the VAT code that is used for VAT business and product combinations that don’t have the assigned VAT codes when exporting the transaction data with those posting group combinations.
7. Click **VAT Posting Setup Mapping**, and on the **VAT Post Group Mapper List** page, create an entry for each combination of the VAT product and VAT business posting groups.          
   Codes are set in order to fulfill law regulations when posting sales and purchase documents. All codes are listed on the **VAT Codes** table.       
   The VAT codes that are defined by Norwegian law are linked to VAT Business and Product combinations. 

   ![norway2](norway2.PNG)

## Next steps - subsequent signing transactions

Subsequent signing is required for transactions that aren't signed. 

1. For subsequent signing, run the codeunit **NPR NO Re-gen. Audit Signature - 6060013** which can be found in the **Object List**.     
   A pop-up window is displayed, and you're prompted to choose whether you wish to recreate all transactions for signing or not.
2. Select **Recreate all transactions for signing**.      
   All transactions from the **POS Entry List** are transferred (recreated if they were already available in the **Audit Log**), and signed in the **POS Audit Log**.    

  {{< alert icon="📝" text="The time of creation in the <b>POS Audit Log</b> corresponds to the time when the transaction was made – the date and time when the POS entry was generated."/>}}


## Next steps - export transaction and master data from SAF-T Cash Register 

1. Navigate to the **SAF-T Cash Register Export** administrative section. 
2. Request data export by clicking **New**.      
   A page for setting the start/end dates of the data recording and export options is displayed. The following options are available: 

   - **Mapping Range Code** – the unique code with which the given data export will be listed and recognized by the system.
   - **Starting Date** – transactions made from this date will be exported.
   - **Ending Date** – transactions made until this date will be exported.

3. Click **Start** to begin data export.        
   When the **Parallel Processing** is off, a pop-up window is displayed to check whether you wish to initiate the process.
4. Click **Yes** to begin the export.       
   When exporting is finished, the information about the exported content is displayed in the **Lines** tab.     
   All transactions are recorded in the **POS Entry List**, and all cash register activities in the **POS Audit Log** page.
5. Click **Download Files**.      
   The ZIP file is downloaded to your machine. 

