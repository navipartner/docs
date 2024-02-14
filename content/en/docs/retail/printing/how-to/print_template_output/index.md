---
title: "Set up print template output"
description: "The Print Template Output Setup is where you define the printer on which you are to print these Print Templates when using them in NP Retail."
lead: ""
date: 2023-09-11T09:48:22+02:00
lastmod: 2023-09-11T09:48:22+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "print_template_output-6e5aadeab5f57587b01f445d811ac579"
weight: 262
toc: true
type: docs
---

You can define print templates for printing non-A4 content like sales receipts, balancing tickets, price labels, exchange labels and so on.

The **Print Template Output Setup**, formerly referred as **Object Output Selection**, is where you define the printer on which you are to print these print templates in NP Retail.

To configure print template output, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template Output Setup**, and open the related link.    
2. Click **New**.  
3. Populate the fields according to your business needs. The following options are available:    

| Field Name      | Description |
| ----------- | ----------- |
| **User ID** | You can specify the ID of the only user who will be able to print the template on a printer. If left blank, all users will be able to use that printer when printing the template defined on the line. |
| **Codeunit ID** | Provide the ID of the codeunit responsible for printing on different printer types (6014547 - NPR RP Matrix Print Mgt.; 6014549 - NPR RP Line Print Mgt.). |
| **Codeunit Name** | Specifies the description of the codeunit responsible for printing on different printer types. |

4. Specify what kind of output is expected in the **Output Type** field. The following options are available: 
   - **Printer Name** – Specifies the name of the printer which is connected via USB, IP Address or cable to the POS Unit. It is a direct connection and can be established via a network as well.
   - **MPOS HTTP** - Printing is implemented via the Internet Print Protocol (IPP), which is encapsulated in the Hypertext Transfer Protocol (HTTP). With Internet printing, you can manage any shared printer on the print server from your MPOS.
   - **MPOS Bluetooth** - Bluetooth printers operate via wireless technology that can be configured to operate across iOS, Android & Windows devices.
   - **PrintNode** - PrintNode is a hosted printing service that can help you quickly, easily and securely add remote printing to your application.

5. Specify the **Output Path** to the printer used for printing. 
