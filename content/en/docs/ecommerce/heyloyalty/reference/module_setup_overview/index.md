---
title: "Module Setup Overview"
description: "Gives you an overview of the setups in BC required for HeyLoyalty integration."
lead: ""
date: 2023-10-31T15:02:14+04:00
lastmod: 2023-10-31T15:02:14+04:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "module_setup_overview-96c6d32f9f2721c05309b9fd113aca15"
weight: 999
toc: true
type: docs
---
This section gives you an overview of all the setups in BC that are required for the HeyLoyalty integration functionality to work properly.

## HeyLoyalty Integration Setup
This is the main setup page.
To open the page click the ![Lightbulb](Lightbulb_icon.PNG) button and search for the **HeyLoyalty Integration Setup**.
![HeyLoyalty Integration Setup Page](images/HeyLoyaltyIntegrSetupPage.png)
<details>
<summary>
Cannot find the page?
</summary>
HeyLoyalty integration feature is not enabled by default. To enable it, navigate to <b>NaviPartner Feature Management</b> page, and make sure there is a checkmark in field <b>Enabled</b> on the <b>HeyLoyalty Integration</b> line. Do not forget to log into to the system again after enabling the integration.
</details>
<br>

There are the following fields on the page:
| Field name | Comment |
|------------|---------|
| <td>**General** FastTab</td> |
| Enable Integration | Specifies whether the integration is enabled. This is the master on/off switch for the whole integration. |
| <td>**Member List Integration Area** subsection</td> |
| Member Integration | Specifies whether the Member List integration area is enabled. This will enable member information to be sent to HeyLoyalty. |
| HeyLoyalty Member List ID | Specifies the HeyLoyalty member list ID integration is coupled with. |
| Membership HL Field ID | Specifies the HeyLoyalty field ID (the value from column _Merge field_ in HeyLoyalty field definition page) for storing information about membership code (is not required, if you don't plan to have member membership IDs at HeyLoyalty). |
| Required Contact Info | Specifies required contact methods (email and/or phone) that must be specified in the member card before BC will submit the member data to HeyLoyalty. |
| Require GDPR Approval | Specifies whether the member must agree to GDPR before BC will submit the member data to HeyLoyalty. We recommend you enable this parameter. |
| Require Newsletter Subscription | Specifies whether the member must subscribe to the e-mail newsletter (**E-Mail News Letter** field on the member card) before BC will submit the member data to HeyLoyalty. We recommend you enable this parameter. |
| Unsubscribe if Blocked | Specifies whether the member will be unsubscribed from HeyLoyalty, if the member, or their membership has been blocked in BC. We recommend you disable this parameter. |
| Read Member Data from Webhook | Specifies whether member data is going to be read from received HeyLoyalty webhook payload. If disabled, for each incoming webhook request system will issue an additional GET call to HeyLoyalty server in order to retrieve the most recent member data available at HeyLoyalty. The parameter must be disabled as it is not currently fully supported by HeyLoyalty. |
| <td>**Heybooking Integration Area** subsection</td> |
| Enabled | Specifies whether the Heybooking Integration area is enabled. This will enable booking and transaction information be sent to HeyLoyalty. |
| Heybooking Integration ID | Specifies the Heybooking Integration ID you acquired from your HeyLoyalty partner. |
| Send Heybooking Err. to E-Mail | Specifies the email address notifications are sent to in case of errors while importing data to HeyLoyalty Heycommerce/Booking database. |
| <td>**Connection Parameters** FastTab</td> |
| HeyLoyalty Api Url | Specifies the URL for HeyLoyalty Api. Default value is `https://api.heyloyalty.com/loyalty/v1` |
| Heycommerce/Booking DB Api Url | Specifies the URL for HeyLoyalty Heycommerce/Booking database Api. Default value is `https://tracking.heycommerce.dk/api` |
| HeyLoyalty Api Key | Specifies the HeyLoyalty Api Key you acquired from your HeyLoyalty partner. |
| HeyLoyalty Api Secret | Specifies the HeyLoyalty Api Secret you acquired from your HeyLoyalty partner. |

## HeyLoyalty Multiple Choice Fields
A multiple choice field in HeyLoyalty is a field that allows users to select multiple values from a list of predefined options.<br>
If you wish to include a HeyLoyalty multiple choice field into the member list integration scope, you'll need to set the field up as an **HL MultiChoice Field** in BC.
To open the **HL MultiChoice Field** page, navigate to **HeyLoyalty Integration Setup** page, and in the page's menu ribbon select **Home** > **MultiChoice Fields**.
![Page HL MultiChoice Fields](images/HLMultiChoiceFieldsPage.png)
<br><br>
On the **HL MultiChoice Field** page create a separate entry for each of the multiple choice fields you want to include into synchronization. You'll need to specify the following infromation for each of the fields:
| Field name | Comment |
|------------|---------|
| Code | Specifies a code to identify this HeyLoyalty multiple choice field. |
| Description | Specifies an explanation of the HeyLoyalty multiple choice field. |
| Magento Field Name | Specifies the id used for the field at Magento (only required if you wish to sync the field to Magento as well). |
| HeyLoyalty Field Name | Specifies the id used for the field at HeyLoyalty (the value from column _Merge field_ in HeyLoyalty field definition page). |

Next you'll need to specify the list of possible option values for each of the multiple choice fields. To do that, put your cursor on the line with the field definition in the **HL MultiChoice Field** page, and in page's menu ribbon click **Options**.
![Page HL MultiChoice Field Options](images/HLMultiChoiceFieldOptionsPage.png)
On the **HL MultiChoice Field Options** page you'll need to specify the following infromation for each of the field's possible option values:
| Field name | Comment |
|------------|---------|
| Sort Order | Specifies the sort order of the option value. The lower the number, the higher in the list the option value will appear. Is assigned automatically, but you can change it if necessary. |
| Description | Specifies an explanation of the HeyLoyalty multiple choice field option value. |
| Magento Description | Specifies the id used for the field option value at Magento (only required if you wish to sync the field to Magento as well). |
| HeyLoyalty Field Name | Specifies the id used for the field option value in HeyLoyalty. Usually consists of 6 digits. You may need to contact your HeyLoyalty provider to get the option value ids for the field. |

{{< alert icon="📝" text="Please note that you may need to extend the HeyLoyalty integration functionality, if you want to be able to modify selected multiple choice field values for members in BC, as this is not supported out of the box."/>}}

## Member Attributes
You can map any HeyLoyalty single choice or text field to a member attribute in BC.
Please refer to [_this documenation section_]({{< ref "../../../../retail/attributes/how-to/client_attributes/client_attributes.md" >}}), if you need more information on how to setup member attributes.
{{< alert icon="📝" text="Please note that you must set the <b>Value Datatype</b> field to <i>Text</i>, <b>On Validate</b> field to <i>Lookup</i> and disable <b>LookUp Table</b> on the <b>Client Attribute Card</b> page to be able to synchronize the attribute between BC and HeyLoyalty."/>}}

In addition, to map a member attribute and its option values to a HeyLoyalty field, you'll need to do the following:
- on the **Client Attribute Card** page:
  - Specify **HeyLoyalty Field ID** (the value from column _Merge field_ in HeyLoyalty field definition page) for each member attribute.
  - Specify **Default HeyLoyalty Value**, if you need a default attribute value to be sent to HeyLoyalty in cases, when the attribute has no value assigned for the member in BC.
  - Enable **Auto Create New Values** boolean field, if you wish a new attribute value automatically created in BC, when a non-existing attribute value is received from HeyLoyalty.
- on the **Client Attribute Value Lookup** page:
  - Specify **HeyLoyalty Name** for each attribute value.

## Stores
Each member can have a preferred store selected on their card in BC. This is basically a Collect Store from NP Retail [Click & Collect]({{< ref "../../../../retail/click_and_collect/intro.md" >}}) module.
For each shop you have in HeyLoyalty, you'll need to create a [Collect Store]({{< ref "../../../../retail/click_and_collect/how-to/setup/setup.md" >}}) in BC and map the entities to each other to be able to synchronize the store code selected on each member card between BC and HeyLoyalty.
To associate a BC Collect store with a HeyLoyalty store, you'll need to specify in BC the id used for the store in HeyLoyalty. The id must be entered on the **Collect Store Card** page in the **HeyLoyalty Name** field.
A HeyLoyalty store id usually consists of 5 digits. You may need to contact your HeyLoyalty provider to obtain the store IDs.

## Data Log Subscribers
Data log subscribers are required for the system to keep track of changes made to the data. These are automatically created by the system when the relevant HeyLoyalty integration area is enabled.
Here is the list of automatically generated data log subscribers.
![Page Data Log Subscribers](images/HLDataLogSubscribers.png)
All data log subscribers should have **Delayed Data Processing (sec)** set to `20`.
Please note that **Direct Data Processing** should not be set to `yes` (except for test/sandbox environments), as this may result in incorrect data being sent to HeyLoyalty.

