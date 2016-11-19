CREATE PROCEDURE `setup_product_table`(IN subCategoryIdIn int(11) )
BEGIN
 set session group_concat_max_len = 9000;

SET @DDLSQL = '';
SELECT
  GROUP_CONCAT(DISTINCT
    CONCAT(
      columnName , '  varchar(500)'

    )
  )
into @DDLSQL from
(
  SELECT distinct ps.columnName as columnName
  FROM productspecs ps
  where subCategoryId=subCategoryIdIn
  ORDER BY ps.columnName
) d;
SELECT @DDLSQL;

SELECT
  GROUP_CONCAT(DISTINCT
    CONCAT(
      'CREATE TABLE IF NOT EXISTS `',Name,'` (`Id` int(11) NOT NULL AUTO_INCREMENT, `ProductId` int(11) NOT NULL, ',@DDLSQL, ' ,  PRIMARY KEY (`Id`)) ;'

    )
  )
into @DDLSQL from
(
  SELECT distinct sub.Name as `Name`
  FROM productspecs ps , productsubcategories as sub
 where ps.subCategoryId=subCategoryIdIn and ps.subCategoryId = sub.id
) d;

PREPARE stmt FROM @DDLSQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @SQL = '';

SELECT
  GROUP_CONCAT(DISTINCT
    CONCAT(
        'max(CASE WHEN columnName = ''',columnName ,''' THEN value ELSE NULL END) AS `' ,columnName ,'`'

    )
  )
into @SQL from
(
  SELECT distinct ps.columnName as columnName
  FROM productspecs ps
  where subCategoryId=subCategoryIdIn
  ORDER BY ps.columnName
) d;
SELECT @SQL;


SET @SQLINS = '';
SELECT
  GROUP_CONCAT(DISTINCT
    CONCAT(
      columnName

    )
  )
into @SQLINS from
(
  SELECT distinct ps.columnName as columnName
  FROM productspecs ps
  where subCategoryId=subCategoryIdIn
  ORDER BY ps.columnName
) d;
SELECT @SQLINS;



SET @SQL
  = CONCAT('SELECT ps.ProductId, ', @SQL, '
            from productspecs ps  where subCategoryId =',subCategoryIdIn,' GROUP BY ps.ProductId;');
 SELECT @SQL;


 SELECT
  GROUP_CONCAT(DISTINCT
    CONCAT(
      'insert into ', Name ,' ( ProductId , ',@SQLINS,')',@SQL

    )
  )
into @SQLINS from
(
  SELECT distinct sub.Name as `Name`
  FROM productspecs ps , productsubcategories as sub
 where ps.subCategoryId=subCategoryIdIn and ps.subCategoryId = sub.id
) d;

PREPARE stmt FROM @SQLINS;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END
