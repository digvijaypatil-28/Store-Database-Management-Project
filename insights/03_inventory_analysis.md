# Inventory Management & Risk Analysis – Business Insights (Analysis 03)

## Objective
To evaluate inventory health, identify low-stock products, and assess stock-out risks by comparing product demand against available inventory.

---

## Data Sources
- products  
- stocks  
- order_items  

---

## Metrics Defined
- **Current Stock**: SUM(stocks.quantity)
- **Total Quantity Sold**: SUM(order_items.quantity)
- **Inventory Risk Level**:
  - HIGH → Stock = 0
  - MEDIUM → Stock < Demand
  - LOW → Stock ≥ Demand

---

## 1. Low-Stock Products (Below 50 Units)

### Purpose
Identify products with critically low inventory levels across all stores.

### Key Observations
- Multiple products have total stock levels below the defined safety threshold.
- Some low-stock products still experience consistent sales demand.
- Inventory levels vary significantly across products.

### Business Insight
Low inventory levels increase the risk of missed sales opportunities and customer dissatisfaction, especially for actively selling products.

### Business Implication
- Products below threshold require immediate review.
- Inventory replenishment should be prioritized based on demand patterns.
- Static stock thresholds should be combined with sales velocity for better planning.

---

## 2. Inventory Risk Analysis (Demand vs Supply)

### Purpose
Assess stock-out risk by comparing total quantity sold against current stock levels.

### Key Observations
- Several high-selling products show MEDIUM to HIGH inventory risk.
- Some products are already out of stock in one or more stores.
- Premium and high-volume products appear in the risk list.

### Business Insight
Inventory risk is **demand-driven**, not stock-driven.  
A product with moderate stock can still be at risk if demand is high.

### Risk Interpretation
- **HIGH Risk**: Immediate stock-out situation requiring urgent replenishment.
- **MEDIUM Risk**: Inventory insufficient to meet demand trends.
- **LOW Risk**: Inventory levels are currently adequate.

---

## 3. Store-Level Inventory Variation

### Observation
The same product can appear multiple times with different stock levels, indicating store-specific inventory allocation.

### Business Insight
Inventory distribution is uneven across stores, leading to:
- Overstock in some locations
- Stock-outs in others

### Business Implication
- Centralized inventory planning is required.
- Inter-store stock transfers can reduce lost sales.
- Demand-based replenishment should replace static allocation models.

---

## Overall Inventory Conclusions

- Inventory risk must be evaluated relative to demand, not in isolation.
- High-revenue and high-volume products are most vulnerable to stock-outs.
- Store-level inventory visibility is critical for operational efficiency.

---

## Recommendations

- Prioritize replenishment for HIGH and MEDIUM risk products.
- Monitor sales velocity alongside inventory levels.
- Implement proactive inventory alerts for fast-moving products.
- Align inventory planning with sales and marketing strategies.

---