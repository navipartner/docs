---
title: "Set up member synchronization"
description: "This article walks you through the process of setting up member data synchronization between Business Central and HeyLoyalty."
lead: ""
date: 2023-10-30T16:06:17+04:00
lastmod: 2023-10-30T16:06:17+04:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup_memb_sync-26d71e45b0c70a2580171e8b4e8b6773"
weight: 330
toc: true
type: docs
---
You can set up your Business Central (BC) and HeyLoyalty environments to synchronize changes to member-related data. This means that new member information and changes made to the existing members in Business Central will be sent to HeyLoyalty and vice versa.

## Prerequisites

- Make sure you have decided on the field mapping (exactly which HeyLoyalty fields will be used in the synchronization process, and which BC fields they will be mapped to).
- Request the `API key` and `API secret` from your HeyLoyalty partner for the HeyLoyalty environment you wish to synchronize your member data with.

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, search for the **HeyLoyalty Integration Setup** page and open it.

<details>
<summary>
Cannot find the page?
</summary>
HeyLoyalty integration feature is not enabled by default. To enable it, navigate to <b>NaviPartner Feature Management</b> page, and make sure there is a checkmark in field <b>Enabled</b> on the <b>HeyLoyalty Integration</b> line. Do not forget to log into to the system again after enabling the integration.
</details>
<br>

2. Fill in the following fields on the page (see [_Module Setup Overview: HeyLoyalty Integration Setup_]({{< ref "../../reference/module_setup_overview/index.md#heyloyalty-integration-setup" >}}), if you need more details on the fields):

| Field name | Recommended value |
|------------|-------------------|
| <td>**General** FastTab</td> |
| **Enable Integration** | `Yes` |
| <td>**Member List Integration Area** subsection</td> |
| **Member Integration** | `Yes` |
| **HeyLoyalty Member List ID** | Your HeyLoyalty list ID |
| **Membership HL Field ID** | Membership field ID at HeyLoyalty |
| **Required Contact Info** | Select a value from the list |
| **Require GDPR Approval** | `Yes` |
| **Require Newsletter Subscription** | `Yes` |
| **Unsubscribe if Blocked** | `No` |
| <td>**Connection Parameters** FastTab</td> |
| **HeyLoyalty Api Url** | `https://api.heyloyalty.com/loyalty/v1` |
| **HeyLoyalty Api Key** | The API key you acquired from your HeyLoyalty partner |
| **HeyLoyalty Api Secret** | The API secret you acquired from your HeyLoyalty partner |

3. Set up [<ins>multiple choice field mapping<ins>]({{< ref "../../reference/module_setup_overview/index.md#heyloyalty-multiple-choice-fields" >}}).

4. Set up Business Central [<ins>member attribute mapping<ins>]({{< ref "../../reference/module_setup_overview/index.md#member-attributes" >}}) with HeyLoyalty single choice and text fields.

5. Set up Business Central [<ins>collect store mapping<ins>]({{< ref "../../reference/module_setup_overview/index.md#stores" >}}) with HeyLoyalty stores (the list of stores created in HeyLoyalty).

6. Set up Business Central country/region mapping with HeyLoyalty countries.