-------------------- CREATE TABLE ---------------------------------
CREATE TABLE SACH
(
    MaSach varchar2(10) NOT NULL,
    TenSach varchar2(25) NOT NULL,
    NgayXB date NOT NULL,
    TacGia varchar2(25),
    GiaTien number NOT NULL,
    NhaXuatBan varchar2(25),
    LanIn number NOT NULL,
    CONSTRAINT PK_Sach PRIMARY KEY (MaSach)
);

CREATE TABLE CHINHANH
(
    MaChiNhanh varchar2(5) NOT NULL,
    TenChiNhanh varchar2(50) NOT NULL,
    SoDT varchar2(12) NOT NULL,
    CONSTRAINT PK_CN PRIMARY KEY(MaChiNhanh)
);

CREATE TABLE KHOSACH_QLKHO
(
    MaChiNhanh varchar2(5) NOT NULL,
    MaSach varchar2(10) NOT NULL,
    SoLuong number NOT NULL,
    NgayCapNhat date NOT NULL,
    CONSTRAINT PK_KSQLK PRIMARY KEY(MaChiNhanh,MaSach)
);

CREATE TABLE KHOSACH_NVBH
(
    MaChiNhanh varchar2(5) NOT NULL,
    MaSach varchar2(10) NOT NULL,
    TinhTrang varchar2(20) NOT NULL,
    KhuyenMai number NOT NULL,
    CONSTRAINT PK_KSNVBH PRIMARY KEY(MaChiNhanh,MaSach)
);

select * from khosach_qlkho join khosach_nvbh on khosach_qlkho.masach = khosach_nvbh.masach


CREATE TABLE NHANVIEN
(
    MaNV varchar2(5) NOT NULL,
    TenNV varchar2(50) NOT NULL,
    DiaChi varchar2(20) NOT NULL,
    SoDT varchar2(12) NOT NULL,
    Luong number NOT NULL,
    MaChiNhanh varchar2(5) NOT NULL,
    CONSTRAINT PK_NV PRIMARY KEY(MaNV)
);

CREATE TABLE CAPNHATSACH
(
    MaChiNhanh varchar2(5),
    MaSach varchar2(10),
    SoLuong number,
    LoaiCN varchar2(10),
    CONSTRAINT PK_CNSACH PRIMARY KEY(MaChiNhanh, MaSach)
);

ALTER TABLE NHANVIEN
ADD CONSTRAINT FK_NV_ChiNhanh FOREIGN KEY (MaChiNhanh) REFERENCES CHINHANH(MaChiNhanh);
ALTER TABLE KHOSACH_NVBH
ADD CONSTRAINT FK_KHOSACHNVBH_SACH FOREIGN KEY (MaSach) REFERENCES SACH(MaSach);
ALTER TABLE KHOSACH_NVBH
ADD CONSTRAINT FK_KHOSACHNVBH_CHINHANH FOREIGN KEY (MaChiNhanh) REFERENCES CHINHANH(MaChiNhanh);
ALTER TABLE KHOSACH_QLKHO
ADD CONSTRAINT FK_KHOSACHQLKHO_SACH FOREIGN KEY (MaSach) REFERENCES SACH(MaSach);
ALTER TABLE KHOSACH_QLKHO
ADD CONSTRAINT FK_KHOSACHQLKHO_CHINHANH FOREIGN KEY (MaChiNhanh) REFERENCES CHINHANH(MaChiNhanh);


ALTER TABLE CAPNHATSACH 
ADD CONSTRAINT FK_CNSACH_SACH FOREIGN KEY (MaSach) REFERENCES SACH(MaSach);
ALTER TABLE CAPNHATSACH
ADD CONSTRAINT FK_CNSACH_CHINHANH FOREIGN KEY (MaChiNhanh) REFERENCES CHINHANH(MaChiNhanh);

ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY HH24:MI:SS';

