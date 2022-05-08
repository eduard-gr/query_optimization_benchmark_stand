/* Q2. Recent messages by your friends
\set personId 10995116278009
\set maxDate '\'2010-10-16\''
 */
select p_personid, p_firstname, p_lastname, m_messageid, COALESCE(m_ps_imagefile, m_content), m_creationdate
from person, message, knows
where
    p_personid = m_creatorid and
    m_creationdate <= '2010-10-16' and
    k_person1id = 10995116278009 and
    k_person2id = p_personid
order by m_creationdate desc, m_messageid asc
limit 20
;
