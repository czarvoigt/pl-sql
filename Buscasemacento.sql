SELECT municipio||' - '||uf
  FROM municipio
 WHERE    UPPER (
              TRANSLATE (
                  municipio,
                  'ŠŽšžŸÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜÏÖÑÝåáçéíóúàèìòùâêîôûãõëüïöñýÿ',
                  'SZszYACEIOUAEIOUAEIOUAOEUIONYaaceiouaeiouaeiouaoeuionyy')) LIKE
              UPPER ('%são%')
       OR UPPER (municipio) LIKE UPPER ('%são%');
