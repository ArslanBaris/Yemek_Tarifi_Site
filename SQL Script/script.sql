USE [master]
GO
/****** Object:  Database [Dbo_yemektarifi]    Script Date: 16.09.2021 21:22:48 ******/
CREATE DATABASE [Dbo_yemektarifi]
 CONTAINMENT = NONE
 GO
ALTER DATABASE [Dbo_yemektarifi] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dbo_yemektarifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dbo_yemektarifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dbo_yemektarifi] SET  MULTI_USER 
GO
ALTER DATABASE [Dbo_yemektarifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dbo_yemektarifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dbo_yemektarifi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Dbo_yemektarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiId] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL,
	[GününYemegiResim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KategoriId] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[MesajId] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajSahip] [varchar](80) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajBaslik] [varchar](30) NULL,
	[MesajIcerik] [varchar](450) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[TarifId] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](50) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TarifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[YemekId] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [float] NULL,
	[KategoriId] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Yemekler] PRIMARY KEY CLUSTERED 
(
	[YemekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[YoneticiId] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 16.09.2021 21:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[YorumId] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[YorumIcerik] [varchar](500) NULL,
	[YemekId] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YorumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] ON 

INSERT [dbo].[Tbl_GununYemegi] ([GununYemegiId], [GununYemegiAd], [GununYemegiMalzeme], [GununYemegiTarif], [GununYemegiPuan], [GununYemegiTarih], [GününYemegiResim]) VALUES (1, N'Mücver Kızartma', N'3 adet orta boy kabak, 3 adet yumurta, 3 kahve fincanı Un, 4-5 sap taze soğan, 1 küçük parça beyaz peynir (sert peynir 70 gr civarı), 1 küçük demet dereotu, Tuz, karabiber, Kızartma için sıvı yağ
', N'Kabakların uç kısımlarını kesip, kabuklarını soyun ve rendeleyin. Rendelediğiniz kabakların avucunuzun içinde sıkarak suyunu alın. Kabakların üzerine beyaz peniri rendeledikten sonra taze soğanı ve dereotunu da doğrayarak kaba alın. 3 yumurtayı karışımın içine kırdıktan sonra tuzunu karabiberini ekleyip karıştırın. Tüm malzemeler karıştıktan sonra unu bir kaç defada ekleyerek karıştırmaya devam edin. Mücver karışımını 5 dk kenarda dinlendirdikten sonra tavada kızdırdığınız bol yağa kaşık yardımıyla koyun ve önlü arkalı pişirin. Kızaran mücverlerinizi fazla yağını çekmesi için havlu kağıt serili tabağa alın. Ilık ya da soğuk servis yapın.
', 7, CAST(0xAD7A0214 AS SmallDateTime), NULL)
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] OFF
INSERT [dbo].[Tbl_Hakkimizda] ([Metin]) VALUES (N'Nefis Yemek Tarifleri 2007 yılından beri özgün içeriği ve detaylı tarif anlatımlarıyla yayınına devam etmektedir.

İsteyen herkesin kendi yaptığı ve fotoğrafladığı tarifi gönderebileceği bir platform olan Nefis Yemek Tarifleri on binlerce yazarın katkı sağladığı dünyanın en çok takip edilen Türkçe yemek tarifi paylaşım platformudur.

Şu anda nefisyemektarifleri.com internet sitesi, Android, iOS, iPad ve AndroidTV uygulamalarıyla olabilecek her yerden ulaşabileceğiniz şeklide 700bin’den fazla tarifi kullanıcılarına ulaştırmaktadır.

Nefis Yemek Tarifleri’nin en büyük farkı tamamen gerçek kullanıcılar tarafından yapılmış tariflerin yayınlanmasıdır. Böylece tarifleri yapacak kişiler gönül rahatlığıyla sitemizdeki tarifleri yapabilmekte ve başarılı sonuçlar almaktadır.

Oluşturduğunuz tarif defterleri ile artık fiziksel defter tutmanıza gerek kalmamakta.

Ayrıca tariflerde yorumlar, tarifi deneyen diğer kullanıcıların fotoğrafları ilgili tarifin yapıldığında neye benzeyeceği konusunda çok detaylı bir şekilde bilgi vermektedir.

Bu platformun büyümesinde katkısı olan başta yazarlarımız olmak üzere tüm kullanıcılarımıza teşekkürler.

Afiyet olsun :)')
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (1, N'Çorbalar', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (2, N'Sebze Yemekleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (3, N'Et Yemekleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (4, N'Makarna Çeşitleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (5, N'Tavuk Yemekleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (6, N'Pastalar', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (7, N'İçecekler', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (8, N'Tatlılar', 0, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([MesajId], [MesajSahip], [MesajMail], [MesajBaslik], [MesajIcerik]) VALUES (2, N'Barış Arslan', N'arslan@gmail.com', N'Teşekkür', N'Çok güzel bir siteniz var. Ellerinize sağlık
')
INSERT [dbo].[Tbl_Mesajlar] ([MesajId], [MesajSahip], [MesajMail], [MesajBaslik], [MesajIcerik]) VALUES (4, N'Murat Yücedağ', N'mr4325t@gmail.com', N'Şikayet', N'Tarhana çorbası tarifi hatalı oluş düzeltirseniz sevinirim.')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([TarifId], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (12, N'Sucuklu Yumurta', N'Yumurta, Sucuk, Tuz, Tereyağı', N'Tereyağını tavada eritiniz. Dilimlenmiş sucukları tavaya atıp pişiriniz. Sonrasında yumurtaları kırıp isteğe bağlı çırparak sucukların üstüne dökünüz. İstediğiniz miktarda tuz ekleyebilirsiniz.', N'sucuklu_yumurta.jpg', N'Ekrem Eray Kaya', N'ekremeray@hotmail.com', 1)
INSERT [dbo].[Tbl_Tarifler] ([TarifId], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (13, N'Kurabiye', N'1 Yumurta, 1 Paket Buğday Nişastası, ''50 gr margarin, Un, 1 Bardak Şeker,1 Paket Kabartma Tozu', N'250 grm margarini eritin ve ılımasını bekleyin. Yumurtayı kırın ve şekerle karıştırın. Ilıyan margarini üzerine ekleyin. Sonrasında aldığı kadar un ekleyin. En son kabartma tozunu atın. Cevizden bira küçük toplar halinde tepsiye dizin. ', NULL, N'Mehmet Korkmaz', N'mehmetk@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (1, N'Köri Soslu Makarna', N'1/2 paket, makarna, (haşlanmış)1 paket, krema, 1 tatlı kaşığı, köri, 2 çay kaşığı, tuz, 1 çay kaşığı,
karabiber, 1 yemek kaşığı, tereyağı, 2 parça, tavuk göğsü, 100 gram, parmesan (rendelenmiş)', N'Makarnayı haşlayın. Tavukları küp küp doğrayın. Tavayı ısıtın ve tereyağını eritin. Eriyen tereyağında
tavukları kavurun. Köri, karabiber ve tuzu ilave edin. Kremayı ilave edin ve kısık ateşte pişirmeye ve
kremayı yoğunlaştırmaya devam edin. Makarnayı ilave edin ve henüz sıcakken parmesan ekleyip
tavada çevirin. Tabağa alın ve parmesan peyniri ilave edin. İşte bu kadar, afiyet olsun!', N'~/resimler/köri_soslu_makarna.jpg', CAST(0xAD7A02F9 AS SmallDateTime), 8.2, 4, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (3, N'Zeytin Yağlı Barbunya', N'1 kilogram taze barbunya, 1/2 çay bardağı zeytinyağı, 1 adet orta boy kuru soğan, 2 diş sarımsak,
1 adet büyük boy patates, 2 adet orta boy havuç, 2 adet orta boy domates, 2 su bardağı sıcak su,
1 tatlı kaşığı domates salçası, 1 tatlı kaşığı toz şeker, 1 çay kaşığı tuz', N'Kabuklarını ayıklayıp bol suda yıkadığınız barbunyaları üzerini geçecek kadar su ilavesiyle orta ateşte
10 dakika kadar haşlayın. Kuru soğanı rendenin ince tarafıyla rendeleyin. Sarımsakları ayıklayın, lezzet
vermesi için bütün olarak bırakın. Kabuğunu soyduğunuz patates ve havuçları küçük küpler halinde
doğrayın. Ortadan ikiye kesip uç kısımlarını aldığınız domatesleri rendeleyin. Zeytinyağını derin bir
tencerede kızdırın. Rendelenmiş soğan ve sarımsakları katıp hafif bir renk alana kadar soteleyin.
Patates ve havuç küplerini katıp kısa süre kavurun. Hafif renk vermesi için domates salçası ve
rendelenmiş domatesleri katıp kısık ateşte pişmeye bırakın. Haşlanmış barbunyayı süzüp tencereye
alın. Toz şeker, tuz ve sıcak suyu ekledikten sonra kısık ateşte barbunyalar yumuşayana kadar pişirin.
Ocaktan aldığınız barbunyayı kapağı kapalı tencerede oda ısısına gelene kadar dinlendirin. Sonrasında
derin bir servis kabına aktardığınız barbunyayı; arzuya göre üzerine gezdirdiğiniz sızma zeytinyağı,
taze sıkılmış limon suyu, incecik kıyılmış maydanoz eşliğinde ılık ya da soğuk olarak sevdiklerinizle
paylaşın.', N'~/resimler/zeytin_yağlı_barbunya.jpg', CAST(0xAD7A0305 AS SmallDateTime), 8.5, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (4, N'Mercimek Çorbası', N'1 su bardağı kırmızı ya da sarı mercimek, 1 adet kuru soğan, 1 adet patates, 1 adet havuç, 1 yemek
kaşığı un, 2 yemek kaşığı ayçiçek yağı, 6 su bardağı sıcak su, (1 adet et su tablet ile hazırlanmış)1 çay
kaşığı tuz, 1 çay kaşığı karabiber', N'Kuru soğanı küçük küpler halinde doğrayın. Ayçiçek yağını derin bir tencerede kızdırın. Doğradığınız
soğanları 2- 3 dakika kadar kavurun. Kavrulan soğanlara unu ekleyin ve kokusu çıkıp, renk alana kadar
kavurma işlemini sürdürün. İri parçalar halinde doğradığınız patates ve havucu tencereye aktarın.
Tüm malzemeyi karıştırdıktan sonra arzuya göre et su tablet ile hazırladığınız sıcak suyu ve bol suda
yıkadıktan sonra suyunu süzdürdüğünüz mercimeği ilave edin. Tuz ve karabiberi ekleyin. Havuçlar
yumuşayana kadar orta ateşte yaklaşık 40 dakika pişirin. Çorbayı, pürüzsüz bir kıvam alması için; el
blenderından geçirdikten sonra sıcak olarak sevdiklerinizle paylaşın.', N'~/resimler/mercimek_çorbası.jpg', CAST(0xAD7A0306 AS SmallDateTime), 9.4, 1, 1)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (107, N'Kurabiye', N'1 Yumurta, 1 Paket Buğday Nişastası, ''50 gr margarin, Un, 1 Bardak Şeker,1 Paket Kabartma Tozu', N'250 grm margarini eritin ve ılımasını bekleyin. Yumurtayı kırın ve şekerle karıştırın. Ilıyan margarini üzerine ekleyin. Sonrasında aldığı kadar un ekleyin. En son kabartma tozunu atın. Cevizden birazz küçük toplar halinde tepsiye dizin. ', NULL, CAST(0xAD800221 AS SmallDateTime), 7.3, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (108, N'Sucuklu Yumurta', N'Yumurta, Sucuk, Tuz, Tereyağı', N'Tereyağını tavada eritiniz. Dilimlenmiş sucukları tavaya atıp pişiriniz. Sonrasında yumurtaları kırıp isteğe bağlı çırparak sucukların üstüne dökünüz. İstediğiniz miktarda tuz ekleyebilirsiniz.', NULL, CAST(0xAD800275 AS SmallDateTime), 6.5, 3, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (1, N'Barış Arslan', N'arslan@hotmail.com', CAST(0xAD7A0346 AS SmallDateTime), 1, N'Mercimek çorbası leziz oldu', 4)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (2, N'Ayşe Çınar', N'ayse@gmail.com', CAST(0xAD7A0347 AS SmallDateTime), 0, N'1 kaşık un yeterli oldu. Afiyet olsun.', 1)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (3, N'Emel Yıldız', N'emelyildiz@gmail.com', CAST(0xAD7A0348 AS SmallDateTime), 0, N'Misafirlerim çok beğendi herkese afiyet olsun.', 4)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (4, N'Eda Yıldız', N'eda@hotmail.com', CAST(0xAD7A0384 AS SmallDateTime), 0, N'Yeşil Mercimekle de olur mu', 4)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (5, N'Mehmet Kayalı', N'mehmetkayali@gmail.com', CAST(0xAD7A0384 AS SmallDateTime), 0, N'Sarımsak olmasa daha güzel olurdu', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
ALTER TABLE [dbo].[Tbl_GununYemegi] ADD  CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[Tbl_Kategoriler] ADD  CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Tbl_Tarifler] ADD  CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Yemekler_Tbl_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Tbl_Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Yemekler] FOREIGN KEY([YemekId])
REFERENCES [dbo].[Tbl_Yemekler] ([YemekId])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Yemekler]
GO
USE [master]
GO
ALTER DATABASE [Dbo_yemektarifi] SET  READ_WRITE 
GO
