select cmp.company_name,cpg.campaign_name, a.sentiment from
(select company_id,campaign_id,sentiment from responses where company_id=6 group by company_id,campaign_id,sentiment order by company_id) a join companies cmp
on a.company_id = cmp.campany_id join campaigns cpg on a.campaign_id = cpg.campaign_id order by company_name;


select cmp.company_name,cpg.campaign_name, 'Positive' as sentiment, count from
(select company_id,campaign_id,sentiment,count(*) as count from responses where sentiment=0 group by company_id,campaign_id,sentiment order by count desc limit 75) a join companies cmp
on a.company_id = cmp.campany_id join campaigns cpg on a.campaign_id = cpg.campaign_id  order by count desc;

select cmp.company_name,cpg.campaign_name, 'Negative' as sentiment, count from
(select company_id,campaign_id,sentiment,count(*) from responses where sentiment=1 group by company_id,campaign_id,sentiment order by count desc limit 10) a join companies cmp
on a.company_id = cmp.campany_id join campaigns cpg on a.campaign_id = cpg.campaign_id order by count desc;