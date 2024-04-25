SELECT municipio||' - '||uf
  FROM municipio
 WHERE    UPPER (
              TRANSLATE (
                  municipio,
                  'ŠŽšžŸÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜÏÖÑÝåáçéíóúàèìòùâêîôûãõëüïöñýÿ',
                  'SZszYACEIOUAEIOUAEIOUAOEUIONYaaceiouaeiouaeiouaoeuionyy')) LIKE
              UPPER ('%são%')
       OR UPPER (municipio) LIKE UPPER ('%são%');

SELECT upper(municipio)||' - '||uf
  FROM municipio
 union
 select upper(translate (municipio,
 'ŠŽšžŸÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜÏÖÑÝåáçéíóúàèìòùâêîôûãõëüïöñýÿ',
 'SZszYACEIOUAEIOUAEIOUAOEUIONYaaceiouaeiouaeiouaoeuionyy'))
 ||' - '||uf
 from municipio;
