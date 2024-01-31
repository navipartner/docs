---
title: "Create a new Collect Workflow"
description: "The collect workflows define the behavior/functionality of collect orders which are sent to a given store."
lead: ""
date: 2024-01-04T13:44:57+01:00
lastmod: 2024-01-04T13:44:57+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "workflow-ee254dada9394b1bea5a2666c2c41ba2"
weight: 147
toc: true
type: docs
---
The collect workflows define the behavior/functionality of collect orders which are sent to a given store. You can create three different kinds of workflows - **None**, **Mail**, and **SMS**.

To create a new collect workflow, refer to the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Collect Workflows**, and choose the related link.            
   The card contains various options for managing collect workflows.
2. Click **New**, populate the fields according to your business needs.   
3. Use the options in the **Send Order** section to determine whether the store will receive email notifications about the order, define what the email template looks like, how the customers are mapped during the order import in the collecting store, and so on. 

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Notify Store via Email/ Notify Store via SMS** | If the collecting store should receive a notification, you need to tick one of these checkboxes, depending on the desired notification method. | 
   | **E-mail Template/ SMS Template** |  Use this field to define the email/SMS template to be sent. | 
   | **Customer Mapping** | Use this field to define how customers should be mapped during the order import in the collecting store. |
   | **Processing Expiry Duration** | Use this field to define the duration of the processing time. |

4. Define the options in the **Order Status** section if you wish to notify the customer about each step of the order delivery process, and to define templates for each one of those notifications. 

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Archive on Delivery** | Define if the collect order will be automatically archived when delivered, rejected or if the order expires. |
   | **Notify Customer via Email/SMS** | If enabled, the customer will receive a notification for each order status. Note that the template definition is very important. If the template hasn't been defined for a status, even if the checkmark is ticked, a notification will not be sent. |

5. Use the options in the **IC Clearing** section to determine how the intercompany reconciliation is performed across multiple companies when orders/items are transferred, sold, and shipped.
6. If you've set the store to send notifications via SMS or email, you need to do additional setup in either the **Email Setup** or the **SMS Setup** administrative section:

   #### SMS Setup

   Populate all fields in the **SMS Setup** administrative section if you've previously selected **Notify Store via SMS** in the **Collect Workflow Card**, and select the SMS templates you wish to use in notifications.
   
   #### E-mail Setup

   The email setup procedure slightly differs depending on whether the environment you're in is on-prem or SaaS. 

   ##### SaaS

   On SaaS environments, you first need to set up the email account. 

   1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Email Accounts**, and choose the related link. 
   2. Click **New** and then **Add an email account**.
   3. Choose the **SMTP** option and click **Next**.     
      The **Setup SMTP Account** popup window is displayed. 
   4. Provide the following information:       
      - the name that will be used to identify the account (**Account Name**)
      - the **Sender Type** (whether it's a currently logged-in user or another user, who will be specified)
      - the email address of the user (if **Specific User** is selected in **Sender Type**)
      - the URL to the SMTP server (**Server Url**)
      - the **Authentication** type, and the accompanying data if needed (e.g., username and password).
      - Specify if the mail server requires a secure connection that uses encryption or certificates. 
   5. Click **Finish**.      
      If you wish, you can also send a test email to check the validity of all provided information. 
   6. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **E-mail Templates**, and choose the related link. 
   7. Create a template that is going to be used for email notifications or use one of the existing options. 

   ##### On-prem

   For on-prem environments, you don't need to set up email accounts. However, you need to set up similar options in the **SMTP Mail Setup** administrative section instead.