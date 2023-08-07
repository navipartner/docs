---
title: "Generate end-of-day report (POS balance)"
description: "The POS balance report, or the end-of-day report, contains the payments received throughout the day on the selected POS unit, and is used for cash count and balancing."
lead: ""
date: 2023-07-07T13:21:35+02:00
lastmod: 2023-07-07T13:21:35+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "generate_eod-0d067ef885cd468e480efd5255940388"
weight: 126
toc: true
type: docs
---

The [POS balance report]({{< ref "../../explanation/end-of-day-exp.md" >}}), or the end-of-day report, contains the payments received throughout the day on the selected POS unit, and is used for cash count and balancing.

To generate the POS balance report and count the contents of the payment bin, make sure the prerequisite is met and follow the provided steps:

## Prerequisite

- Make sure the balancing processes are [properly configured]({{< ref "balance_config.md" >}}) in Business Central.

## Procedure

1. From the **POS**, click **Other Functions (menu)**, followed by **End of Day Balancing**.     
   The **POS Workshift Checkpoint** is displayed, along with the [Z-Report overview]({{< ref "../../explanation/end-of-day-exp.md" >}}). To see all work shift statistics, open the **Show All** tab.

   ![balance_the_pos_v4_all](balance_pos_v4_balancing_screen_%20all.png)

2. Click **Cash Count** in the lower left corner when you've reviewed the work shift statistics.      
   The counting screen is displayed. In the upper right corner, you can see which currencies have been collected in the payment bin, and are ready to be counted and balanced.     

   ![cash_count](cash_count_v4.PNG)

3. Take one of the two possible approaches to counting:
   - Click the coin icon to select every bill and coin denomination for the selected currency which have been deposited in the bin.
   - Input the counted amount in the **Counted Amount Incl. Float** field.

    {{< alert icon="📝" text="If the calculated and the counted amount are different, this will be recorded in the <b>Difference</b> field automatically."/>}}

4. (Optional) Click the dialog box icon to add a comment which will let users know what caused the difference between the amounts.
5. Enter the amount that should be deposited to the bank in the **Bank Deposit** field.
6. Enter the amount that should be deposited to the store safe in the **Move to Bin** field.      

    {{< alert icon="📝" text="Once you provide the amount that should be transferred in one of the fields, the remaining amount is automatically populated in the other field. So, for example, if you enter 3000,00 into the field <b>New Float Amount</b>, then the field <b>Bank Deposit Amount</b> is automatically populated with the value 635,0.."/>}}

7. Click **Finalize** once the counting is completed.     
   The button will become green, indicating that the amount has been saved and processed.
8. Repeat this process for every currency that needs to be counted.    
   When you open the POS for the next shift, you will be prompted to state whether the recorded payment bin contents are correct. If the contents are incorrect, you can perform balancing again to correct the mistake.

<iframe width="560" height="315" src="https://www.youtube.com/embed/osYCSzngg-o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Troubleshooting

[End-of-day troubleshooting]({{< ref "../../../../troubleshooting/eod.md" >}})