----------------------------- INSERT TABLE ------------------------
INSERT INTO SACH VALUES('Book1','SpyxFamily T.6', 				to_date('29/10/2021','dd/mm/yyyy'),'Endou Tatsuya', 25000, 'Kim Dong', 1);
INSERT INTO SACH VALUES('Book2','S. Family T.6 L', 				to_date('29/10/2021','dd/mm/yyyy'),'Endou Tatsuya', 45000, 'Kim Dong', 1);
INSERT INTO SACH VALUES('Book3','Th. Lu?ng B.H', 				to_date('29/10/2021','dd/mm/yyyy'),'Agatha Christie', 120000, 'Tre', 1);
INSERT INTO SACH VALUES('Book4','Black Jack 3', 				to_date('25/10/2021','dd/mm/yyyy'),'Osamu Tezuka', 30000, 'Tre', 1);
INSERT INTO SACH VALUES('Book5','One Piece 90', 				to_date('11/10/2021','dd/mm/yyyy'),'Eiichiro Oda', 19500, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book6','Sans famille', 				to_date('11/10/2021','dd/mm/yyyy'),'Hector Malot', 60000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book7','En famille', 					to_date('11/10/2021','dd/mm/yyyy'),'Hector Malot', 60000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book8','The Fault In Our Stars', 		to_date('11/10/2021','dd/mm/yyyy'),'John Green', 30000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book9','Diary Of Wimpy Kid', 			to_date('11/10/2021','dd/mm/yyyy'),'Jeff Kinney', 140000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book10','A Song Of Ice And Fire 1', 	to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book11','A Song Of Ice And Fire 2', 	to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book12','A Song Of Ice And Fire 3', 	to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book13','A Song Of Ice And Fire 4', 	to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book14','A Song Of Ice And Fire 5', 	to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book15','A Song Of Ice And Fire 6', 	to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book16','The Godfather', 				to_date('11/10/2021','dd/mm/yyyy'),'Mario Puzo', 20500, 'Tre', 2);
INSERT INTO SACH VALUES('Book17','Sapiens: A Brief', 	        to_date('11/10/2021','dd/mm/yyyy'),'Yuval Noah Harari', 70000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book18','The Book Thief', 				to_date('11/10/2021','dd/mm/yyyy'),'Markus Zusak', 80000, 'Tre', 2);
INSERT INTO SACH VALUES('Book19','Excuse Me', 					to_date('11/10/2021','dd/mm/yyyy'),'Liana Finck', 70000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book20','Goblet of Fire',              to_date('11/10/2021','dd/mm/yyyy'),'J. K. Rowling', 95000, 'Tri Tue', 1);
select * from nhanvien

INSERT INTO CHINHANH VALUES ('CN01','Hoan Kiem, Ha Noi', '0939013914');
INSERT INTO CHINHANH VALUES ('CN02','Quan 10, TPHCM', '0907979816');

INSERT INTO NHANVIEN VALUES('NV01','Dang Vu Phuong Uyen','TP.HCM','0773915608',3750000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV02','Tran Nhat Linh','Gia Lai','0355428421',3750000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV05','Huynh Kim Phat','TP.HCM','0944651790',3750000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV07','Le Hoang My','Binh Phuoc','0969574972',4250000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV09','Le Huynh Duc','Binh Phuoc','0969574975',4250000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV11','Le Ba Nam','Tay Ninh','0969574977',4250000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV13','Nguyen Toan Sao','Binh Phuoc','0969574979',3750000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV15','Tran Ngoc Ngan','Tay Ninh','0969574989',3750000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV17','Dao Thi Kim Hieu','Nghe An','0969574991',3750000 ,'CN02');
INSERT INTO NHANVIEN VALUES('NV19','Tran Hao Nam','Nghe An','0969574943',4250000 ,'CN02');

INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book1',0, to_date('29/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book2',0, to_date('29/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book4',180, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book5',78, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book8',0, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book9',30, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book12',400, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book14',20, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book15',80, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book18',0, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book20',0, to_date('30/10/2021','dd/mm/yyyy'));

INSERT INTO KHOSACH_NVBH VALUES('CN02','Book1','Het Hang', 10);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book2','Het Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book4','Con Hang', 10);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book5','Con Hang', 15);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book8','Con Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book9','Con Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book12','Con Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book14','Con Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book15','Con Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book18','Het Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN02','Book20','Het Hang', 0);

--CREATE DATABASELINK
alter session set "_ORACLE_SCRIPT"=true;
CREATE DATABASE LINK GD_S1 CONNECT TO GDoc IDENTIFIED BY gdoc USING 'sach1';

select * from sach1.khosach_nvbh@GD_S1

--Querry 1: Tim sach duoc phan phoi den tat ca chi nhanh dang co tinh trang 'Het Hang'
SELECT MaSach, TenSach
FROM (
    (SELECT S1.MaSach, TenSach, TinhTrang
    FROM sach1.Sach@GD_S1 S1 JOIN sach1.KHOSACH_NVBH@GD_S1 BH1 ON S1.MaSach = BH1.MaSach
    WHERE TinhTrang = 'Het Hang')
    INTERSECT
    (SELECT S2.MaSach, TenSach, TinhTrang
    FROM sach2.Sach S2 JOIN sach2.KHOSACH_NVBH BH2 ON S2.MaSach = BH2.MaSach
    WHERE TinhTrang = 'Het Hang'));
    
--Querry 2: Tim sach co tinh trang 'Con Hang' va so luong < 100 tai tat ca chi nhanh
SELECT MaSach, TenSach
FROM (
    SELECT S1.MaSach as MaSach, TenSach, TinhTrang, SoLuong
    FROM (sach1.SACH@GD_S1 S1 JOIN sach1.KHOSACH_NVBH@GD_S1 BH1 ON S1.MaSach = BH1.MaSach )
        JOIN sach1.KHOSACH_QLKHO@GD_S1 QL1 ON S1.MaSach = QL1.MaSach
    UNION
    SELECT S2.MaSach as MaSach, TenSach, TinhTrang, SoLuong
    FROM (sach2.SACH S2 JOIN sach2.KHOSACH_NVBH BH2 ON S2.MaSach = BH2.MaSach )
        JOIN sach2.KHOSACH_QLKHO QL2 ON S2.MaSach = QL2.MaSach
    )
WHERE TinhTrang = 'Con Hang' and SoLuong < 100;

--Querry 3: Tim sach duoc phan phoi tai chi nhanh 1 nhung khong duoc phan phoi tai chi nhanh 2
SELECT MaSach
FROM sach1.KHOSACH_QLKHO@GD_S1
MINUS
SELECT MaSach
FROM sach2.KHOSACH_QLKHO;

--Querry 4: Tra ra thông tin ma sach, ten sach, tong so cho nhanh phan phoi cua nhung cuon sach co lan in khac 1
SELECT MaSach, TenSach, COUNT(DISTINCT machinhanh) AS TongSoChiNhanh
FROM (
    SELECT S1.MaSach as MaSach, TenSach, MaChiNhanh, LanIn
    FROM (sach1.SACH@GD_S1 S1 JOIN sach1.KHOSACH_NVBH@GD_S1 BH1 ON S1.MaSach = BH1.MaSach )
    UNION
    SELECT S2.MaSach as MaSach, TenSach, MaChiNhanh, LanIn
    FROM (sach2.SACH S2 JOIN sach2.KHOSACH_NVBH BH2 ON S2.MaSach = BH2.MaSach )
    )
WHERE LanIn <> 1
GROUP BY MaSach, TenSach;

--Querrt 5: Xuat tên sách có tác gia là George Martin hoac nha xuat ban là Trí Tue?
SELECT S2.TenSach, S2.TacGia, S2.NhaXuatBan
FROM sach2.SACH S2
WHERE S2.TacGia='George Martin' OR S2.NhaXuatBan='Tri Tue'
UNION
SELECT S1.TenSach, S1.TacGia, S1.NhaXuatBan
FROM sach1.SACH@GD_S1 S1
WHERE S1.TacGia='George Martin' OR S1.NhaXuatBan='Tri Tue';

--Querry 6: Xuat Ten, SDT, MaChiNhanh cua nhung nhan vien co muc luong > 4000000 o tat ca chi nhanh
SELECT TenNV, SoDT, MaChiNhanh
FROM sach2.NhanVien 
WHERE Luong > 4000000
UNION
SELECT TenNV, SoDT, MaChiNhanh
FROM sach1.NhanVien@GD_S1 
WHERE Luong > 4000000;

--Querry 7: Xuat thong tin sach va so luong nhung cuon sach co khuyen mai > 0
SELECT MaSach, TenSach, SoLuong
FROM (
    SELECT S1.MaSach as MaSach, TenSach, SoLuong, KhuyenMai
    FROM (sach1.SACH@GD_S1 S1 JOIN sach1.KHOSACH_NVBH@GD_S1 BH1 ON S1.MaSach = BH1.MaSach )
        JOIN sach1.KHOSACH_QLKHO@GD_S1 QL1 ON S1.MaSach = QL1.MaSach
    UNION
    SELECT S2.MaSach as MaSach, TenSach, SoLuong, KhuyenMai
    FROM (sach2.SACH S2 JOIN sach2.KHOSACH_NVBH BH2 ON S2.MaSach = BH2.MaSach )
        JOIN sach2.KHOSACH_QLKHO QL2 ON S2.MaSach = QL2.MaSach
    )
WHERE KhuyenMai > 0;

--Querry 8: Tong so tien phai tra cho nhan vien cua moi chi nhanh
SELECT MaChiNhanh, SUM(S2.Luong) AS TongLuongNhanVien
FROM sach2.NhanVien S2
GROUP BY MaChiNhanh
UNION
SELECT MaChiNhanh, SUM(S1.Luong) AS TongLuongNhanVien
FROM sach1.NhanVien@GD_S1 S1
GROUP BY MaChiNhanh;


--Querry 9: Tong so luong sach con trong kho cua moi chi nhanh
SELECT MaChiNhanh, SUM(S2.SoLuong) AS TongSachKho
FROM sach2.KHOSACH_QLKHO S2
GROUP BY MaChiNhanh
UNION
SELECT MaChiNhanh, SUM(S1.SoLuong) AS TongSachKho
FROM sach1.KHOSACH_QLKHO@GD_S1 S1
GROUP BY MaChiNhanh;

--Querry 10: In ra thong tin tat ca nhan vien co dia chi o TP.HCM
SELECT MaNV, TenNV, DiaChi, SoDT, MaChiNhanh
FROM sach2.NhanVien N2
WHERE DiaChi = 'TP.HCM'
UNION
SELECT MaNV, TenNV, DiaChi, SoDT, MaChiNhanh
FROM sach1.NhanVien@GD_S1 N1
WHERE DiaChi = 'TP.HCM';

--Querry : Tim sach co tinh trang het hang o tat ca chi nhanh
SELECT MaSach, TenSach 
FROM SACH
WHERE NOT EXISTS (
        SELECT * 
        FROM CHINHANH 
        WHERE NOT EXISTS(
                SELECT * 
                FROM   KHOSACH_NVBH
                WHERE KHOSACH_NVBH.MaChiNhanh=CHINHANH.MaChiNhanh 
                AND KHOSACH_NVBH.MaSach = SACH.MaSach 
                AND  KHOSACH_NVBH.TinhTrang='Con Hang'));


select * from nhanvien
select SUM(Luong) from NhanVien

--Y/C 2--

--Function: Tong tien tra cho Nhan Vien cua chi nhanh
CREATE OR REPLACE FUNCTION TongLuong(v_MaCN in varchar2)
    RETURN NUMBER
IS Tong number := 0;
BEGIN
    SELECT SUM(Luong) into Tong 
    FROM 
    (SELECT N1.MaNV, N1.Luong, N1.MaChiNhanh as MaCN
    FROM sach1.NhanVien@GD_S1 N1
    UNION
    SELECT N2.MaNV, N2.Luong, N2.MaChiNhanh as MaCN
    FROM sach2.NhanVien N2
    ) WHERE MaCN = v_MaCN;
    RETURN Tong;
END;

SELECT TongLuong('CN02') FROM Dual; /*Dual la table tamj*/

--Trigger 1: Cap nhat so luong sach
CREATE OR REPLACE TRIGGER Update_Book
 AFTER INSERT ON CAPNHATSACH
 FOR EACH ROW
 BEGIN
    IF :NEW.LoaiCN = 'NhapSach' THEN
            UPDATE KHOSACH_QLKHO
            SET KHOSACH_QLKHO.SoLuong=KHOSACH_QLKHO.SoLuong + :NEW.SoLuong
            WHERE KHOSACH_QLKHO.MaSach=:NEW.MaSach;
    ELSE
            UPDATE KHOSACH_QLKHO
            SET KHOSACH_QLKHO.SoLuong=KHOSACH_QLKHO.SoLuong - :NEW.SoLuong
            WHERE KHOSACH_QLKHO.MaSach=:NEW.MaSach;
    END IF;
END;

--Trigger 2: Cap nhat tinh trang sach trong kho
CREATE OR REPLACE TRIGGER Update_Status_Book
 AFTER UPDATE ON KHOSACH_QLKHO
 FOR EACH ROW
 BEGIN
    IF :NEW.SoLuong = 0 THEN
            UPDATE KHOSACH_NVBH
            SET KHOSACH_NVBH.TinhTrang = 'Het Hang'
            WHERE KHOSACH_NVBH.MaSach=:NEW.MaSach;
    ELSE
            UPDATE KHOSACH_NVBH
            SET KHOSACH_NVBH.TinhTrang = 'Con Hang'
            WHERE KHOSACH_NVBH.MaSach=:NEW.MaSach;
    END IF;
END;

select MaChiNhanh, MaSach, SoLuong, TinhTrang
(select * from KHOSACH_QLKHO inner join KHOSACH_NVBH on KHOSACH_QLKHO.MaSach = KHOSACH_NVBH.MaSach
Union 
select * from sach1.KHOSACH_QLKHO@GD_S1 --inner join sach1.KHOSACH_NVBH@GD_S1 on sach1.KHOSACH_QLKHO@GD_S1.MaSach = sach1.KHOSACH_NVBH@GD_S1.MaSach)

select * from CAPNHATSACH
update KHOSACH_QLKHO set SoLuong = 180 where masach = 'Book4';

--Procedure: Nhap them sach cu
CREATE OR REPLACE PROCEDURE NhapSach(v_MaSach in varchar2,v_SoLuong in Number)
AS
    dem int;
BEGIN
    SELECT COUNT(MaSach) INTO dem FROM KHOSACH_QLKHO WHERE MaSach = v_MaSach;
    IF(dem>0) THEN
    INSERT INTO CAPNHATSACH VALUES('CN02',v_MaSach,v_SoLuong, 'NhapSach');
        ELSE
            SELECT COUNT(MaSach) INTO dem FROM sach1.KHOSACH_QLKHO@GD_S1 WHERE MaSach = v_MaSach;
            IF(dem>0) THEN
            INSERT INTO sach1.CAPNHATSACH@GD_S1 VALUES('CN02',v_MaSach,v_SoLuong, 'NhapSach');
            END IF;
    END IF;
COMMIT;
END;

-- Procedure: Xoa so luong sach da ban
CREATE OR REPLACE PROCEDURE BanSach(v_MaSach in varchar2,v_SoLuong in Number)
AS
    dem int;
BEGIN
    SELECT COUNT(MaSach) INTO dem FROM KHOSACH_QLKHO WHERE MaSach = v_MaSach;
    IF(dem>0) THEN
    INSERT INTO CAPNHATSACH VALUES('CN02',v_MaSach,v_SoLuong, 'BanSach');
        ELSE
            SELECT COUNT(MaSach) INTO dem FROM sach1.KHOSACH_QLKHO@GD_S1 WHERE MaSach = v_MaSach;
            IF(dem>0) THEN
            INSERT INTO sach1.CAPNHATSACH@GD_S1 VALUES('CN02',v_MaSach,v_SoLuong, 'BanSach');
            END IF;
    END IF;
COMMIT;
END;

execute NhapSach('Book6', 19)
execute BanSach('Book14', 20)


--Y/c 3: ISOLATION LEVEL
alter session set "_ORACLE_SCRIPT"=true;

--Cài ??t câu l?nh dùng ?? xem m?c cô l?p
declare
trans_id Varchar2(100);
begin
trans_id := dbms_transaction.local_transaction_id( TRUE );
end;

--Xem m?c cô l?p hi?n t?i trong Oracle
SELECT s.sid, s.serial#,
CASE BITAND(t.flag, POWER(2, 28))
WHEN 0 THEN 'READ COMMITTED'
ELSE 'SERIALIZABLE'
END AS isolation_level
FROM v$transaction t
JOIN v$session s ON t.addr = s.taddr AND s.sid = sys_context('USERENV', 'SID');

--Set m?c cô l?p ? SESSION
ALTER SESSION SET ISOLATION_LEVEL= SERIALIZABLE;
ALTER SESSION SET ISOLATION_LEVEL= READ COMMITTED;

--Set m?c cô l?p ? TRANSACTION
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

commit;

select * from sach2.NhanVien;

--Unrepeatable
--Read committed
update sach2.NhanVien
set Luong = 2000000
where MaNV = 'NV02';
commit;

--serial
update sach2.NhanVien
set Luong = 4000000
where MaNV = 'NV02';
commit;

--Phantom
--Read committed
insert into sach2.NhanVien values ('NV21', 'Ho Long', 'Da Nang', 0125478961, 4000000, 'CN02');
commit;

--Serial
insert into sach2.NhanVien values ('NV22', 'Long Ca', 'Binh Dinh', 0312457896, 5000000, 'CN02');
commit;


--lost updated
select * from sach2.NhanVien;
select * from sach1.NhanVien@GD_S1;

update sach1.NhanVien@GD_S1
set Luong = Luong - 1000000
where MaNV = 'NV03';
commit;

--dealock
update sach1.NhanVien@GD_S1
set Luong = 2000000
where MaNV = 'NV04';

update sach1.NhanVien@GD_S1
set Luong = 4000000
where MaNV = 'NV03';

commit;

--Y/c 4-- Demo Toi uu hoa cau truy van
--Cau truy van ban dau 
SELECT /*+ GATHER_PLAN_STATISTICS */  SACH.MaSach, SACH.TenSach, KHOSACH_QLKHO.SoLuong, KHOSACH_NVBH.TinhTrang, CHINHANH.MaChiNhanh
FROM CHINHANH , SACH , KHOSACH_QLKHO , KHOSACH_NVBH 
WHERE SACH.MaSach = KHOSACH_NVBH.MaSach
AND SACH.MaSach = KHOSACH_QLKHO.MaSach
AND KHOSACH_QLKHO.MaSach = KHOSACH_NVBH.MaSach
AND CHINHANH.MaChiNhanh = KHOSACH_QLKHO.MaChiNhanh
AND KHOSACH_NVBH.TinhTrang = 'Con Hang'
AND KHOSACH_QLKHO.SoLuong > 50
AND CHINHANH.MaChiNhanh <> 'CN01'
AND SACH.NhaXuatBan = 'Kim Dong';

SELECT * FROM TABLE(DBMS_XPLAN.display_cursor(format=>'ALLSTATS LAST'));
/*+ GATHER_PLAN_STATISTICS */ 
   
SELECT /*+ GATHER_PLAN_STATISTICS */ QLS.MaSach, TenSach, SoLuong, TinhTrang, MaChiNhanh FROM (
    (SELECT QL.MaSach, TenSach, SoLuong FROM (
    ((SELECT MaSach, SoLuong
    FROM KHOSACH_QLKHO
    WHERE KHOSACH_QLKHO.SoLuong > 50) QL
    JOIN
    (SELECT MaSach, TenSach
    FROM SACH
    WHERE SACH.NhaXuatBan = 'Kim Dong') SA
    ON QL.MaSach = SA.MaSach))) QLS
        JOIN
    (SELECT BH.MaSach, BH.TinhTrang, BH.MaChiNhanh FROM (
    ((SELECT MaSach, TinhTrang, MaChiNhanh
    FROM KHOSACH_NVBH
    WHERE KHOSACH_NVBH.TinhTrang = 'Con Hang') BH
    JOIN
    (SELECT MaChiNhanh
    FROM CHINHANH
    WHERE CHINHANH.MaChiNhanh <> 'CN01') CN
    ON BH.MaChiNhanh = CN.MaChiNhanh))) BHCN
        ON QLS.MaSach = BHCN.MaSach)
--575K --408K        
    