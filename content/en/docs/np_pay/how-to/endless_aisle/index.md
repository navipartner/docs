---
title: "Set up Endless Aisle"
description: "The endless isle gives stores the option of granting customers the ability to access and purchase items that aren't physically in stock. In other words, even if a product isn't available or typically carried by the store, customers can still order it from the retailer's extended inventory."
lead: ""
date: 2024-07-29T12:56:23+02:00
lastmod: 2024-07-29T12:56:23+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "endless_isle-60e324cb0bb63b895a231d23173a5fbd"
weight: 627
toc: true
type: docs
---

The endless aisle gives stores the option of granting customers the ability to access and purchase items that aren't physically in stock. In other words, even if a product isn't available or typically carried by the store, customers can still order it from the retailer's extended inventory. 

The NP Pay endless aisle feature converts a POS sale, which can include out-of-stock items in a sales order. During this process, the shopper needs to make a payment reservation with their credit/debit card. They can choose from several shipment fees that are predefined at the store level, and have the option to update their shopping information if needed. The payment isn't captured until the sales order has been posted. 

To set up the endless aisle functionality, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **NP Pay Setup**, and choose the related link.           
2. Populate the following fields under the **Endless Aisle** FastTab:    

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Payment Gateway Code** | Specify the payment service provider which will be used to process the payment reservation in the exported sale order; it's necessary to choose a payment gateway that supports capturing, canceling, and refunding. Only [<ins>Adyen gateways<ins>]({{< ref "../../../ecommerce/payment_gateway/how-to/adyen/index.md" >}}) are supported. | 
   | **Account Type** | Define the type of account to which the payment reservation will be posed. |
   | **Account No.** | Specify the account number to which the payment reservation will be posted. | 

   ![endless_aisle_1](Images/endless_aisle_1.PNG)

3. Navigate to the **POS Payment Methods**.      
   An EFT [<ins>POS payment method<ins>]({{< ref "../../../retail/pos_processes/reference/payment_method/index.md" >}}) that supports manual capture is required for the payment reservation. The setup allows you to make a payment reservation with your debit or credit card, authorizing the payment without capturing it immediately.
4. Open the **POS Payment Method Card** that you wish to set up, and select **EFT** as the **Processing Type**.
5. [<ins>Link the POS payment method to a POS bank terminal<ins>]({{< ref "../setup/index.md" >}}).       
   Only NP Pay POS terminals are supported.
6. Navigate to the **EFT Adyen Payment Type Setup** by clicking **Payment Type Parameters** for the created payment type, and enable the **Manual Capture** toggle switch.     
   This option ensures that the payment reservation isn't automatically captured.
7. Navigate to the **Store Shipment Profile Card** to set up different shipment methods and fees related to the store's shipping profile.       
   The shipping profile can be assigned to the store in the **POS Shipment Profile** field of the [<ins>**POS Store Card**<ins>]({{< ref "../../../retail/pos_store/how-to/new/index.md" >}}).    
8. Populate the following fields in the **General** section:      

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Code** | Specify the code of the store's shipment profile. | 
   | **Description** | Add a brief description of the shipment profile. |

9. Populate the following fields in the **Shipment Fees** section:      

   | Field Name      | Description |
   | ----------- | ----------- |
   | **Description** | Add a brief description of the shipment option that will be displayed on the POS and in the sales order. |
   | **Shipment Method Code** | Specify the code for the shipment method to be used in the sales order. |
   | **Shipping Agent Code** | Specify the code for shipping agent to be used in the sales order. |
   | **Shipping Agent Service Code** | Specify the code for the shipping agent service to be used in the sales order. |
   | **Shipment Fee Type** | Specify how the shipment fee is represented on the POS and in the sales order (G/L account or an item). |

10. Move on to configuring the **SALES_DOC_EXP** [<ins>POS action<ins>]({{< ref "../../../retail/pos_layout/how-to/new_button/index.md" >}}):     

   | Parameter Name      | Description |
   | ----------- | ----------- |
   | **Select Customer** | Set to **true**; this parameter will prompt the user to select a customer for the sales order. |
   | **POS Payment Reservation** | Set to **true**; this parameter enables the payment reservation functionality. |
   | **POS Payment Method Code** | Specify a POS payment method that has previously been declared as EFT and supporting manual capture; this method will be used to make the payment reservation. |
   | **Open Document** | Set to **true**; when enabled, the sales order is opened automatically after being created, allowing you to easily update the shipping information, if needed. |
   | **Select Shipment Method** | Set to **true**; this parameter enables the shipment method selection; when you select the shipment method, it will be added as a line on the POS sale, and exported to the sales order. |
   | **Ask for vouchers** | When set to **true**, you will be prompted to scan a voucher before the payment reservation. After the scan is done, you will be asked whether you wish to scan additional vouchers. Once you're done, the card reservation will be executed if there's any remaining payable amount. |
   | **Voucher type** | You can specify the voucher type you're going to use for the payment reservation in this field. If it isn't specified, the system will find it based on the reference number. |
   | **Ask for voucher type** | If set to **true**, the system will prompt for the voucher type that you're going to use in the payment reservation before scanning the voucher.  |
   | **Open voucher list** | If set to **true**, if you scan a blank voucher reference number, the voucher list is going to be opened, and you can select the voucher from it. |

11. Move on to configuring the **EFT_RESERVE_DOC_PAY** [<ins>POS action<ins>]({{< ref "../../../retail/pos_layout/how-to/new_button/index.md" >}}):       

   | Parameter Name      | Description |
   | ----------- | ----------- |
   | **Open Document** | When set to **true**, the document will be opened for review before the payment reservation is made. |
   | **POS Payment Method Code** | Specify a POS payment method that has previously been declared as EFT and supporting manual capture; this method will be used to make the payment reservation. |
   | **Select Customer** | Set to **true**; this parameter will prompt the user to select a customer for the sales order. |
   | **Ask for vouchers** | When set to **true**, you will be prompted to scan a voucher before the payment reservation. After the scan is done, you will be asked whether you wish to scan additional vouchers. Once you're done, the card reservation will be executed if there's any remaining payable amount. |
   | **Voucher type** | You can specify the voucher type you're going to use for the payment reservation in this field. If it isn't specified, the system will find it based on the reference number. |
   | **Ask for voucher type** | If set to **true**, the system will prompt for the voucher type that you're going to use in the payment reservation before scanning the voucher.  |
   | **Open voucher list** | If set to **true**, if you scan a blank voucher reference number, the voucher list is going to be opened, and you can select the voucher from it. |
 

## Next steps

#### Reserve a POS sale to a sales order

Once all setups are complete, you can export a POS sale to a sales order with a payment reservation. You can try out the reservation process in the following interactive demo:

<iframe class="vidyard_iframe" title="Hartmann’s uses Dynamics 365 Business Central to artfully improve operations" src="
https://demo.arcade.software/7RUlchVHtuA8okU2LwVe?embed"
width=835 height=470 scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen></iframe>

After the export is complete, a credit sale POS entry is created. It is not going to be posted, but it contains all the necessary information on the completed POS sale. 

   ![endless_aisle_2](Images/endless_aisle_2.PNG)

You can find the related sales order by navigating to **Related** > **Related Sales Documents** from the **POS Entry Card**. 

From the sales order, you can review the payment reservation by navigating to **Related** > **Payments** > **Payment Lines**. The sales order is treated like a webshop order, meaning that when the document is posted, the payment is captured, and the funds are taken from the shopper's account. 

If you decide to delete the document, the payment reservation will be canceled. 