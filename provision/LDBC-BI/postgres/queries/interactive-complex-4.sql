select t_name, count(*) as postCount
from tag, message, message_tag recent, knows
where
    m_messageid = mt_messageid and
    mt_tagid = t_tagid and
    m_creatorid = k_person2id and
    m_c_replyof IS NULL and -- post, not comment
    k_person1id = 10995116277918 and
    m_creationdate >= '2010-10-01'::date and
    m_creationdate < ('2010-10-01'::date + INTERVAL '1 days' * 31) and
    not exists (
        select * from
  (select distinct mt_tagid from message, message_tag, knows
        where
    k_person1id = 10995116277918 and
        k_person2id = m_creatorid and
        m_c_replyof IS NULL and -- post, not comment
        mt_messageid = m_messageid and
        m_creationdate < '2010-10-01'::date) tags
  where  tags.mt_tagid = recent.mt_tagid)
group by t_name
order by postCount desc, t_name asc
limit 10;
