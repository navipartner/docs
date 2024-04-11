---
title: "Set up printing with PrintNode"
description: "PrintNode is typically used as a printing extension is scenarios in which you don't have a direct access to the printer you wish to use."
lead: ""
date: 2024-04-10T14:05:22+02:00
lastmod: 2024-04-10T14:05:22+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "printnode-f4303bdfa2bd9decf6248d98acd2b7a2"
weight: 261
toc: true
type: docs
---

[<ins>PrintNode<ins>](https://www.printnode.com/en) is typically used as a printing extension when you don't have a direct access to the printer you wish to use, or you're not connected to the same network. Once installed on your computer, PrintNode can be used to send a webservice call to the cloud, from which a request can be sent to an available printer to carry out the print job.

{{< alert icon="📝" text="It's recommended to use PrintNode for printing reports only."/>}}

Before you can use PrintNode to perform print jobs, you need to take the following actions:

#### Prerequisite

- (Situational) Have the credentials for signing into PrintNode.     
  Typically, NaviPartner consultancy team will need to perform the setup on the PrintNode side for you, in which case you may not need to have an account, or perform any of the steps in the PrintNode client or website.
- Have the API key for establishing connection between the PrintNode client and the cloud.
- Make sure you have the latest PrintNode client version installed on your machine.

#### Procedure in the PrintNode client and on the PrintNode website

1. Open the PrintNode client, and sign in.     
   The program is now running in the background. 
2. Bring up PrintNode by clicking its icon in the notification area of your operating system.      
   Among others, you will see options for **Printers** and the **Account**.

    {{< alert icon="📝" text="The <b>Printers</b> list contains the global ID of each connected printer. These numbers need to be referenced when performing print jobs, instead of printer names."/>}}

3. Open the [<ins>PrintNode<ins>](https://www.printnode.com/en) website, and click **API Keys** in the upper right corner, and create a new **API Key**.     
   The API key will need to be input in Business Central.

#### Procedure in Business Central

1. Open the **PrintNode Setup** administrative section in Business Central.
2. Provide the previously created API key in the designated field, and click **Test Connection**.     
   If the connection is successful, you'll receive a confirmation message.
3. Open the **Printer List** from the ribbon.     
4. Find the ID of the printer you wish to use and reference it in the **Id** field.      
5. Select **Report** in the **Object Type**.     
   Note that the only available printing format is A4. 
6. Navigate to the **PrintNode Printer List** administrative section.
7. Select the Id of the printer type you're going to use for the printer in the **Id** column.
8. Make sure you select **PrintNode** in the **Output Type**. 
9. Provide the Id of the specific printer you're using in the **Output Path** column.
10. Navigate to the **Printer Selections** administrative section.       
   You can see that the previously selected printer is available in the **Printer Name** field in this section as well.     
   You can create print jobs with [<ins>this endpoint<ins>](https://www.printnode.com/en/docs/api/curl#printjobs).