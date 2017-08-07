CREATE OR REPLACE FUNCTION caesars.mb_tmp (
  integer,
  integer
)
RETURNS json AS
$body$
DECLARE
	result_v JSON;
BEGIN

	result_v = json_build_object('limit', $1, 'offset', $2);
	-- RAISE EXCEPTION 'Errorek';

     
	RETURN result_v;
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;