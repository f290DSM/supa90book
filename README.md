# PIPA-33

## Descrição


```mermaid
---
title: Order example
---
erDiagram
    CUSTOMER ||--o{ ORDER : places
    CUSTOMER {
        string name
        string custNumber
        string sector
    }
    ORDER ||--|{ LINE-ITEM : contains
    ORDER {
        int orderNumber
        string deliveryAddress
    }
    LINE-ITEM {
        string productCode
        int quantity
        float pricePerUnit
    }


```

### Tabela

ID | Username | Password
-- | -- | --
1 | esdras | segredo

## Missão

Lorem ipsum dolor sit amet