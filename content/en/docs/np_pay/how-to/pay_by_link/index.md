---
title: "Set up Pay by Link"
description: "The Pay by Link feature enables businesses to streamline and simplify the payment process by allowing customers to make secure online payments through a direct link. "
lead: ""
date: 2024-07-17T08:28:36+02:00
lastmod: 2024-07-17T08:28:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pay_by_link-7b679f94313e92a19cf1eb2af30a1c84"
weight: 627
toc: true
type: docs
---

The Pay by Link feature enables businesses to streamline and simplify the payment process by allowing customers to make secure online payments through a direct link. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **NP Pay Setup**, and choose the related link.           
2. Once you're on the **NP Pay Setup**, navigate to the **Pay by Link** panel/FastTab.
3. Use the following fields and options to complete the setup. If necessary, refer to the screenshot below for more information.

   ![pay_by_link_np_pay](Images/pay_by_link_np_pay.png)
   
   | Field Name      | Description |
   | ----------- | ----------- |
   | **Payment Gateway Code** | Specifies which payment service provider will be used to process transactions through the link. You need to choose a payment gateway that has capturing, cancelling, and refunding functions enabled. | 
   | **Enable Pay by Link** | Use this field to enable or disable the Pay by Link feature, which integrates with payment processing. When enabled, a webhook is created to receive information from payment, allowing the system to process payments automatically. | 
   | **E-mail Template** | Specifies the [<ins>email template<ins>]({{< ref "../../../retail/communication/how-to/email_templates/index.md" >}}) that will be sent for the Pay by Link via email. | 

   ![pay_by_link_email_template](Images/pay_by_link_email_template.PNG)

   | Field Name      | Description |
   | ----------- | ----------- |
   | **SMS Template** | Specifies the [<ins>SMS template<ins>]({{< ref "../../../retail/communication/reference/sms_template_ref/index.md" >}}) that will be sent for the Pay by Link via SMS. | 

   ![pay_by_link_sms](Images/pay_by_link_sms.PNG)

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Enable Automatic Posting** | Enable or disable the automatic posting of payment lines via job queue for posting sales invoices. | 
   | **Account Type** | Defines the type of account to which the transaction will be posted. |
   | **Account No.** | Specifies the number of the account to which the transaction will be posted. |
   | **Pay by Link Expiration Duration** | Defines the expiration duration for Pay by Link payment requests. This determines for how long the payment link will remain valid after it's been generated and sent to the recipient. If the expiration duration is not explicitly set, a default expiration period of 1 day is automatically applied. | 
   | **Posting Retry Count** | Specifies the number of attempts that will be made to perform the job posting process if it's initially failed. | 

4. If you want to send Pay by Link via SMS or email, you need to do additional setup in either [<ins>Email Setup<ins>]({{< ref "../../../retail/communication/explanation/email_setup/index.md" >}}) or the [<ins>SMS Setup<ins>]({{< ref "../../../retail/communication/how-to/sms_setup/index.md" >}}), depending on the desired result.
5. Issue Pay by Link from documents (sales order, sales invoice, posted sales invoice) by opening the **Actions** dropdown in the ribbon, and selecting **Pay by Link**.    
   The **Pay by Link** window is displayed. 
6. Populate the available fields and verify the automatically input information:

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Amount** | Specifies the total payment amount for Pay by Link. It is automatically populated with the total amount including VAT from the related document, and it can be changed to the lower amount for partial payments. | 
   | **Send to E-mail** | Specifies the email address to which the Pay by Link will be sent. This field is automatically populated with the email address of the customer associated with the document, but it can be edited if needed. | 
   | **Send to Mobile Phone No.** | Specifies the phone number to which Pay by Link will be sent. This field is automatically populated with the email address of the customer associated with the document, but it can be edited if needed. | 
   | **Send SMS** | Indicates whether an SMS notification is going to be sent to customers. This field is automatically enabled if the **Bill-to Customer** was populated with a mobile phone number. | 
   | **Send E-mail** | Indicates whether an email notification is going to be sent to customers. This field is automatically enabled if the **Bill-to Customer** was populated with an email address. | 
   | **Expiration Link Duration** | Specifies the duration for the Pay by Link payment requests. This field is automatically populated with the value from **Pay by Link Setup**. | 

   ![pay_by_link_2](Images/pay_by_link_2.PNG)

