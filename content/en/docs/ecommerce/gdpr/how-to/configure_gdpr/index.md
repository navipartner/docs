---
title: "Configure the GDPR module (e-commerce)"
description: "GDPR module allows online stores to comply with the most common GDPR regulations and guidelines for user data protection. You can set it up in Magento Webadmin."
lead: ""
date: 2023-11-16T14:52:52+01:00
lastmod: 2023-11-16T14:52:52+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "configure_gdpr-1125e5628a088e03d9ddce063cacf44f"
weight: 316
toc: true
type: docs
---

GDPR module allows online stores to comply with the most common GDPR regulations and guidelines for user data protection. You can set it up in Magento Webadmin.

Follow the provided steps:

1. Log into **Magento Webadmin**.
2. Click **NaviPartner** > **GDPR**.    
   A new page for configuring the GDPR module is displayed.
3. Click **Settings** in the upper right corner.    
   The **Configuration** page is displayed.
4. Set **Use NaviConnect Credentials** to **Yes** in the **Service Setup** panel.      
   
   {{< alert icon="📝" text="There is a GDPR related web service <i>GDPR_Anonymization_Service</i>. If for some reason GDPR is not working, check whether this webservice is set in Business Central."/>}}

5. Set **Enable GDPR functionality on frontend** to **Yes** in the **General** panel.
6. Select how you wish to configure the following options:

| Field Name      | Description |
| ----------- | ----------- |
| **Allow user consent** | If enabled, the popup for giving consent will be displayed. If disabled, the functionality is still going to be there, just not in form of a popup. |
| **Force Blocking User Consent** |If enabled, users will be presented with the consent popup (they won't be able to access any page until the terms are accepted/declined).  |
| **Allowed CMS pages when consent being forced** | You can choose to which elements users will have access to, even if they didn’t agree to the GDPR terms. |
| **Account Close Mode** | Specifies what happens when customers request to close their accounts. The following options are available: </br> - **Delete** – completely removes customer line; </br> - **Anonymize** – if customers decide to close their accounts, they will still remain recorded in the customer list, but all of their data will be anonymized. If they had previously created sales orders, the sales orders will remain recorded without user information. |
| **Allow Guest Requests** | Since GDPR doesn’t apply only to registered users, by enabling this option, guests can also view any stored information on them.  | 

   {{< alert icon="📝" text="Guest users can see the stored information about them by appending <i>/customer/privacy/guest</i> to the store URL. The page contains privacy-related information, and it allows guest users to enter their email and phone number with an accompanying comment. From there, they can choose whether to delete (Forget me) the stored info or retrieve it. Administrators will be notified of their choice (<b>Navipartner</b> > <b>GDPR</b> > <b>Guest Data Retrieval Requests</b>) in Magento Webadmin."/>}}

   {{< alert icon="📝" text="Registered users can also view their information and request retrieval/removal in the <b>My Privacy</b> section of their <b>My Account</b> page. If they choose the <b>Forget Me</b> option, they will be redirected to a new page and logged out of the web store. They can cancel their request by signing in again. Administrators will be notified of their choice (<b>Navipartner</b> > <b>GDPR</b> > <b>Close Requests</b>) in Magento Webadmin."/>}}

   {{< alert icon="❗" text="When closing the registered user account in Magento Webadmin, make sure you also delete this user in Business Central (<b>Magento Customers</b> > <b>Customers</b> > <b>Customers GDPR</b>)."/>}}

For more information about customer anonymization in Business Central, refer to the following articles:

- [<ins>Anonymize customer data<ins>]({{< ref "../../../../retail/gdpr/how-to/anonymization/index.md" >}})
- [<ins>Anonymize customers automatically after a certain period<ins>]({{< ref "../../../../retail/gdpr/how-to/auto_anonymization/index.md" >}})