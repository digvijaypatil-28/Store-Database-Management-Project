# Employee Performance Analysis – Business Insights (Analysis 04)

## Objective
To evaluate employee performance based on order handling and revenue generation, identify top-performing staff, and support data-driven decisions for recognition, training, and workforce optimization.

---

## Data Sources
- staffs  
- orders  
- order_items  
- stores  

---

## Metrics Defined
- **Total Orders Handled**: COUNT(DISTINCT order_id)
- **Total Revenue Generated**:  
  SUM(quantity × list_price × (1 − discount))
- **Employee Rank**: DENSE_RANK based on total revenue

---

## 1. Staff Performance by Revenue

### Purpose
Identify employees who contribute the most to overall business revenue.

### Key Observations
- Revenue contribution is heavily concentrated among a small group of employees.
- Top-performing staff handle a high number of orders and generate significantly higher revenue.
- Employees within the same store show noticeable performance variation.

### Business Insight
Employee effectiveness directly impacts store revenue.  
High-performing staff are key business assets rather than interchangeable resources.

### Business Implication
- Retaining top performers is critical for revenue stability.
- Incentive structures should reward revenue contribution, not just order volume.
- Best practices from top staff should be documented and shared.

---

## 2. Staff Performance by Order Volume

### Purpose
Identify employees who handle the highest number of customer orders.

### Key Observations
- Some employees handle a large number of orders but generate comparatively lower revenue.
- Order volume does not always correlate with revenue performance.

### Business Insight
High order volume alone does not guarantee profitability.  
Revenue efficiency per order is an important performance indicator.

### Business Implication
- Employees with high order counts but lower revenue may benefit from upselling training.
- Performance evaluation should balance both quantity and quality of sales.

---

## 3. Top Staff by Orders Handled

### Purpose
Highlight employees with the highest operational workload.

### Key Observations
- A small number of employees process a majority of total orders.
- Workload distribution is uneven across staff members.

### Business Insight
Operational dependency on a few employees introduces workforce risk.

### Business Implication
- Cross-training is required to reduce dependency on key individuals.
- Staffing levels and scheduling should be adjusted to balance workloads.

---

## 4. Staff Ranking Based on Revenue Generated

### Purpose
Rank employees objectively based on their revenue contribution.

### Key Observations
- Clear ranking tiers emerge when revenue is used as the evaluation metric.
- Employees from high-performing stores dominate the top ranks.
- Ranking highlights both star performers and improvement opportunities.

### Business Insight
Revenue-based ranking provides a transparent and fair basis for performance evaluation.

### Business Implication
- Rankings can be used for promotions, bonuses, and recognition programs.
- Low-ranking staff may require coaching or role realignment.
- Store-level performance is strongly influenced by staff quality.

---

## Overall Employee Performance Conclusions

- Employee performance varies significantly across the organization.
- A small group of employees drives a large portion of total revenue.
- Order volume and revenue contribution must be evaluated together for fair assessment.

---

## Recommendations

- Implement revenue-based incentives and recognition programs.
- Invest in training focused on upselling and customer engagement.
- Reduce operational risk by cross-training staff.
- Use performance rankings for workforce planning and talent development.

---
