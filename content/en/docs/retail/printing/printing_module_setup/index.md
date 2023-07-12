---
title: "Set up the printing module (Hardware Connector)"
description: ""
lead: ""
date: 2023-07-12T14:10:32+02:00
lastmod: 2023-07-12T14:10:32+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "printing_module_setup-f66ded47843ca46d58145759ed8f0158"
weight: 999
toc: true
type: docs
---

There are three available printer extensions you can choose from when setting up the default printers for report printing:

- Hardware Connector
- MPOS
- PrintNode

This how-to guide focuses on the recommended option that is the Hardware Connector, while the MPOS and PrintNode output setups will be explained in separate articles. 

To set up the printing module, follow the provided steps:


1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Hardware Connector Report Printer Setup**, and open the related link.    
   The administrative section containing the list of all printers connected to the current environment is displayed.
2. Create a **New** printer.
3. Populate the necessary fields: 
   
   | Field Name      | Description |
   | ----------- | ----------- |
   | **Printer Name** |  The name you provide here needs to match the name of the printer connected to your PC. You can learn the printer name in the **Printers & scanners** Windows administrative section. | 
   | **Paper Size** | Specifies the size of the object that will be printed. If you need to print a non-standard paper size (e.g. card), you should select **Custom**. | 
   | **Printer Paper Height**/**Printer Paper Width** | Specifies the dimensions of the printed content. These options are only available if the **Custom** paper size is selected.| 
   | **Printer Paper Unit** | Specifies the unit of measure in which the paper dimensions will be expressed. |
   | **Paper Source** | If the printer has multiple printing trays, you can specify which one to use. |
   | **Landscape** | Specifies whether the printed content will be displayed in a landscape layout. |

   Once you populate the necessary fields, the printer will be created and ready to be selected in the **Printer Selections** administrative section.

4. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Printer Selections**, and open the related link.     
   Here, you can choose one of the available reports, and modify it. Reports are used for ordering information from a database (e.g. invoices) in a structured and summarized way, thus preparing it to be printed.
5. Create **New**.   
6. Select the previously created printer in the **Printer Name** field, and populate other fields.   

{{< alert icon="📝" text="The printer name will receive the prefix after it's been created. For Hardware Connector this prefix is <b>NPR_HWC_</b>, and it is followed by the printer ID from the <b>Hardware Connector Report Printer Setup</b>."/>}}

7. (Optional) Specify the **User ID** if you wish only a specific user to have access to it.     
   If no user ID is specified, the printer selection is applicable to all users.
8. (Optional) Specify the **Report ID** if you wish only a specific report to be applied to it.      
   If no report ID is specified, the printer selection is applicable to all reports. 

{{< alert icon="📝" text="If neither <b>User ID</b> nor <b>Report ID</b> are specified the printer selection is applicable for all users and reports that aren't defined."/>}}

9.  Open the [Hardware Connector Software](../../gettingstarted/hw_connector.md) before you start printing.     
   It needs to be running in the background. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/VKI0MNWorPA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

