-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
select outcome, backers_count from campaign
where outcome = 'live'
order by backers_count desc

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
select count(cf_id) as "baker_counts" from bakers
group by cf_id
order by baker_counts desc;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
select co.first_name, co.last_name, co.email, (ca.goal - ca.pledged) as "Remaining_Goal_Amount"
into email_contacts_remaining_goal_amount
from contacts as co
inner join campaign as ca
on co.contact_id= ca.contact_id
where (outcome = 'live')
And (ca.goal - ca.pledged)>0
order by "Remaining Goal Amount" desc;



-- Check the table


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

select ba.email, ba.first_name, ba.last_name, ca.cf_id, ca.company_name, ca.description, ca.end_date, (ca.goal - ca.pledged) as "Left_of_Goal"
from bakers as ba
inner join campaign as ca
on ba.cf_id = ca.cf_id
order by email desc;
