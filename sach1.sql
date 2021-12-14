-------------------- CREATE TABLE ---------------------------------
--Yeu cau 1---
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
)


CREATE TABLE CHINHANH
(
    MaChiNhanh varchar2(5) NOT NULL,
    TenChiNhanh varchar2(50) NOT NULL,
    SoDT varchar2(12) NOT NULL,
    CONSTRAINT PK_CN PRIMARY KEY(MaChiNhanh)
)

CREATE TABLE KHOSACH_QLKHO
(
    MaChiNhanh varchar2(5) NOT NULL,
    MaSach varchar2(10) NOT NULL,
    SoLuong number NOT NULL,
    NgayCapNhat date NOT NULL,
    CONSTRAINT PK_KSQLK PRIMARY KEY(MaChiNhanh,MaSach)
)

CREATE TABLE KHOSACH_NVBH
(
    MaChiNhanh varchar2(5) NOT NULL,
    MaSach varchar2(10) NOT NULL,
    TinhTrang varchar2(20) NOT NULL,
    KhuyenMai number NOT NULL,
    CONSTRAINT PK_KSNVBH PRIMARY KEY(MaChiNhanh,MaSach)
)


CREATE TABLE NHANVIEN
(
    MaNV varchar2(5) NOT NULL,
    TenNV varchar2(50) NOT NULL,
    DiaChi varchar2(20) NOT NULL,
    SoDT varchar2(12) NOT NULL,
    Luong number NOT NULL,
    MaChiNhanh varchar2(5) NOT NULL,
    CONSTRAINT PK_NV PRIMARY KEY(MaNV)
)

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


----------------------------- INSERT TABLE ------------------------
INSERT INTO SACH VALUES('Book1','SpyxFamily T.6',to_date('29/10/2021','dd/mm/yyyy'),'Endou Tatsuya', 25000, 'Kim Dong', 1);
INSERT INTO SACH VALUES('Book2','S. Family T.6 L',to_date('29/10/2021','dd/mm/yyyy'),'Endou Tatsuya', 45000, 'Kim Dong', 1);
INSERT INTO SACH VALUES('Book3','Th. Lu?ng B.H', to_date('29/10/2021','dd/mm/yyyy'),'Agatha Christie', 120000, 'Tre', 1);
INSERT INTO SACH VALUES('Book4','Black Jack 3',  to_date('25/10/2021','dd/mm/yyyy'),'Osamu Tezuka', 30000, 'Tre', 1);
INSERT INTO SACH VALUES('Book5','One Piece 90', 				to_date('11/10/2021','dd/mm/yyyy'),'Eiichiro Oda', 19500, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book6','Sans famille', 				to_date('11/10/2021','dd/mm/yyyy'),'Hector Malot', 60000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book7','En famille', 					to_date('11/10/2021','dd/mm/yyyy'),'Hector Malot', 60000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book8','The Fault In Our Stars', 			to_date('11/10/2021','dd/mm/yyyy'),'John Green', 30000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book9','Diary Of Wimpy Kid', 				to_date('11/10/2021','dd/mm/yyyy'),'Jeff Kinney', 140000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book10','A Song Of Ice And Fire 1', 			to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book11','A Song Of Ice And Fire 2', 			to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book12','A Song Of Ice And Fire 3', 			to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book13','A Song Of Ice And Fire 4', 			to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book14','A Song Of Ice And Fire 5', 			to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book15','A Song Of Ice And Fire 6', 			to_date('11/10/2021','dd/mm/yyyy'),'George Martin', 100000, 'Thoi Dai', 3);
INSERT INTO SACH VALUES('Book16','The Godfather', 				to_date('11/10/2021','dd/mm/yyyy'),'Mario Puzo', 20500, 'Tre', 2);
INSERT INTO SACH VALUES('Book17','Sapiens:A Brief', to_date('11/10/2021','dd/mm/yyyy'),'Yuval Noah Harari', 70000, 'Kim Dong', 2);
INSERT INTO SACH VALUES('Book18','The Book Thief', 				to_date('11/10/2021','dd/mm/yyyy'),'Markus Zusak', 80000, 'Tre', 2);
INSERT INTO SACH VALUES('Book19','Excuse Me', 					to_date('11/10/2021','dd/mm/yyyy'),'Liana Finck', 70000, 'Kim Dong', 2);

