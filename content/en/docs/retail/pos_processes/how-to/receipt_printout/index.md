---
title: "Configure a receipt printout for a POS unit"
description: "You can customize the sales report content that is printed out, depending on the scenario in place."
lead: ""
date: 2023-07-11T16:19:41+02:00
lastmod: 2023-07-11T16:19:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "receipt_printout-18200a24a86a956a6acf323a87dba325"
weight: 113
toc: true
type: docs
---

You can customize the sales report content that is printed out, depending on the scenario in place. To set up what is printed on the POS, follow the provided steps.

## Prerequisite

 - Select which report you wish to edit the receipt printout for by searching **Report Selection** in global search and selecting the area/scenario you wish to edit the receipt for the category

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Report Selection - Retail** and open the related link.       
   A page containing the list of sales receipts with the print templates is displayed. 
2. Select the **Sales Receipt** from the dropdown list. 
3. Open one of the print templates from the **Print Template** column.  
4. Click **New Version**, and then **Edit Layout** to open the **Template Designer**.
5. Add or alter the lines to customize the printout to your liking.    
   Every line in the template corresponds to a line on the sales receipt.
6. Use the **Table Name** and **Field Name** fields for choosing what data to display, and the **Prefix**, **Postfix** and **Default Value** fields for additional text.
7. Close the **Template Designer**, and return to the **Template Card**. 
8. Add a short description of your changes in the **Version Comments** field, and click **Archive** to save your template customization.

 You have now customized the selected sales receipt. The effects take place immediately.

## Change the receipt footer text

Receipt footers are useful when you wish to include the company's name, phone, address, and so on. To change them, follow the provided steps:

1. Open the **POS Unit Card**. 
2. Scroll down to the **Profiles**, and open the [<ins>**POS Unit Receipt Text Profile**<ins>]({{< ref "../../../pos_profiles/how-to/unit_receipt_profile/unit_receipt_profile.md" >}}) dropdown box.
3. Open the existing profile to edit or [<ins>create a new one<ins>]({{< ref "../../../pos_profiles/how-to/unit_receipt_profile/unit_receipt_profile.md" >}}), and input the text relevant for this profile.
