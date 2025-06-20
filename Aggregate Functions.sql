use KP;

select * from dataset;

SELECT PaymentMethod, gender, count(*) FROM dataset
GROUP BY PaymentMethod, gender;

SELECT min(tenure), max(tenure) FROM dataset;

SELECT PaymentMethod, avg(TotalCharges) FROM dataset
GROUP BY PaymentMethod;
