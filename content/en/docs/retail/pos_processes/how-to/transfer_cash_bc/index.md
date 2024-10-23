---
title: "Transfer cash with the POS Payment Bin Transfer Journal"
description: "You can transfer cash from one payment bin to another from the back office using the POS Payment Bin Transfer Journal."
lead: ""
date: 2024-01-24T11:53:56+01:00
lastmod: 2024-01-24T11:53:56+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "transfer_cash_bc-4fb650dd24d7e97764c605d103f952fa"
weight: 113
toc: true
type: docs
---

A transfer journal is prepared in the back office, reflecting from which source POS payment bin the cash is taken, and to which target POS payment bin will the cash is sent. The transfer process itself is done in two steps:

1. The journal is released from the back office.      
   The **POS Payment Bin Transfer Journal** needs to be released so that the transferred cash becomes available on the receiving end. 
2. The journal is accepted on the POS. 

To create a POS Payment Bin Transfer Journal, and gain the ability to initiate cash transfer from the back office, make sure the prerequisites are met, and follow the provided steps:

#### Prerequisites

Before performing these transfers, you need to set up the rules that will govern them in the **Bin Transfer Profile** in Business Central. 

- Create a new **Bin Transfer Profile**, and enable the desired options.
- If you wish to print transfer slips as paper trail when the supervisor takes the cash to the POS, you need to create the adequate print templates, and attach them to the actions in the **Bin Transfer Profile**.

  ![bin_transfer_profile](Images/bin_transfer_profile.png)

#### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Bin Transfer Journal**, and open the related link.       
2. Populate the details for the POS payment bin transfer journal from there:

| Field Name      | Description |
| ----------- | ----------- |
| **Document No.** | Specifies the number of the document. It can be inserted manually or retrieved from the number series defined in the **Bin Transfer Profile**. | 
| **Status** | Specifies the status of the POS payment bin transfer journal. |
| **Store Code** | Specifies which store is targeted by the transfer. | 
| **Transfer from Bin Code** | Specifies the code of the POS unit which is receiving the cash. | 
| **Received at POS Unit Code** | Specifies the code of the payment bin to which the cash is transferred . | 
| **Payment Method** | Specifies the payment method of the transferred resources. |
| **Amount** | Specifies the transferred amount. | 
| **External Document No.** | Specifies an optional additional reference number. | 
| **Has Denominations** | Specifies denominations used for sorting the transferred amount on the **Home** tab of the page. | 

   ![transfer_journal](Images/transfer_journal.PNG)

3. Release the journal lines one by one to make them available on the POS unit transfer screen.

## Next steps - Receive cash from the POS Payment Bin Transfer Journal

To accept a POS payment bin transfer journal entries on POS, make sure the prerequisites are met, and follow the provided steps:

#### Prerequisites

1. Create a new [<ins>POS menu button<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}) and attach the **BIN_TRANSFER** action to it.     
   The action should be named in such a way that it's clear the cash is received from that POS, e.g. *Transfer to POS unit*.
2. Configure the **POS Parameter Values**, and set the **Transfer Direction** to **Transfer In**.
3. (Optional) If you're going to print a receipt, also configure the following [<ins>parameters<ins>]({{< ref "../../reference/pos_actions_ref/index.md" >}}) on the action:

   - Set the **Print Transfer** parameter to **true**. 
   - Define a [<ins>print template<ins>]({{< ref "../../../printing/how-to/print_template_setup/index.md" >}}) for it. 
   - Configure the print template in the **Report Selection - Retail** administrative section in Business Central.

4. Configure the [<ins>**POS Posting Setup**<ins>]({{< ref "../../../posting_setup/explanation/pos_posting_setup/index.md" >}}), so that the proper accounting entries are recorded while the cash is transferred. 

   {{< alert icon="💡" text="<b>Example:</b> If you're transferring cash from a safe into a POS unit attached to the POS Store 01, the generated G/L entries based on the configuration above will be Dr A/C 2910 & Cr A/C 2980 when the transaction is completed on the receiving POS unit."/>}}

#### Procedure

1. Open the POS.
2. Press the previously created button that has the **BIN TRANSFER** action with the **Transfer In** parameter attached.     
   A pop-up window is displayed, and you are prompted to complete the bin transfer.
3. Press **Get Transfer Jnl. Line**.      
   You are presented with the transfer source and the journal lines that are available for transfer to your POS unit.
4. Select the line you wish.      
   The **Move from Bin** box is displayed, with additional information on the selected line. 
5. Press **Finalize**, and **Complete bin transfer** after you've checked the validity of presented information.     
   A POS entry line is created and posted. The corresponding G/L entries are also created.

   ![transfer_results](Images/transfer_results.PNG)

#### See also

- [<ins>Transfer and post stock-take worksheet<ins>]({{< ref "../../../physical_inventory/how-to/transfer_post_stocktake/index.md" >}})
- [<ins>Transfer cash between POS units<ins>]({{< ref "../bin_transfer_action/index.md" >}})