## Interactive demo

Try out the NP Pay feature with our interactive demo:

<iframe class="vidyard_iframe" title="Hartmann’s uses Dynamics 365 Business Central to artfully improve operations" src="
https://demo.arcade.software/vfEhAVMfU6uPBtzCZDVG?embed"
width=835 height=470 scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen></iframe>

## Next steps

### View the details

After creating Pay by Link, you can see the details by opening the **Related** dropdown from the selected document (sales order, sales invoice, posted sales invoice), and clicking **Pay by Link** > **Payment Lines**. 

   ![pay_by_link_lines](Images/pay_by_link_lines.PNG)

   The following fields and options are used to define payment lines:

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Requested Amount** | Specifies the amount that is requested to be paid via Pay by Link. | 
   | **Payment ID** | Specifies the unique identifier associated with each Pay by Link transaction. |
   | **Expires At** | Specifies the deadline by which the customer needs to complete the payment. When the specified date and time expires, Pay by Link becomes invalid. |
   | **Pay by Link URL** | Contains the unique URL generated for the customer to make a payment via Pay by Link. This URL directs the customer to a secure payment page. |

After authorization is completed, the **Payment Lines** are automatically populated with **Transaction ID**, **Authorized Amount**, and **Authorization Date**. Subsequently, the payment amount can either be captured automatically upon posting or triggered manually. During authorization, the corresponding amount is reserved on the customer's credit card, and that amount is deducted from the credit card balance after the payment is captured.

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Transaction ID** | Specifies the unique identifier for each payment transaction processed through Pay by Link. |
   | **Amount** | Specifies the amount that is paid via Pay by Link. | 
   | **Date Authorized** | Specifies the date when the payment has been authorized. |
   | **Posting Error** | Indicates whether an error has occurred during the posting process. |
   | **Skip Posting** | Specifies if the posting process needs to be bypassed for a particular record or a batch. |
   | **Retry Posting Count** | Sets the number of attempts to retry posting in the initial attempt has failed. | 

### Check email log

You can check the pay-by-link email log by navigating to **Related** > **Pay by Link** > **Pay by Link E-mail Log** from the **Payment Line List**. The email log allows users to view the log of emails sent for Pay by Link transactions. The log includes details such as an email address, date, and the time sent, as well as the status of the email delivery. 

### Resend Pay by Link

You can resend Pay by Link to customers by navigating to **Related** > **Pay by Link** > **Resend Pay by Link** from the **Payment Line List**. An identical form to the one used for generating Pay by Link previously is created as a result. The **Amount** and **Expiry Date** fields are non-editable, as the Pay by Link has already been issued. 

   ![resend_pay_by_link](Images/resend_pay_by_link.PNG)

### Cancel Pay by Link

You can cancel an active Pay by Link by navigating to **Related** > **Pay by Link** > **Cancels Pay by Link** from the **Payment Line List**. Once cancelled, the link becomes invalid, and the customer is no longer able to use it to make a payment. The **Manually Cancelled Link** switch is activated and **Expires At** is changed to the current date and time. 

### Cancel payment

You can cancel the payment via the **Cancel Payment** action in the **Payment Line List** ribbon. This action prevents the transaction from being finalized, and ensures that no funds are transferred from the customer's account. 

### View posting log

You can reach the **Posting Log** from the **Payment Line List** by clicking the appropriate action in the ribbon. It brings up a detailed log of all posting activities, including successes, errors, and retry attempts for a selected **Payment Line**.
