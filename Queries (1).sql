SELECT FAT.APPLICATION_ID,  fa.application_short_name,
FAT.APPLICATION_NAME
FROM FND_APPLICATION_TL FAT, FND_APPLICATION FA
WHERE 1=1
AND FAT.APPLICATION_ID = fa.application_id; 

select * from fnd_application ; 



SELECT lookup_type, lookup_code, meaning
FROM fnd_lookup_values 
where lookup_type='XXLT_ERP_LIST';


SELECT message_name, message_text
FROM FND_NEW_MESSAGES 
WHERE MESSAGE_name='XXLT_RECORD_ERROR'; 

SELECT  fftv.flex_value_meaning, fftv.description
FROM FND_FLex_Value_sets ffvs , fnd_flex_values ffv,
fnd_flex_values_tl fftv
where ffvs.flex_value_set_name='XXLT_EBS_MODULES'
AND ffvs.flex_value_set_id = ffv.flex_value_set_id
AND fftv.flex_value_id = ffv.flex_value_id; 

select * from fnd_flex_values ;

SELECT * FROM fnd_flex_values;

SELECT user_id, user_name,
description , employee_id, ppx.full_name
FROM FND_USER FU , PER_PEOPLE_X PPX
WHERE FU.USER_NAME='XXLT'
AND FU.EMPLOYEE_ID = PPX.PERSON_ID; 

select 
function_id, function_name, web_html_Call
from fnd_form_functions where function_name like 'XXLT%';

SELECT * FROM FND_FORM_FUNCTIONS_VL  WHERE 
function_name like 'XXLT%'; 

select form_id,
form_name, user_form_name 
from fnd_form_vl where form_name like 'XXLT%';

 SELECT function_id,
 function_name, user_function_name
 FROM FND_FORM_FUNCTIONS_VL  WHERE 
function_name ='XXLT_EMP_DEPT_FORM_FUN' ;


select * from fnd_menus where menu_name ='XXLT_MENU' ;

select * from fnd_menu_entries_tl ; 

select fm.menu_name,
fmet.entry_sequence, fmet.prompt, fme.function_id,
fffv.user_function_name
from fnd_menu_entries_tl fmet, fnd_menu_entries fme , fnd_menus fm
, FND_FORM_FUNCTIONS_VL fffv
where 
fm.menu_id =fmet.menu_id
AND fmet.menu_id = fme.menu_id
AND menu_name ='XXLT_MENU' 
and fmet.entry_sequence = fme.entry_sequence
and fffv.function_id = fme.function_id
;


select  frv.responsibility_name,frv.menu_id,
fm.menu_name, fmet.entry_sequence, fmet.prompt, fme.function_id,
fffv.user_function_name
from FND_RESPONSIBILITY_VL frv ,fnd_menu_entries_tl fmet, fnd_menu_entries fme , fnd_menus fm
, FND_FORM_FUNCTIONS_VL fffv
WHERE frv.responsibility_name='XXLT_RESP'
AND frv.menu_id = fmet.menu_id
AND fm.menu_id =fmet.menu_id
AND fmet.menu_id = fme.menu_id
and fmet.entry_sequence = fme.entry_sequence
and fffv.function_id = fme.function_id; 

SELECT furgd.user_id, fu.user_name, furgd.responsibility_id,
frv.responsibility_name
FROM FND_USER_RESP_GROUPS_DIRECT furgd , fnd_user fu
 , FND_RESPONSIBILITY_VL frv
WHERE  (furgd.USER_ID=fu.user_id) 
AND fu.user_name='XXLT'
AND frv.responsibility_id = furgd.responsibility_id
;
