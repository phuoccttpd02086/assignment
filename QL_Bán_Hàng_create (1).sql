-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-02-28 03:28:50.108

-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    MaCTHD char(10)  NOT NULL,
    SoLuongMua char(10)  NOT NULL,
    DonGiaBan money  NOT NULL,
    HoaDon_MaHD char(10)  NOT NULL,
    SanPham_MaSP char(10)  NOT NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY  (MaCTHD)
);

-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD char(10)  NOT NULL,
    NgayLap datetime  NOT NULL,
    KhachHang_MaKH char(10)  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY  (MaHD)
);

-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH char(10)  NOT NULL,
    TenKH nvarchar(200)  NOT NULL,
    DiaChi nvarchar(200)  NOT NULL,
    SoDT char(15)  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY  (MaKH)
);

-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    MaLSP char(10)  NOT NULL,
    TenLSP nvarchar(200)  NOT NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY  (MaLSP)
);

-- Table: SanPham
CREATE TABLE SanPham (
    MaSP char(10)  NOT NULL,
    TenSP nvarchar(250)  NOT NULL,
    SoLuong char(10)  NOT NULL,
    MoTa nvarchar(250)  NOT NULL,
    LoaiSanPham_MaLSP char(10)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (MaSP)
);

-- foreign keys
-- Reference: ChiTietHoaDon_HoaDon (table: ChiTietHoaDon)
ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_HoaDon
    FOREIGN KEY (HoaDon_MaHD)
    REFERENCES HoaDon (MaHD);

-- Reference: ChiTietHoaDon_SanPham (table: ChiTietHoaDon)
ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_SanPham
    FOREIGN KEY (SanPham_MaSP)
    REFERENCES SanPham (MaSP);

-- Reference: HoaDon_KhachHang (table: HoaDon)
ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_KhachHang
    FOREIGN KEY (KhachHang_MaKH)
    REFERENCES KhachHang (MaKH);

-- Reference: SanPham_LoaiSanPham (table: SanPham)
ALTER TABLE SanPham ADD CONSTRAINT SanPham_LoaiSanPham
    FOREIGN KEY (LoaiSanPham_MaLSP)
    REFERENCES LoaiSanPham (MaLSP);
	
	
INSERT INTO KhachHang VALUES('KH1',N'Châu Trần Thiên A', N'Đà Nẵng','0123456789');
INSERT INTO KhachHang VALUES('KH2',N'Nguyễn Thị B', N'Hà Nội','0123456756');
INSERT INTO KhachHang VALUES('KH3',N'Trần Văn C', N'Huế','0123456722');
INSERT INTO KhachHang VALUES('KH4',N'Hoa Thị D', N'Nha Trang','0123456715');
INSERT INTO KhachHang VALUES('KH5',N'Văn Thị E', N'Hồ Chí Minh','0123456733');

INSERT INTO LoaiSanPham VALUES('LSP1',N'LapTop');
INSERT INTO LoaiSanPham VALUES('LSP2',N'TV');
INSERT INTO LoaiSanPham VALUES('LSP3',N'Phụ Kiện Điện Thoại');
INSERT INTO LoaiSanPham VALUES('LSP4',N'Máy Điều Hòa');
INSERT INTO LoaiSanPham VALUES('LSP5',N'Xe Cộ');

INSERT INTO SanPham VALUES('SP1',N'Điều hòa LG','1','Like new','LSP4');
INSERT INTO SanPham VALUES('SP2','DELL edulation','2',N'Mới','LSP1');
INSERT INTO SanPham VALUES('SP3',N'Cáp Sạc Iphone','1',N'Mới','LSP3');
INSERT INTO SanPham VALUES('SP4','Ti Vi SamSung','5',N'Mới','LSP2');
INSERT INTO SanPham VALUES('SP5','Kawasaki Z1000','2',N'Đã Sử Dụng','LSP5');

INSERT INTO HoaDon VALUES('HD1',"01/01/2017",'KH1');
INSERT INTO HoaDon VALUES('HD2',"01/02/2017",'KH2');
INSERT INTO HoaDon VALUES('HD3',"02/01/2017",'KH3');
INSERT INTO HoaDon VALUES('HD4',"04/02/2017",'KH4');
INSERT INTO HoaDon VALUES('HD5',"03/05/2017",'KH5');

INSERT INTO ChiTietHoaDon VALUES('CTHD1','3','10000','SP1','HD1');
INSERT INTO ChiTietHoaDon VALUES('CTHD2','2','20000','SP2','HD2');
INSERT INTO ChiTietHoaDon VALUES('CTHD3','4','30000','SP3','HD3');
INSERT INTO ChiTietHoaDon VALUES('CTHD4','1','40000','SP4','HD4');
INSERT INTO ChiTietHoaDon VALUES('CTHD5','5','50000','SP5','HD5');




-- End of file.

