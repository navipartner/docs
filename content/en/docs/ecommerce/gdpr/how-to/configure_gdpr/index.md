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
| **Guest Actions** | You can specify which actions will be available to guest users. The available options are **Forget Me** and **Retrieve My Info**. | 

#### See also

- [<ins>Anonymize customer data<ins>]({{< ref "../../../../retail/gdpr/how-to/anonymization/index.md" >}})
- [<ins>Anonymize customers automatically after a certain period<ins>]({{< ref "../../../../retail/gdpr/how-to/auto_anonymization/index.md" >}})
- [<ins>Handling requests for stored personal information<ins>]({{< ref "../handle_requests/index.md" >}})
- [<ins>Privacy consent customization<ins>]({{< ref "../../explanation/consent_widget/index.md" >}})