-- Sample SQL Queries for Pharmacy Claims Analysis

-- Total cost by drug
SELECT drug_name, SUM(claim_cost) AS total_cost
FROM pharmacy_claims
GROUP BY drug_name
ORDER BY total_cost DESC;

-- Average days supply and cost per claim
SELECT 
    drug_name, 
    AVG(days_supply) AS avg_supply,
    AVG(claim_cost) AS avg_cost
FROM pharmacy_claims
GROUP BY drug_name;

-- Number of claims per member
SELECT member_id, COUNT(*) AS total_claims
FROM pharmacy_claims
GROUP BY member_id
ORDER BY total_claims DESC;