INSERT INTO SACH VALUES('Book20','Goblet of Fire',  to_date('11/10/2021','dd/mm/yyyy'),'J. K. Rowling', 95000, 'Tri Tue', 1);


Select * from SACH@GD_S2;

INSERT INTO CHINHANH VALUES ('CN01','Hoan Kiem, Ha Noi', '0939013914');
    INSERT INTO CHINHANH VALUES ('CN02','Quan 10, TPHCM', '0907979816');

Select * from sach1.CHINHANH;

--INSERT INTO sach1.NHANVIEN VALUES('NV01','Dang Vu Phuong Uyen','TP.HCM','0773915608',3750000 ,'CN02');--
--INSERT INTO sach1.NHANVIEN VALUES('NV02','Tran Nhat Linh','Gia Lai','0355428421',3750000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV03','Tran Quoc Thanh','Binh Dinh','0379868677',4250000 ,'CN01');
INSERT INTO sach1.NHANVIEN VALUES('NV04','Nguyen Hoang Quoc','Dong Nai','0388240570',4250000 ,'CN01');
--INSERT INTO Cn1.NHANVIEN VALUES('NV05','Huynh Kim Phat','TP.HCM','0944651790',3750000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV06','Phan Vy Hao','Tay Ninh','0969574973',3750000 ,'CN01');
--INSERT INTO sach1.NHANVIEN VALUES('NV07','Le Hoang My','Binh Phuoc','0969574972',4250000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV08','Pham Hoang My','Tay Ninh','0969574974',4250000 ,'CN01');
--INSERT INTO Cn1.NHANVIEN VALUES('NV09','Le Huynh Duc','Binh Phuoc','0969574975',4250000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV10','Dang Anh Khoa','Nghe An','0969574976',4250000 ,'CN01');
--INSERT INTO sach1.NHANVIEN VALUES('NV11','Le Ba Nam','Tay Ninh','0969574977',4250000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV12','Nguyen Thi Thu Hien','Tay Ninh','0969574978',4250000 ,'CN01');
---INSERT INTO Cn1.NHANVIEN VALUES('NV13','Nguyen Toan Sao','Binh Phuoc','0969574979',3750000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV14','Le My Trinh','Nghe An','0969574980',4250000 ,'CN01');
--INSERT INTO Cn1.NHANVIEN VALUES('NV15','Tran Ngoc Ngan','Tay Ninh','0969574989',3750000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV16','Bui Phuong Uyen','Binh Phuoc','0969574999',4250000 ,'CN01');
--INSERT INTO Cn1.NHANVIEN VALUES('NV17','Dao Thi Kim Hieu','Nghe An','0969574991',3750000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV18','Nguyen Tan Dung','Tay Ninh','0969574954',4250000 ,'CN01');
--INSERT INTO Cn1.NHANVIEN VALUES('NV19','Tran Hao Nam','Nghe An','0969574943',4250000 ,'CN02');--
INSERT INTO sach1.NHANVIEN VALUES('NV20','Phan Thi Kim Cuc','Binh Phuoc','0969574921',3750000 ,'CN01');
Select * from sach1.NHANVIEN;


INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book1',0, to_date('29/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book1',0, to_date('29/10/2021','dd/mm/yyyy'));--
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book2',0, to_date('29/10/2021','dd/mm/yyyy'));--
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book3',510, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book4',180, to_date('30/10/2021','dd/mm/yyyy'));--
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book5',78, to_date('30/10/2021','dd/mm/yyyy'));--
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book5',56, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book6',41, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book7',12, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book8',0, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book9',30, to_date('30/10/2021','dd/mm/yyyy'));--
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book10',70, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book11',70, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book12',400, to_date('30/10/2021','dd/mm/yyyy'));--
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book13',70, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book14',20, to_date('30/10/2021','dd/mm/yyyy'));--
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book15',70, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book15',80, to_date('30/10/2021','dd/mm/yyyy'));--
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book16',0, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book17',0, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book18',0, to_date('30/10/2021','dd/mm/yyyy'));--
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book19',0, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KHOSACH_QLKHO VALUES('CN01','Book20',50, to_date('30/10/2021','dd/mm/yyyy'));
--INSERT INTO KHOSACH_QLKHO VALUES('CN02','Book20',0, to_date('30/10/2021','dd/mm/yyyy'));--
Select * from Cn1.KHOSACH_QLKHO;

INSERT INTO KHOSACH_NVBH VALUES('CN01','Book1','Het Hang', 0);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book1','Het Hang', 10);--
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book2','Het Hang', 0);--
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book3','Con Hang', 20);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book4','Con Hang', 10);--
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book5','Con Hang', 15);--
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book5','Con Hang', 20);
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book6','Con Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book7','Con Hang', 0);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book8','Con Hang', 0);--
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book9','Con Hang', 0);--
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book10','Con Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book11','Con Hang', 0);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book12','Con Hang', 0);--
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book13','Con Hang', 0);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book14','Con Hang', 0);--
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book15','Con Hang', 0);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book15','Con Hang', 0);--
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book16','Het Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book17','Het Hang', 0);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book18','Het Hang', 0);--
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book19','Het Hang', 0);
INSERT INTO KHOSACH_NVBH VALUES('CN01','Book20','Con Hang', 0);
--INSERT INTO KHOSACH_NVBH VALUES('CN02','Book20','Het Hang', 0);--
Select * from sach1.NHANVIEN;
Select * from sach1.KHOSACH_NVBH;

