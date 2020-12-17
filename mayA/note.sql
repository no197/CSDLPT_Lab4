
-- Bước 0: Tạo user
-- Tạo user m01:
CREATE USER M01 IDENTIFIED BY M01
GRANT CONNECT,RESOURCE,CREATE ROLE TO M01
GRANT CREATE PUBLIC DATABASE LINK to M01;


CREATE USER GUEST IDENTIFIED BY GUEST
GRANT CONNECT TO GUEST



------------ CHẠY SAU KHI TẠO DB-----------------

-- Tạo role_giaodich

CREATE ROLE ROLE_GIAODICH NOT IDENTIFIED;

GRANT Insert,select ON M01.giaodich TO ROLE_GIAODICH;

-- Grant update để tiến hành demo lost update
GRANT select, update on M01.khachhang to ROLE_GIAODICH;


-- Gán role_giaodich cho guest
  GRANT ROLE_GIAODICH  to GUEST

-- Gán privilege select on khachhang cho guest

  GRANT SELECT ON KHACHHANG TO GUEST


-----------------------------------------------------

-- Bước 0.5: Kết nối máy A qua máy B

--Buoc 2 Doi port Listener2 1522 tronmg file listener.ora

-- Bước 3: Đổi file tnsname.ora


-- Bước 4:
--  sqlnet
--  đổi authen về NONE

-- Bước 5: 
--- Restart services (TNS listener và ORCL)

restart service cũ 
tạo service mới 

lsnrctl statusv (listener tên là listenner trong file listener.ora)
stop
start
reload
service



-- Bước 6:
-- tnsping mayB (chạy lệnh này)