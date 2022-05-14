select p_personid, p_firstname, p_lastname
from message, person
where m_messageid = 206158431836 and m_creatorid = p_personid;