CREATE TABLE CAPNHATSACH
(
MaChiNhanh varchar2(5),
MaSach varchar2(10),
SoLuong number,
LoaiCN varchar2(10),
CONSTRAINT PK_CNSACH PRIMARY KEY(MaChiNhanh, MaSach)
);

ALTER TABLE CAPNHATSACH
ADD CONSTRAINT FK_CNSACH_SACH FOREIGN KEY (MaSach) REFERENCES SACH(MaSach);
ALTER TABLE CAPNHATSACH
ADD CONSTRAINT FK_CNSACH_CHINHANH FOREIGN KEY (MaChiNhanh) REFERENCES CHINHANH(MaChiNhanh);
 
SELECT MaSach
FROM sach1.KHOSACH_QLKHO@GD_S1
MINUS
SELECT MaSach
FROM sach2.KHOSACH_QLKHO

--- 10 cau query---
--Querry 4: Tra ra thông tin ma sach, ten sach, tong so cho nhanh phan phoi cua nhung cuon sach co lan in khac 1
SELECT MaSach, TenSach, COUNT(DISTINCT machinhanh) AS TongSoChiNhanh
FROM (
    SELECT S1.MaSach as MaSach, TenSach, MaChiNhanh, LanIn
    FROM (sach1.SACH S1 JOIN sach1.KHOSACH_NVBH BH1 ON S1.MaSach = BH1.MaSach )
    UNION
    SELECT S2.MaSach as MaSach, TenSach, MaChiNhanh, LanIn
    FROM (sach2.SACH@GD_S2 S2 JOIN sach2.KHOSACH_NVBH@GD_S2 BH2 ON S2.MaSach = BH2.MaSach )
    )
WHERE LanIn <> 1
GROUP BY MaSach, TenSach;

--Querrt 5: Xuat tên sách có tác gia là George Martin hoac nha xuat ban là Trí Tue?
SELECT S2.TenSach, S2.TacGia, S2.NhaXuatBan
FROM sach2.SACH@GD_S2 S2
WHERE S2.TacGia='George Martin' OR S2.NhaXuatBan='TriTue'
UNION
SELECT S1.TenSach, S1.TacGia, S1.NhaXuatBan
FROM sach1.SACH S1
WHERE S1.TacGia='George Martin' OR S1.NhaXuatBan='TriTue';

