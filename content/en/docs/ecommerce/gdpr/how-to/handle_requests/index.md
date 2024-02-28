---
title: "Handling requests for stored personal information"
description: "Administrators are notified whenever a request for retrieving or deleting personal information is issued by guest users or registered users, and they need to choose how to respond."
lead: ""
date: 2023-11-24T09:54:10+01:00
lastmod: 2023-11-24T09:54:10+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "handle_requests-d9c25ba8e0ed16447302be00a1a26f1b"
weight: 317
toc: true
type: docs
---

Administrators are notified whenever a request for retrieving or deleting personal information is issued by guest users or registered users. 

## Processing guest requests

Guest users can see the stored information about them by appending <i>/customer/privacy/guest</i> to the store URL.

The page they are redirected to contains privacy-related information, and it allows guest users to enter their email and phone number with an accompanying comment. From there, they can choose whether to delete (**Forget me**) the stored info or **Retrieve** it.

These requests can be found in Magento Webadmin by navigating to **Navipartner** > **GDPR** > **Guest Data Retrieval Requests**.

   ![close_requests](Images/close_requests.PNG)

Once the request is received, administrators can take one of the following actions:

- Approve request – a new window will be presented where the administrator can add a comment, and when they click **Proceed**, the user will receive an email with an attached JSON file which contains their data. 
- Cancel the request
- View data - administrators can preview the customer data stored within the JSON file.

When the request is processed, it can be found in the **Guest Data Retrieval Archive**.

   ![processed_requests](Images/processed_requests.PNG)

## Processing registered user requests

Similarly to guest users, registered users can view their information and request retrieval/removal in the **My Privacy** section of their **My Account** page. If they choose the **Forget Me** option, they will be redirected to a new page and logged out of the web store. They can cancel their request by signing in again. 

   ![forget_me](Images/forget_me.PNG)

If the registered users wish to close their accounts, administrators will be notified of their choice, and can view those requests in Magento Webadmin, by navigating to **Navipartner** > **GDPR** > **Close Requests**.

   ![registered_user_retrieval](Images/registered_user_retrieval.PNG)

Processed requests from registered users can be seen in the **Close Requests Archive**. After their closure request is approved by the administrator, the registered user will receive an email about the account closure. 

   {{< alert icon="❗" text="When closing the registered user account in Magento Webadmin, make sure you also delete this user in Business Central."/>}}

### Deleting registered customers from Business Central

After the request for closing a registered customer account has been processed in Magento Webadmin, you need to follow the provided steps to also delete them in Business Central:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Magento Customers**, and choose the related link.       
   The list of registered customers in Magento Webadmin is displayed.
2. Click **Customers** in the ribbon, followed by **Customers GDPR**.     
   A new window **Customer GDPR** is displayed. From there, you can view requests made in Magento Webadmin and extract customer data.
3. Click **Web Requests** in the ribbon.    
   All requests for deleting customer data are displayed.
4. Select the line, click **Process** in the ribbon, followed by **Anonymize**.

   ![anonymize_magento](Images/anonymize_magento.PNG)

  When this request is processed, user data will be anonymized in the **Customers** list, as well as that user's sales order data. 

  ![anonymized_data](Images/anonymized_data.PNG)

#### See also

- [<ins>Configure the GDPR module (e-commerce)<ins>]({{< ref "../configure_gdpr/index.md" >}})
- [<ins>Privacy consent customization<ins>]({{< ref "../../explanation/consent_widget/index.md" >}})