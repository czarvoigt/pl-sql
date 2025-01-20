/* Script p/ copiar sinônimos públicos */
SELECT    'create public synonym '
       || synonym_name
       || ' for '
       || table_owner
       || '.'
       || table_name
       || ';'
  FROM dba_synonyms
 WHERE owner = 'PUBLIC' AND table_owner = 'OWNER_TESTE';
