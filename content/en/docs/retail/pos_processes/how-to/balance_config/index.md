---
title: "Configure the POS balancing feature"
description: "This guide outlines how to set up the POS balancing feature, which is primarily configured in the POS End of Day Profile. Multiple profiles can be created and assigned to individual POS units."
lead: ""
date: 2023-07-07T13:11:56+02:00
lastmod: 2023-07-07T13:11:56+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "balance_config-05e567b88acc529bea9d365a0a95d09a"
weight: 112
toc: true
type: docs
---

This guide outlines how to set up the [<ins>POS balancing feature<ins>]({{< ref "../../explanation/end-of-day-exp.md" >}}), which is primarily configured in the **POS End of Day Profile**. Multiple profiles can be created and assigned to individual POS units.

To configure the POS balancing feature, follow the provided steps:


1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS End of Day Profile**, and choose the related link.
2. Click **New** to open a blank **NPR POS End of Day Profile Card**. 
3. Populate the fields while referring to the EOD [<ins>reference table<ins>]({{< ref "../../../pos_profiles/reference/eod_profile/eod_profile.md" >}}).
4. Search for **POS Actions Profiles**, and create a new **POS Named Action Profile** (or modify an existing one).
5. In the **End of Day Action Code** field, enter **POS Action BALANCE V4** to enable the balancing function.     
6. (Optional) To enable denomination-based counting:     
   - Navigate to the relevant **POS Payment Method Card**.
   - Select **Denominations** and configure denominations for each currency type.    

  {{< alert icon="📝" text="The system updates the page with predefined denominations when counting."/>}}

7. Open the **POS Payment Bin** for the relevant POS unit and select **Insert Initial Float** in the ribbon.   

  {{< alert icon="📝" text="This function doesn't provide any accounting entries. If money needs to be transferred from a bank into that cash float G/L account, this needs to be done in the back office using a general journal or a payment journal from a bank. This function is also used when we land from a different system into our system. The float account already contains the figure, so it's not necessary to add any accounting entries in this scenario."/>}}

8. Open **Report Selection - Retail** and configure the following settings:
    - For **Report Type**, select **Balancing Receipt**.
    - Set the print template to **EPSON_END_OF_DAY_X**.
    - For **Large Balancing Receipt**, set **Report ID** to **6014459 – Balancing Report - A4 - POS**.


![report_selection_retail](report_selection_retail_v4.png)

## Next steps

### Set up the counting and transfer process

When you click **Cash Count** on the POS, you are presented with the counting screen. In the top-right corner, you can see which currencies have been received in the POS, that require counting and balancing of the POS unit. 

If the button is marked in read, that means that the currency hasn't yet been counted. After the count is completed, there will be a green tick next to it. 

![counting_transfer_v4](counting_transfer_v4.png)

For detailed information on counting screen fields and options, refer to the [<ins>reference guide<ins>]({{< ref "../../reference/counting_ref/index.md" >}}).

### Generate end-of-day report (POS balance)

Once the necessary configurations are complete, you can move on to [<ins>balancing the POS<ins>]({{< ref "generate_eod.md" >}}) at the end of the work shift.

#### See also 

- [<ins>End-of-day troubleshooting<ins>]({{< ref "../../../../troubleshooting/eod.md" >}})
- [<ins>End-of-day report (POS balance)<ins>]({{< ref "../../explanation/end-of-day-exp/index.md" >}})