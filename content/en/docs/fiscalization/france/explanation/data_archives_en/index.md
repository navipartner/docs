---
title: "Data Archives"
description: "This article provides information needed to understand how NP Retail exports to .xml archives, how these .xml archives are secured, and how you can validate that they have not been tampered with."
lead: ""
date: 2023-07-06T13:17:31+02:00
lastmod: 2023-07-06T13:17:31+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "data_archives-67ccebe7cebec9c255b6c2c62dbd89d7"
weight: 814
toc: true
type: docs
---

This article provides information needed to understand how NP Retail exports to .xml archives, how these .xml archives must be secured, and how you can validate that they have not been tampered with.

## Period Archives
You must periodically monitor closed monthly periods on the **Workshift Summary** page and export these to an archive file stored on a secure media i.e. usb keys in a safe.
You create archives by using the archive button on **Workshift Summary** list.
Note that Business Central SaaS already has multiple levels of database backup on the data as it's all stored inside the ERP platform maintained by Microsoft. This includes geo-redundant backups. For more information, see [<ins>their docs<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/service-overview#database-and-backups)



## Archive Validation

To ensure integrity of exported archives, all .xml archives are signed with the same certificate as all POS event signings.

The XMLDSIG canonicalization method is XML-C14N 1.0, and the signing is done via RSA & SHA256 as all the other POS event signings.
If you reach out to NaviPartner we can supply you with a .cer certificate file that includes the public key of the cert used by a specific customer.
NaviPartner also provides a powershell script that can be downloaded from and executed to validate both the schema of the XML file and the signature validity: 
[<ins>Archive Validation Script<ins>](https://docs.navipartner.com/nf525_validate_archive.ps1).

The script depends on powershell core which can be downloaded and installed from the 
[<ins>following link<ins>](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3)
 
The script must be placed inside a folder together with the 3 files needed for verification:
- archive.xml
- schema.xsd
- certificate.cer

The schema file that archives adhere to can be downloaded at 
[<ins>Archive Schema<ins>](https://docs.navipartner.com/schema.xsd).

The 3 files must be named exactly like above. See image for example.

![Script Execution](script_execution.png)

## Archive Structure

The overall structure of the archive is as follows:
```
<Archive>
    <GrandPeriod>
        <ArchiveSignature/>
        <SystemEntryNo/>
        <SequentialID/>
        <FromDate/>
        <ToDate/>
        <GrandTotal/>
        <PerpetualAbsoluteGrandTotal/>
        <PerpetualGrandTotal/>
        <PeriodGrandTotalSignature/>

        <Tickets/>        

        <Duplicates/>        

        <GrandTotals/>        

        <JET/>        
    </GrandPeriod>

    <Signature/>    
</Archive>
```

The first segment is a header for the monthly grand period that is archived, followed by lists of all the events signed in that period.
After the GrandPeriod element there is a Signature element that contains the XML signature for the file, making it tamper-proof. 

See the schema file linked above for an in-depth overview of all XML elements in each of the 4 event type sections (tickets, duplicates, grandtotals, and JET).

## XML Tags
List of archive tags, with french name and description

| Tag                            | French Name                                  |
|--------------------------------|----------------------------------------------|
| Archive                        | Archive                                      |
| GrandPeriod                    | Période majeure                              |
| ArchiveSignature               | Signature d'archive                          |
| SystemEntryNo                  | Numéro d'entrée système                      |
| SequentialID                   | ID séquentiel                                |
| FromDate                       | De la date                                   |
| ToDate                         | À la date                                    |
| GrandTotal                     | Total général                                |
| PerpetualAbsoluteGrandTotal    | Total absolu perpétuel                       |
| PerpetualGrandTotal            | Total perpétuel                              |
| PeriodGrandTotalSignature      | Signature du total de la période             |
| Tickets                        | Billets                                      |
| Ticket                         | Billet                                       |
| DocumentType                   | Type de document                             |
| TicketSignature                | Signature du billet                          |
| SalesLine                      | Ligne de vente                               |
| TaxLine                        | Ligne de taxe                                |
| PaymentLine                    | Ligne de paiement                            |
| Type                           | Type                                         |
| ExchangeRate                   | Taux de change                               |
| IssuedGenericVoucher           | Bons génériques émis                         |
| AppliedGenericVoucher          | Bons génériques appliqués                    |
| IssuedCoupon                   | Coupons émis                                 |
| AppliedCoupon                  | Coupons appliqués                            |
| RelatedInfo                    | Informations connexes                        |
| Duplicates                     | Duplicatas                                   |
| Duplicate                      | Duplicata                                    |
| ID                             | ID                                           |
| FiscalDocumentNumber           | Numéro de document fiscal                    |
| ReprintNumber                  | Numéro de réimpression                       |
| DuplicateSignature             | Signature du duplicata                       |
| RelatedInfo                    | Informations connexes                        |
| GrandTotals                    | Totals généraux                              |
| GrandTotal                     | Total général                                |
| PerpetualAbsoluteGrandTotal    | Total absolu perpétuel                       |
| PerpetualGrandTotal            | Total perpétuel                              |
| GrandTotalSignature            | Signature du total général                   |
| JET                            | JET                                          |
| JETEntry                       | Entrée JET                                   |
| JETSignature                   | Signature JET                                |
| SystemEntryKey                 | Clé d'entrée système                         |
| DocumentNumber                 | Numéro de document                           |
| NoOfPrints                     | Nombre d'impressions                         |
| SalespersonCode                | Code du vendeur                             |
| POSCode                        | Code POS                                     |
| Date                           | Date                                         |
| Time                           | Heure                                        |
| OperationType                  | Type d'opération                             |
| NoOfSalesLines                 | Nombre de lignes de vente                   |
| TotalInclTax                   | Total TTC                                   |
| TotalExclTax                   | Total HT                                    |
| LineNo                         | Numéro de ligne                              |
| ProductCode                    | Code de produit                             |
| ProductLabel                   | Libellé du produit                          |
| Quantity                       | Quantité                                     |
| TaxIdentifier                  | Identifiant de taxe                         |
| TaxRate                        | Taux de taxe                                |
| UnitPriceInclTax               | Prix unitaire TTC                            |
| DiscountCode                   | Code de réduction                           |
| DiscountPercentage             | Pourcentage de réduction                    |
| DiscountAmount                 | Montant de réduction                        |
| TotalExclTax                   | Total HT                                    |
| TotalInclTax                   | Total TTC                                   |
| BaseQuantity                   | Quantité de base                            |
| UnitOfMeasureCode              | Code de l'unité de mesure                   |
| Created                        | Créé                                         |
| Description                    | Description                                 |
| Amount                         | Montant                                      |
| Currency                       | Devise                                       |
| CurrencyAmount                 | Montant en devise                            |
| ExchangeRate                   | Taux de change                               |
| CreatedAt                      | Créé à                                       |
| SoftwareVersion                | Version du logiciel                         |
| StoreName                      | Nom du magasin                              |
| StoreName2                     | Nom du magasin 2                            |
| StoreAddress                   | Adresse du magasin                          |
| StoreAddress2                  | Adresse du magasin 2                        |
| StorePostCode                  | Code postal du magasin                      |
| StoreCity                      | Ville du magasin                            |
| StoreCountry                   | Pays du magasin                             |
| IntraCommVATIdentifier         | Identifiant de TVA intracommunautaire        |
| SalespersonName                | Nom du vendeur                             |
| UserCode                       | Code d'utilisateur                           |
| GrandTotalType                 | Type de total général                       |
| SequenceNumber                 | Numéro de séquence                           |
| AdditionalInfo                 | Informations supplémentaires                |

## Legacy

Prior to the fiscal version 11 of NPRetail, the archive files were not signed and they followed a different schema. The old schema can be downloaded from 
[<ins>Old Archive Schema<ins>](https://docs.navipartner.com/nf525_schema_old_pre11.xsd).

Prior to the fiscal version 21.6 of NPRetail, the archive files followed a different schema that can be downloaded here:
[<ins>Old Archive Schema<ins>](https://docs.navipartner.com/nf525_schema_old_pre216.xsd).