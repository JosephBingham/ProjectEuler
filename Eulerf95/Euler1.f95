PROGRAM Euler1
	IMPLICIT NONE 
	INTEGER :: su, i
	su = 0
	DO i= 1, 999
		IF((mod(i,3) == 0) .OR. (mod(i,5) == 0)) THEN
			su = su + i
		END IF 
	END DO
	PRINT *, su
END