--Querry 6: Xuat Ten, SDT cua nhung nhan vien co muc luong > 4000000 o tat ca chi nhanh
SELECT N2.TenNV, N2.SoDT
FROM sach2.NhanVien@GD_S2 N2
WHERE S2.Luong > 4000000
UNION
SELECT N1.TenNV, N2.SoDT
FROM sach1.NhanVien N1
WHERE S1.Luong > 4000000;


-- Yeu Cau 3 ---


--Cài dat câu lenh dùng ?? xem muc cô lap
declare
trans_id Varchar2(100);
begin
trans_id := dbms_transaction.local_transaction_id( TRUE );
end;

--Xem muc cô lap hien tai trong Oracle
SELECT s.sid, s.serial#,
CASE BITAND(t.flag, POWER(2, 28))
WHEN 0 THEN 'READ COMMITTED'
ELSE 'SERIALIZABLE'
END AS isolation_level
FROM v$transaction t
JOIN v$session s ON t.addr = s.taddr AND s.sid = sys_context('USERENV', 'SID');

--Set muc cô lap o SESSION
ALTER SESSION SET ISOLATION_LEVEL= SERIALIZABLE;
ALTER SESSION SET ISOLATION_LEVEL= READ COMMITTED;

--Set muc cô lap o TRANSACTION
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

commit

SELECT * FROM sach2.NHANVIEN@GD_S2

--lost update

SELECT * FROM sach1.NHANVIEN

Update sach1.NHANVIEN
set LUONG = LUONG +2000000
WHERE MANV = 'NV03'
commit;

----deadlook
SELECT * FROM sach1.NHANVIEN

Update sach1.NHANVIEN
set LUONG =  9000000
WHERE MANV = 'NV03';


Update sach1.NHANVIEN
set LUONG = 7000000
WHERE MANV = 'NV04'
commit;


- Yeu Cau 2---

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

select * from KHOSACH_QLKHO inner join KHOSACH_NVBH on KHOSACH_QLKHO.MaSach = KHOSACH_NVBH.MaSach
update KHOSACH_QLKHO set SoLuong = 180 where masach = 'Book4';


select * from SACH2.Nhanvien@GD_S2;
--Procedure: Nhap them sach cu
CREATE OR REPLACE PROCEDURE NhapSach(v_MaSach in varchar2,v_SoLuong in Number)
AS
    dem int;
BEGIN
    SELECT COUNT(MaSach) INTO dem FROM KHOSACH_QLKHO WHERE MaSach = v_MaSach;
    IF(dem>0) THEN
    INSERT INTO CAPNHATSACH VALUES('CN02',v_MaSach,v_SoLuong, 'NhapSach');
        ELSE
            SELECT COUNT(MaSach) INTO dem FROM sach2.KHOSACH_QLKHO@GD_S2 WHERE MaSach = v_MaSach;
            IF(dem>0) THEN
            INSERT INTO sach2.CAPNHATSACH@GD_S2 VALUES('CN02',v_MaSach,v_SoLuong, 'NhapSach');
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
            SELECT COUNT(MaSach) INTO dem FROM sach2.KHOSACH_QLKHO@GD_S2 WHERE MaSach = v_MaSach;
            IF(dem>0) THEN
            INSERT INTO sach2.CAPNHATSACH@GD_S2 VALUES('CN02',v_MaSach,v_SoLuong, 'BanSach');
            END IF;
    END IF;
COMMIT;
END;


 
SELECT /*+ GATHER_PLAN_STATISTICS */ SACH.MaSach, SACH.TenSach, KHOSACH_QLKHO.SoLuong, KHOSACH_NVBH.TinhTrang, CHINHANH.MaChiNhanh
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

[9:48 PM] Van Qu?c Tr?nh
/*+ GATHER_PLAN_STATISTICS */


 

select plan_table_ouput from table (dbms_xplan.display());
[10:24 PM] Nguy?n Minh Nh?t
select /*+ gather_plan_statistics */ avg(x*2) from



 