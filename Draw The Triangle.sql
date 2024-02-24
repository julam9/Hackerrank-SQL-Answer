DELIMITER 
$$

CREATE PROCEDURE DrawTriangle(IN p INT)
BEGIN
  WHILE p > 0 DO
    SELECT REPEAT('* ', p);  
    SET p = p - 1;
  END WHILE;
END

$$

DELIMITER ;

CALL DrawTriangle(20);