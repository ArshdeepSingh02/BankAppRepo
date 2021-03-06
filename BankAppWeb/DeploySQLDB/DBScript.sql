--USE master

--IF EXISTS(select * from sys.databases where name='TFSBankAppDemo')
--BEGIN
--alter database TFSBankAppDemo set single_user with rollback immediate
--drop database TFSBankAppDemo
--PRINT 'Dropped database successfully'
--END

--GO

----CREATE DATABASE

--CREATE DATABASE TFSBankAppDemo
--GO



--USE TFSBankAppDemo
--GO
/****** Object:  Table [dbo].[AirlineCustomerAccountData]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AirlineCustomerAccountData](
	[BookingID] [int] NULL,
	[TravellerID] [int] NULL,
	[Airline] [varchar](max) NULL,
	[FlightNo] [varchar](max) NULL,
	[DateOfBooking] [datetime] NULL,
	[DateOfJourney] [datetime] NULL,
	[Departure] [varchar](max) NULL,
	[Arrival] [varchar](max) NULL,
	[Duration] [varchar](max) NULL,
	[Price] [int] NULL,
	[PaymentMode] [varchar](max) NULL,
	[StatusIndicator] [varchar](max) NULL,
	[RewardsPoint] [int] NULL,
	[Miles] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AirlineCustomerData]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AirlineCustomerData](
	[TravellerID] [int] NULL,
	[Name] [varchar](max) NULL,
	[DOB] [datetime] NULL,
	[Mobile] [varchar](max) NULL,
	[PassportNo] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[ZipCode] [int] NULL,
	[EmailAddress] [varchar](max) NULL,
	[FrequentFlyer] [varchar](max) NULL,
	[Gender] [varchar](max) NULL,
	[ReceiveEmail] [bit] NULL,
	[RecommendOffer] [bit] NULL,
	[LastTravelledDate] [datetime] NULL,
	[Preferences] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigurationDetails]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigurationDetails](
	[AppName] [varchar](max) NULL,
	[ClassName] [varchar](max) NULL,
	[PropertyName] [varchar](max) NULL,
	[PropertyValue] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerAccountData]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerAccountData](
	[TranID] [varchar](max) NULL,
	[CustID] [int] NULL,
	[ValueDate] [datetime] NULL,
	[TransactionDate] [datetime] NULL,
	[TransactionSource] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[TransactionType] [varchar](max) NULL,
	[Amount] [decimal](18, 2) NULL,
	[AvailableBalance] [decimal](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerData]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerData](
	[CustID] [int] NULL,
	[AccountNumber] [int] NULL,
	[CustType] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[DOB] [datetime] NULL,
	[Nationality] [varchar](max) NULL,
	[ApplicantMaritalStatus] [varchar](max) NULL,
	[Mobile] [varchar](max) NULL,
	[PassportNo] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[ZipCode] [int] NULL,
	[EmailAddress] [varchar](max) NULL,
	[HNW] [varchar](max) NULL,
	[RecommendOffer] [bit] NULL,
	[ReceiveEmail] [bit] NULL,
	[Preferences] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LK_Offers]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LK_Offers](
	[Offer_ID] [int] IDENTITY(1,1) NOT NULL,
	[SearchTags] [varchar](200) NULL,
	[OfferType] [varchar](200) NULL,
	[Country] [varchar](100) NULL,
	[Offer_Details] [xml] NULL,
 CONSTRAINT [PK_LK_Offers] PRIMARY KEY CLUSTERED 
(
	[Offer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TelecomCustomerAccountData]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TelecomCustomerAccountData](
	[CustID] [int] NULL,
	[AcctNo] [int] NULL,
	[BillingDate] [datetime] NULL,
	[BillType] [varchar](max) NULL,
	[BillDescription] [varchar](max) NULL,
	[Duration] [varchar](max) NULL,
	[Volume] [int] NULL,
	[Pulse] [decimal](18, 2) NULL,
	[Charges] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[NetCharges] [decimal](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TelecomCustomerData]    Script Date: 9/24/2014 12:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TelecomCustomerData](
	[CustID] [int] NULL,
	[AccountNumber] [int] NULL,
	[MobileNoAllocated] [varchar](max) NULL,
	[RelationShipNo] [int] NULL,
	[SIMNumber] [int] NULL,
	[IMSINumber] [varchar](max) NULL,
	[BillPlan] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[DOB] [datetime] NULL,
	[UIDNo] [varchar](max) NULL,
	[Nationality] [varchar](max) NULL,
	[PassportNo] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Landmark] [varchar](max) NULL,
	[Circle] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[ZipCode] [int] NULL,
	[ContactNumber] [varchar](max) NULL,
	[EmailAddress] [varchar](max) NULL,
	[Usage] [varchar](max) NULL,
	[ReceiveEmail] [bit] NULL,
	[RecommendOffer] [bit] NULL,
	[Preferences] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592026, 16306, N'Indigo', N'6E-414', CAST(0x00009FD000000000 AS DateTime), CAST(0x00009FD600000000 AS DateTime), N'Pune(PNQ)', N'Hyderabad(HYD)', N'2h5m', 13430, N'CreditCard', N'Booked', 100, 550)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592027, 155015, N'Indigo', N'6E-426', CAST(0x00009FD100000000 AS DateTime), CAST(0x00009FD100000000 AS DateTime), N'Banglore(BLR)', N'Mumbai(BOM)', N'1h0m', 15094, N'DebitCard', N'Cancelled', 101, 512)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592028, 2957, N'Go Air', N'G8-391', CAST(0x00009FD200000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), N'Delhi(DEL)', N'Amritsar(ATQ)', N'1h55m', 12480, N'NetBanking', N'Booked', 102, 546)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592029, 607445, N'JetKonnect', N'S2-4845', CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), N'Mumbai(BOM)', N'Hyderabad(HYD)', N'1h10m', 12480, N'EMICARD', N'Booked', 103, 500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592030, 607003, N'AirIndia', N'AI-608', CAST(0x0000A01A00000000 AS DateTime), CAST(0x0000A01D00000000 AS DateTime), N'kolkata(CCU)', N'Chennai(MAA)', N'2h15m', 10607, N'CashCard', N'Booked', 104, 200)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592031, 607600, N'Go Air', N'G8-326', CAST(0x0000A01B00000000 AS DateTime), CAST(0x0000A01D00000000 AS DateTime), N'Jaipur(JAI)', N'Mumbai(BOM)', N'1h25m', 10843, N'CreditCard', N'Cancelled', 105, 200)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592032, 630907, N'JetKonnect', N'9W-7037', CAST(0x0000A01C00000000 AS DateTime), CAST(0x0000A01E00000000 AS DateTime), N'Bhopal(BHO)', N'Delhi(DEL)', N'2h35m', 10633, N'DebitCard', N'Booked', 106, 150)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592033, 189345, N'JetAir', N'9W-814', CAST(0x0000A01D00000000 AS DateTime), CAST(0x0000A01F00000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'1h40m', 5000, N'NetBanking', N'Booked', 107, 100)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592034, 611945, N'SpiceJet', N'SG-529', CAST(0x0000A05B00000000 AS DateTime), CAST(0x0000A05D00000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h10m', 8000, N'EMICARD', N'Booked', 108, 890)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592035, 185534, N'JetAir', N'9W-450', CAST(0x0000A05C00000000 AS DateTime), CAST(0x0000A05C00000000 AS DateTime), N'Ahmedabad(AMD)', N'Goa(GOI)', N'1h15m', 12292, N'CashCard', N'Cancelled', 109, 500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592036, 607350, N'JetKonnect', N'9W-2306', CAST(0x0000A07300000000 AS DateTime), CAST(0x0000A07300000000 AS DateTime), N'Cochin(COK)', N'Mumbai(BOM)', N'1h10m', 7000, N'CreditCard', N'Booked', 110, 1500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592037, 607460, N'AirIndia', N'AI-216', CAST(0x0000A07400000000 AS DateTime), CAST(0x0000A07400000000 AS DateTime), N'Calicut(CCJ)', N'BHUJ(BHJ)', N'1h35m', 12533, N'DebitCard', N'Cancelled', 111, 500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592038, 607340, N'AirIndia', N'AI-854', CAST(0x0000A07500000000 AS DateTime), CAST(0x0000A07600000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'1h45m', 6000, N'NetBanking', N'Booked', 112, 890)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592039, 607448, N'JetAir', N'9W-481', CAST(0x0000A09300000000 AS DateTime), CAST(0x0000A09800000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h50m', 5000, N'EMICARD', N'Booked', 113, 1500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592040, 170291, N'Go Air', N'G8-420', CAST(0x0000A09400000000 AS DateTime), CAST(0x0000A09600000000 AS DateTime), N'Mumbai(BOM)', N'Hyderabad(HYD)', N'1h52m', 12480, N'CashCard', N'Booked', 114, 500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592041, 606927, N'JetKonnect', N'9W-7011', CAST(0x0000A09500000000 AS DateTime), CAST(0x0000A09500000000 AS DateTime), N'kolkata(CCU)', N'Chennai(MAA)', N'1h55m', 12480, N'Cash', N'Booked', 115, 250)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592042, 156967, N'AirIndia', N'AI-216', CAST(0x0000A0A500000000 AS DateTime), CAST(0x0000A0AA00000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'2h5m', 13430, N'CashCard', N'Booked', 116, 151)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592043, 16306, N'JetAir', N'AI-854', CAST(0x00009FEF00000000 AS DateTime), CAST(0x0000A00000000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h45m', 15094, N'CreditCard', N'Booked', 117, 421)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592044, 155015, N'Go Air', N'9W-481', CAST(0x00009FF000000000 AS DateTime), CAST(0x00009FF100000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'2h45m', 12480, N'DebitCard', N'Booked', 118, 222)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592045, 2957, N'JetKonnect', N'G8-420', CAST(0x00009FF100000000 AS DateTime), CAST(0x00009FF200000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h52m', 12480, N'NetBanking', N'Booked', 119, 650)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592046, 607445, N'Indigo', N'6E-414', CAST(0x00009FF200000000 AS DateTime), CAST(0x00009FF200000000 AS DateTime), N'Pune(PNQ)', N'Hyderabad(HYD)', N'2h5m', 13430, N'CreditCard', N'Booked', 120, 150)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592047, 607003, N'Indigo', N'6E-426', CAST(0x0000A03900000000 AS DateTime), CAST(0x0000A03900000000 AS DateTime), N'Banglore(BLR)', N'Mumbai(BOM)', N'1h0m', 15094, N'DebitCard', N'Cancelled', 121, 120)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592048, 607600, N'Go Air', N'G8-391', CAST(0x0000A03A00000000 AS DateTime), CAST(0x0000A03A00000000 AS DateTime), N'Delhi(DEL)', N'Amritsar(ATQ)', N'1h55m', 12480, N'NetBanking', N'Booked', 122, 250)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592049, 630907, N'JetKonnect', N'S2-4845', CAST(0x0000A03B00000000 AS DateTime), CAST(0x0000A04000000000 AS DateTime), N'Mumbai(BOM)', N'Hyderabad(HYD)', N'1h10m', 12480, N'EMICARD', N'Booked', 100, 325)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592050, 189345, N'AirIndia', N'AI-608', CAST(0x0000A03C00000000 AS DateTime), CAST(0x0000A03C00000000 AS DateTime), N'kolkata(CCU)', N'Chennai(MAA)', N'2h15m', 10607, N'CashCard', N'Booked', 102, 150)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592051, 611945, N'Go Air', N'G8-326', CAST(0x0000A07A00000000 AS DateTime), CAST(0x0000A07D00000000 AS DateTime), N'Jaipur(JAI)', N'Mumbai(BOM)', N'1h25m', 10843, N'CreditCard', N'Cancelled', 104, 960)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592052, 185534, N'JetKonnect', N'9W-7037', CAST(0x0000A07B00000000 AS DateTime), CAST(0x0000A07B00000000 AS DateTime), N'Bhopal(BHO)', N'Delhi(DEL)', N'2h35m', 10633, N'DebitCard', N'Booked', 106, 620)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592053, 607350, N'JetAir', N'9W-814', CAST(0x0000A09100000000 AS DateTime), CAST(0x0000A09300000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'1h40m', 5000, N'NetBanking', N'Booked', 108, 1000)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592054, 607460, N'SpiceJet', N'SG-529', CAST(0x0000A09200000000 AS DateTime), CAST(0x0000A09300000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h10m', 8000, N'EMICARD', N'Booked', 110, 650)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592055, 607340, N'JetAir', N'9W-450', CAST(0x0000A09300000000 AS DateTime), CAST(0x0000A09400000000 AS DateTime), N'Ahmedabad(AMD)', N'Goa(GOI)', N'1h15m', 12292, N'CashCard', N'Cancelled', 112, 658)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592056, 607448, N'JetKonnect', N'9W-2306', CAST(0x0000A0B200000000 AS DateTime), CAST(0x0000A0B500000000 AS DateTime), N'Cochin(COK)', N'Mumbai(BOM)', N'1h10m', 7000, N'CreditCard', N'Booked', 114, 245)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592057, 170291, N'AirIndia', N'AI-216', CAST(0x0000A0B300000000 AS DateTime), CAST(0x0000A0B800000000 AS DateTime), N'Calicut(CCJ)', N'BHUJ(BHJ)', N'1h35m', 12533, N'DebitCard', N'Cancelled', 116, 450)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592058, 606927, N'AirIndia', N'AI-854', CAST(0x0000A0B400000000 AS DateTime), CAST(0x0000A0B400000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'1h45m', 6000, N'NetBanking', N'Booked', 118, 150)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592059, 156967, N'JetAir', N'9W-481', CAST(0x0000A0C400000000 AS DateTime), CAST(0x0000A0C400000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h50m', 5000, N'EMICARD', N'Booked', 120, 1500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592060, 16306, N'Go Air', N'G8-420', CAST(0x00009FF900000000 AS DateTime), CAST(0x00009FFA00000000 AS DateTime), N'Mumbai(BOM)', N'Hyderabad(HYD)', N'1h52m', 12480, N'CashCard', N'Booked', 122, 50)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592061, 155015, N'JetKonnect', N'9W-7011', CAST(0x00009FFA00000000 AS DateTime), CAST(0x00009FFA00000000 AS DateTime), N'kolkata(CCU)', N'Chennai(MAA)', N'1h55m', 12480, N'Cash', N'Booked', 124, 250)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592062, 2957, N'AirIndia', N'AI-216', CAST(0x00009FFB00000000 AS DateTime), CAST(0x00009FFC00000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'2h5m', 13430, N'CashCard', N'Booked', 126, 235)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592063, 607445, N'JetAir', N'AI-854', CAST(0x00009FFC00000000 AS DateTime), CAST(0x00009FFC00000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h45m', 15094, N'CreditCard', N'Booked', 128, 200)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592064, 607003, N'Go Air', N'9W-481', CAST(0x0000A03D00000000 AS DateTime), CAST(0x0000A03E00000000 AS DateTime), N'Chandigarh(IXC)', N'kolkata(CCU)', N'2h45m', 12480, N'DebitCard', N'Booked', 130, 350)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592065, 607600, N'JetKonnect', N'G8-420', CAST(0x0000A03D00000000 AS DateTime), CAST(0x0000A03E00000000 AS DateTime), N'Nagpur(NAG)', N'Mumbai(BOM)', N'1h52m', 12480, N'NetBanking', N'Booked', 132, 100)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592066, 630907, N'Indigo', N'6E-414', CAST(0x0000A03D00000000 AS DateTime), CAST(0x0000A04000000000 AS DateTime), N'Pune(PNQ)', N'Hyderabad(HYD)', N'2h5m', 13430, N'CreditCard', N'Booked', 134, 120)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592067, 189345, N'Indigo', N'6E-426', CAST(0x0000A03F00000000 AS DateTime), CAST(0x0000A04100000000 AS DateTime), N'Banglore(BLR)', N'Mumbai(BOM)', N'1h0m', 15094, N'DebitCard', N'Cancelled', 136, 200)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592068, 611945, N'Go Air', N'G8-391', CAST(0x0000A07C00000000 AS DateTime), CAST(0x0000A07E00000000 AS DateTime), N'Delhi(DEL)', N'Amritsar(ATQ)', N'1h55m', 12480, N'NetBanking', N'Booked', 138, 1500)
INSERT [dbo].[AirlineCustomerAccountData] ([BookingID], [TravellerID], [Airline], [FlightNo], [DateOfBooking], [DateOfJourney], [Departure], [Arrival], [Duration], [Price], [PaymentMode], [StatusIndicator], [RewardsPoint], [Miles]) VALUES (8592069, 185534, N'JetKonnect', N'S2-4845', CAST(0x0000A07D00000000 AS DateTime), CAST(0x0000A07F00000000 AS DateTime), N'Mumbai(BOM)', N'Hyderabad(HYD)', N'1h10m', 12480, N'EMICARD', N'Booked', 140, 400)

GO 

INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'EmailProperties', N'FromEmailId', N'sameer_j@infosys.com')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'EmailProperties', N'CCEmailId', N'sameer_j@infosys.com')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'EmailProperties', N'EmailMessage', N'Dear valued customer, <br/> Thanks a lot for your continued patronage for our services. We appreciate your continued support and wish you a happy experience with our telecom services.<br/> <br> We are also pleased to offer special deals only for you. Please feel free to reach to your service manager for more details or should you need any assistance!</br> <br></br><br>Please find attached your telephone statement for the reporting period')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'EmailProperties', N'EmailSubject', N'Bank account statement')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'EmailProperties', N'EmailMessage', N'Dear valued customer, <br/> Thanks a lot for your continued patronage for our services. We appreciate your continued support and wish you a happy experience with our banking services.<br/> <br> We are also pleased to offer special deals only for you. Please feel free to reach to your bank manager for more details or should you need any assistance!</br> <br></br><br>Please find attached your account statement for the reporting period')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'Country', N'India')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'ServerName', N'punitp305592d')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'DatabaseName', N'DemoDB')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'TableName', N'LK_Offers')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'UserName', N'iaap_user')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'Password', N'Infosys123')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'SearchTagColumnName', N'SearchTags')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'CountryColumnName', N'Country')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'ExternalDealsCount', N'5')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'BusinessCrossCount', N'2')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'BusinessUpCount', N'2')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamLocalDB', N'OfferDetailsColumnName', N'Offer_Details')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'EmailProperties', N'CCEmailId', N'sameer_j@infosys.com')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'EmailProperties', N'FromEmailId', N'sameer_j@infosys.com')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'BankingApp', N'DictionaryParamInternet', N'Country', N'India')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'EmailProperties', N'EmailSubject', N'Usage Statement')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'Country', N'India')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'ServerName', N'punitp305592d')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'DatabaseName', N'DemoDB')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'TableName', N'LK_Offers')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'UserName', N'iaap_user')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'Password', N'Infosys123')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'SearchTagColumnName', N'SearchTags')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'CountryColumnName', N'Country')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'OfferDetailsColumnName', N'Offer_Details')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'ExternalDealsCount', N'5')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'BusinessCrossCount', N'2')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'TelecomApp', N'DictionaryParamLocalDB', N'BusinessUpCount', N'2')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'Country', N'India')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'ServerName', N'punitp305592d')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'DatabaseName', N'DemoDB')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'TableName', N'LK_Offers')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'UserName', N'iaap_user')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'Password', N'Infosys123')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'SearchTagColumnName', N'SearchTags')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'CountryColumnName', N'Country')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'OfferDetailsColumnName', N'Offer_Details')
INSERT [dbo].[ConfigurationDetails] ([AppName], [ClassName], [PropertyName], [PropertyValue]) VALUES (N'AirlineApp', N'DictionaryParamLocalDB', N'ExternalDealsCount', N'5')
GO

INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB6793507', 16306, CAST(0x00009F8F00000000 AS DateTime), CAST(0x00009F8F00000000 AS DateTime), N'BCTT', N'CMSLocalCheckCollection', N'DR', CAST(420.00 AS Decimal(18, 2)), CAST(257000.71 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB6701423', 16306, CAST(0x00009F9100000000 AS DateTime), CAST(0x00009F9100000000 AS DateTime), N'IPS', N'VPS/Central(/20121027175126/0', N'DR', CAST(8000.00 AS Decimal(18, 2)), CAST(249000.71 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB7384334', 16306, CAST(0x00009F9100000000 AS DateTime), CAST(0x00009F9100000000 AS DateTime), N'CMS', N'CMSLocalCheckCollection', N'DR', CAST(2239.28 AS Decimal(18, 2)), CAST(246761.43 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB9469867', 16306, CAST(0x00009F9300000000 AS DateTime), CAST(0x00009F9300000000 AS DateTime), N'CMS', N'INF/000014451529/Shopping/0', N'DR', CAST(200.00 AS Decimal(18, 2)), CAST(246561.43 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB9231895', 16306, CAST(0x00009F9600000000 AS DateTime), CAST(0x00009F9600000000 AS DateTime), N'MPS', N'VPS/Central(/20121027175126/0', N'DR', CAST(1000.52 AS Decimal(18, 2)), CAST(245560.91 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB9214350', 16306, CAST(0x00009FB300000000 AS DateTime), CAST(0x00009FB300000000 AS DateTime), N'CMS', N'CMSLocalCheckCollection', N'DR', CAST(342.00 AS Decimal(18, 2)), CAST(245218.91 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB8545612', 16306, CAST(0x00009FCC00000000 AS DateTime), CAST(0x00009FCC00000000 AS DateTime), N'VPS', N'VPS/Central(/20121027175126/0', N'DR', CAST(2000.00 AS Decimal(18, 2)), CAST(243218.91 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4171409', 16306, CAST(0x00009FCD00000000 AS DateTime), CAST(0x00009FCD00000000 AS DateTime), N'NEFT', N'147401501687:InPd:26-11-2011 to 29-02-2012', N'CR', CAST(31000.00 AS Decimal(18, 2)), CAST(274218.91 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4189755', 16306, CAST(0x00009FCD00000000 AS DateTime), CAST(0x00009FCD00000000 AS DateTime), N'VPS', N'VPS/Central(/20121027175126/0', N'DR', CAST(2000.00 AS Decimal(18, 2)), CAST(272218.91 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB654722', 16306, CAST(0x00009FD000000000 AS DateTime), CAST(0x00009FD000000000 AS DateTime), N'MPS', N'MPS/Movie  F/20120409102050/0', N'DR', CAST(2000.64 AS Decimal(18, 2)), CAST(270218.27 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB1190387', 16306, CAST(0x00009FD200000000 AS DateTime), CAST(0x00009FD200000000 AS DateTime), N'CMS', N'CMSLocalCheckCollection', N'CR', CAST(3400000.00 AS Decimal(18, 2)), CAST(3670218.27 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB1366331', 16306, CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), N'INF', N'147401501687:It.Pd:01-03-2012 to 31-08-2012', N'CR', CAST(7400.00 AS Decimal(18, 2)), CAST(3677618.27 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB3461215', 16306, CAST(0x00009FD400000000 AS DateTime), CAST(0x00009FD400000000 AS DateTime), N'MPS', N'MPS/BigCinemas/20120409102050/0', N'DR', CAST(2935.23 AS Decimal(18, 2)), CAST(3674683.04 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB6896703', 16306, CAST(0x00009FD500000000 AS DateTime), CAST(0x00009FD500000000 AS DateTime), N'BCTT', N'BCTT/000016246815/Banking cash trasaction tax', N'DR', CAST(2379.86 AS Decimal(18, 2)), CAST(3672303.18 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB9634301', 16306, CAST(0x00009FD600000000 AS DateTime), CAST(0x00009FD600000000 AS DateTime), N'MPS', N'MPS/BigCinemas/20120409102050/0', N'DR', CAST(2000.00 AS Decimal(18, 2)), CAST(3670303.18 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB1490069', 16306, CAST(0x00009FF000000000 AS DateTime), CAST(0x00009FF000000000 AS DateTime), N'MPS', N'MPS/BigCinemas/20120409102050/0', N'DR', CAST(2963.76 AS Decimal(18, 2)), CAST(3667339.42 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB5641555', 16306, CAST(0x0000A00100000000 AS DateTime), CAST(0x0000A00100000000 AS DateTime), N'DCARD', N'DCARDFEE4001352JAN12-DEC12ST10', N'DR', CAST(1090.00 AS Decimal(18, 2)), CAST(3666249.42 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB6223577', 16306, CAST(0x0000A01000000000 AS DateTime), CAST(0x0000A01000000000 AS DateTime), N'INF', N'INF/000015420568/BBQ/0', N'DR', CAST(2000.00 AS Decimal(18, 2)), CAST(3664249.42 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB490189', 16306, CAST(0x0000A03000000000 AS DateTime), CAST(0x0000A01100000000 AS DateTime), N'BILL', N'BIL/492922308', N'DR', CAST(12672.00 AS Decimal(18, 2)), CAST(3651577.42 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB490189', 16306, CAST(0x0000A03000000000 AS DateTime), CAST(0x0000A01100000000 AS DateTime), N'BIL', N'BIL/AUTORECON TID.000416747641/PREPAID MOBILE RECH', N'DR', CAST(1000.13 AS Decimal(18, 2)), CAST(3650577.29 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB9846344', 16306, CAST(0x0000A05200000000 AS DateTime), CAST(0x0000A05200000000 AS DateTime), N'INF', N'INF/000014451529/Shopping/0', N'CR', CAST(2234687.76 AS Decimal(18, 2)), CAST(5885265.05 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'C5507446', 16306, CAST(0x0000A06800000000 AS DateTime), CAST(0x0000A06800000000 AS DateTime), N'INF', N'INF/000014599492/Tour/1', N'CR', CAST(2000.00 AS Decimal(18, 2)), CAST(5887265.05 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB7428354', 16306, CAST(0x0000A0AA00000000 AS DateTime), CAST(0x0000A0AA00000000 AS DateTime), N'INF', N'INF/000016742959', N'CR', CAST(2985.12 AS Decimal(18, 2)), CAST(5890250.17 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4882289', 16306, CAST(0x0000A0C200000000 AS DateTime), CAST(0x0000A0C200000000 AS DateTime), N'MPS', N'MPS/RELIANCE  F/20120409102050/0', N'DR', CAST(67696.32 AS Decimal(18, 2)), CAST(5822553.85 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB5031556', 16306, CAST(0x0000A0E000000000 AS DateTime), CAST(0x0000A0C200000000 AS DateTime), N'INF', N'INF/000014204651/Vaccation/0', N'CR', CAST(12764.32 AS Decimal(18, 2)), CAST(5835318.17 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB8383697', 16306, CAST(0x0000A0DA00000000 AS DateTime), CAST(0x0000A0DA00000000 AS DateTime), N'CMS', N'CMSLocalCheckCollection', N'CR', CAST(200000.00 AS Decimal(18, 2)), CAST(6035318.17 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB6610289', 16306, CAST(0x0000A0ED00000000 AS DateTime), CAST(0x0000A0ED00000000 AS DateTime), N'VPS', N'VPS/BIG BAZAAR(/20121027175126/0', N'DR', CAST(23104.34 AS Decimal(18, 2)), CAST(6012213.83 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB7570382', 16306, CAST(0x0000A0EE00000000 AS DateTime), CAST(0x0000A0EE00000000 AS DateTime), N'CMS', N'CMS/Interest', N'DR', CAST(500.00 AS Decimal(18, 2)), CAST(6011713.83 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB8446970', 16306, CAST(0x0000A0F700000000 AS DateTime), CAST(0x0000A0F700000000 AS DateTime), N'BIL', N'BIL/369133053/0218/918007904882/918007904882', N'DR', CAST(1000.00 AS Decimal(18, 2)), CAST(6010713.83 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB8957731', 16306, CAST(0x0000A0F700000000 AS DateTime), CAST(0x0000A0F700000000 AS DateTime), N'VPS', N'VPS/BLUTO/20130105125915/0', N'DR', CAST(1000.00 AS Decimal(18, 2)), CAST(6009713.83 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB9125045', 16306, CAST(0x0000A0F700000000 AS DateTime), CAST(0x0000A0F700000000 AS DateTime), N'VPS', N'VPS/SHOE EXPRES/20130126194636/0', N'DR', CAST(2000.00 AS Decimal(18, 2)), CAST(6007713.83 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB9131959', 16306, CAST(0x0000A0F700000000 AS DateTime), CAST(0x0000A0F700000000 AS DateTime), N'DMART', N'Ac xfr from Sol 0020 to 1474', N'DR', CAST(5313.34 AS Decimal(18, 2)), CAST(6002400.49 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4212036', 16306, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), N'INF', N'BIL/492922301', N'CR', CAST(98742.12 AS Decimal(18, 2)), CAST(6101142.61 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4198174', 16306, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), N'ICICI', N'Ac xfr from Sol 0020 to 1474', N'CR', CAST(400000.00 AS Decimal(18, 2)), CAST(6501142.61 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4212036', 16306, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), N'CMS', N'CMS/2012', N'CR', CAST(20000.00 AS Decimal(18, 2)), CAST(6521142.61 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4219919', 16306, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), N'INF', N'INF/000016246815', N'DR', CAST(2000.00 AS Decimal(18, 2)), CAST(6519142.61 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4225853', 16306, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), N'NEFT', N'NEFT-XYZNH13057302547', N'CR', CAST(1000.00 AS Decimal(18, 2)), CAST(6520142.61 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB4716290', 16306, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), N'BIL', N'BIL/415791793/PF/20008041075', N'DR', CAST(2000.00 AS Decimal(18, 2)), CAST(6518142.61 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB2612609', 16306, CAST(0x0000A10E00000000 AS DateTime), CAST(0x0000A10E00000000 AS DateTime), N'ATM', N'ATM/CASH WDL/27-05-13/17:38:08/0', N'DR', CAST(4000.00 AS Decimal(18, 2)), CAST(6514142.61 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB2811012', 16306, CAST(0x0000A11600000000 AS DateTime), CAST(0x0000A11600000000 AS DateTime), N'BCTT', N'BCTT/000016246815/Banking cash trasaction tax', N'CR', CAST(1321876.45 AS Decimal(18, 2)), CAST(7836019.06 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB2476050', 16306, CAST(0x0000A11600000000 AS DateTime), CAST(0x0000A11600000000 AS DateTime), N'BIL', N'BIL/AUTORECON TID.000444156879/PREPAID MOBILE RECH', N'CR', CAST(1234.23 AS Decimal(18, 2)), CAST(7837253.29 AS Decimal(18, 2)))
INSERT [dbo].[CustomerAccountData] ([TranID], [CustID], [ValueDate], [TransactionDate], [TransactionSource], [Description], [TransactionType], [Amount], [AvailableBalance]) VALUES (N'SB2811012', 16306, CAST(0x0000A11600000000 AS DateTime), CAST(0x0000A11600000000 AS DateTime), N'VPS', N'VPS/SAMARTH SER/20130611090730/0', N'DR', CAST(43117.50 AS Decimal(18, 2)), CAST(7794135.79 AS Decimal(18, 2)))

GO

INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (16306, 223012332, N'Public', N'Sameer Govind Joshi', CAST(0x0000762300000000 AS DateTime), N'Indian', N'Married', N'+91 7507773834', N'F9789920', N' 30 Laxminagar Paota B Raod, Jodhpur, Rajasthan

', N'INDIA', 342001, N'Sameer_J@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (155015, 223012333, N'Public', N'Ashish Sharma33', CAST(0x000073D600000000 AS DateTime), N'Indian', N'Married', N'91 9538892237', N'F9789904', N'Hinjewadi chowk, pune', N'INDIA', 411057, N'Ashish_Sharma33@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (2957, 223012334, N'Public', N'Prashant Pawar, Infosys ', CAST(0x0000741800000000 AS DateTime), N'Indian', N'Married', N'91 9881404657', N'F9789923', N'F-803 Greenlands,
Konkane Chowk,
Pimple saudagar,
Pune.
Maharastra.

', N'INDIA', 411057, N'Prashant_Pawar@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (610004, 223012335, N'Public', N'Rebbica Waltson', CAST(0x000074C300000000 AS DateTime), N'USA', N'Married', N'(831) 758-7251', N'U5789920', N'200 Lincoln Ave, Salinas, CA', N'USA', 93901, N'Sameer_J@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (210004, 243012338, N'Public', N'Wan Thuy', CAST(0x0000741800000000 AS DateTime), N'USA', N'UnMarried', N'(718) 555-5555', N'N989920', N'45 Park Avenue, Apt. 303 
New York, NY
', N'USA', 10016, N'Sameer_J@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (225015, 253042333, N'Public', N'Alfred Thomson', CAST(0x000074C300000000 AS DateTime), N'USA', N'UnMarried', N'(281) 856-6506', N'C9789890', N'2212 W. Armitage
Chicago, IL
United States', N'USA', 60647, N'Sameer_J@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (231546, 263512334, N'Public', N'John Mclain', CAST(0x0000741800000000 AS DateTime), N'USA', N'UnMarried', N'702-212-8885', N'L9784520', N'4700 S. Maryland Pkwy.
Ste. 5
Las Vegas, NV
United States
', N'USA', 89119, N'Sameer_J@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (607445, 223012335, N'Public', N'Srikanth Dornala', CAST(0x00007F0900000000 AS DateTime), N'Indian', N'UnMarried', N'91 9665364140', N'F9789901', N'"OM" ShantiNagar-1,
Gunagadh Road,
Jetpur.
Gujarat.', N'INDIA', 360370, N'Srikanth_Dornala@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (607003, 223012336, N'Public', N'Devanshu Satyanarayan Sen', CAST(0x00007FDD00000000 AS DateTime), N'Indian', N'UnMarried', N'91 9049110139', N'F9782703', N'INeco SkyPark, 20 DP Road, Vishal Nagar, Near Nangude International School, Pimple Nilakh, Pune.

', N'INDIA', 411027, N'Devanshu_Sen@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (607600, 223012337, N'Public', N'Swapnil Prakash Varpe', CAST(0x0000803900000000 AS DateTime), N'Indian', N'UnMarried', N'91 9764368079', N'F9781235', N'Priyanka Apartment,near Rahul nagar,Kothrud,Pune', N'INDIA', 411027, N'Swapnil_Varpe@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (630907, 223012338, N'Public', N'Charmi Ronak Bathani', CAST(0x00007D5E00000000 AS DateTime), N'Indian', N'Married', N'91 8600032271', N'F9789901', N'Ved Vihar Society, Kothrud, Pune

', N'INDIA', 411027, N'Charmi_Bathani@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (189345, 223012339, N'Staff', N'Ashutosh Gupta', CAST(0x00007D2100000000 AS DateTime), N'Indian', N'UnMarried', N'+91 7507773834', N'F9789902', N' H-23/217, Parth Apartments,
oppo. Vardan Towers, Near Pragatinagar Flats,
Pragatinagar, Naranpura, Ahmedabad, Gujarat

', N'INDIA', 380063, N'Ashutosh_Gupta06@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (611945, 223012340, N'Public', N'Monica Nahar', CAST(0x00007D5F00000000 AS DateTime), N'Indian', N'Married', N'93 8600032271', N'F9789903', N'H:No 3-85, Sri Saraswathinagar, Dubbak , Medak, A.P 

', N'INDIA', 502108, N'monica_nahar@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (185534, 223012341, N'Public', N'Neelam Jamkhande', CAST(0x00007C3000000000 AS DateTime), N'Indian', N'UnMarried', N'94 8600032271', N'F9789904', N'Sunder Garden, D-2/4, Manikbag,Opposite Brahma pure veg, Sinhgad Road, Pune.

', N'INDIA', 411051, N'neelam_jamkhande@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (607350, 223012342, N'Staff', N'Saloni Sharma', CAST(0x00007D7F00000000 AS DateTime), N'Indian', N'UnMarried', N'+91 7507773834', N'F9789905', N'Ved Vihar Society, Kothrud, Pune

', N'INDIA', 411051, N'Saloni_Sharma02@infosys.com', N'NO', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (607460, 223012343, N'Public', N'Sudipta Chakraborty', CAST(0x00007EB100000000 AS DateTime), N'Indian', N'UnMarried', N'96 8600032271', N'F9789906', N'Infosys Technologies Ltd.
Plot #24, phase: 2,
Rajiv Gandhi InfoTech park,
Village:  man, Tal mulshi, Hinjawadi- Pune', N'INDIA', 411057, N'Sudipta_C01@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (607340, 223012344, N'Minor', N'Sabya Sachi', CAST(0x00007CAB00000000 AS DateTime), N'Indian', N'UnMarried', N'+91 7507773834', N'F9789907', N'H:No 3-85, Sri Saraswathinagar, Dubbak , Medak, A.P 

', N'INDIA', 502108, N'Sabya_Sachi@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (607448, 223012345, N'Public', N'Rohan Murty', CAST(0x00007CCB00000000 AS DateTime), N'Indian', N'Married', N'91 9049110139', N'F9789908', N'Priyanka Apartment,near Rahul nagar,Kothrud,Pune', N'INDIA', 411057, N'Rohan_Murty@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (170291, 223012346, N'Staff', N'Ankita Chopra', CAST(0x00007DFD00000000 AS DateTime), N'Indian', N'UnMarried', N'91 8600032271', N'F9789909', N' 34 Laxminagar Paota B Raod, Jodhpur, Rajasthan 

', N'INDIA', 342001, N'Ankita_Chopra@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (606927, 223012347, N'Staff', N'Anushka Jalther', CAST(0x00007C7100000000 AS DateTime), N'Indian', N'UnMarried', N'91 8600032271', N'F9789910', N'F-803 Greenlands,
Konkane Chowk,
Pimple saudagar,
Pune.
Maharastra.', N'INDIA', 411057, N'Anushka_Jalther@infosys.com', N'YES', 1, 1, N'Card Offers')
INSERT [dbo].[CustomerData] ([CustID], [AccountNumber], [CustType], [Name], [DOB], [Nationality], [ApplicantMaritalStatus], [Mobile], [PassportNo], [Address], [Country], [ZipCode], [EmailAddress], [HNW], [RecommendOffer], [ReceiveEmail], [Preferences]) VALUES (156967, 223012348, N'Senior Citizen', N'Hemal Limbachia', CAST(0x00007CEC00000000 AS DateTime), N'Indian', N'Married', N'91 9049110139', N'F9789911', N' 32 Laxminagar Paota B Raod, Jodhpur, Rajasthan', N'INDIA', 342001, N'Hemal_Limbachia@infosys.com', N'NO', 0, 0, N'Card Offers')


--SET IDENTITY_INSERT [dbo].[LK_Offers] ON 

--INSERT [dbo].[LK_Offers] ([Offer_ID], [SearchTags], [OfferType], [Country], [Offer_Details]) VALUES (1, N'travelAccessories', N'External', N'INDIA', N'<ResponseDeal><id>1000</id><deal_url>http://www.ebay.in/itm/Take-Off-Black-Trolley-Travel-Bag-Expandable-luggage-compartment-/181234033115?pt=IN_Bags_Luggage</deal_url><title>Take Off Black Trolley Travel Bag (Expandable luggage compartment)</title><sku>51141</sku><small_image_url /><medium_image_url /><large_image_url /><shipping_method>print</shipping_method><vendor_name>escalationstravelware</vendor_name><vendor_listing_url>http://myworld.ebay.in/escalationstravelware/?_trksid=p4340.l2559</vendor_listing_url><vendor_website_url /><vendor_logo>http://i.ebayimg.com/00/s/MTYwMFg4ODg=/$(KGrHqN,!ncFH1w5YKDkBSF)YmD5Zw~~60_35.JPG</vendor_logo><vendor_description>&lt;div&gt;&lt;div&gt;Give yourself the gift of clean air and better health! This Mini Car Purifier plugs right into your cars charger port. &amp;#160;The Purifier will light up after plugged in and within 25 seconds will start to remove toxins like smoke, dust, and various other allergens. The way this is done is through a concentration of negative ions that the device releases once you gently turn the top. It will improve your overall health by removing particles that could lead to cold, flu, and etc. &amp;#160;The other advantage is it works as an air freshener as well! &amp;#160;Using the complimentary dropper, just add a few drops of any incense oil or fragrance perfume (NOT INCLUDED) in the small holes at the top and wallah, a nice fresh scented car.&lt;/div&gt;&lt;div&gt;&amp;#160;&lt;/div&gt;&lt;div&gt;AlignUrLife is an Online Retail Company based in San Diego, California. &amp;#160;They specialize in bringing online customers a variety of quality products at the LOWEST PRICES…Because the AlignUrLife Team has built special relationships with manufacturers and retailers that enables them to bring their customers (YOU) high quality products at low discount prices month after month! &amp;#160;So go ahead and enhance your life with a little something from AlignUrLife!&lt;/div&gt;&lt;div&gt;&amp;#160;&lt;/div&gt;&lt;div&gt;&lt;a href="http://www.alignurlife.com/" target="_blank"&gt;Website&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;</vendor_description><sold_out>false</sold_out><quantity_sold>0</quantity_sold><price>249Rs</price><value>1,660.00Rs</value><discount_amount>1411Rs</discount_amount><discount_percent>15.00</discount_percent><conditions><limited_quantity>true</limited_quantity><initial_quantity>0</initial_quantity><quantity_remaining>905</quantity_remaining><minimum_purchase>1</minimum_purchase><maximum_purchase>0</maximum_purchase><details><string>NOTE: This is an online merchant; see&amp;#160;Redemption Process&amp;#160;below on how to receive your product- Valid online only- One voucher per transaction- Allow 2-4 weeks for shipping from time of purchase from merchant’s site- Not valid for cash back (unless required by law)- Not valid for tax or gratuity- May not be combined with other offers, discounts or promotions- No substitutions unless otherwise noted&amp;#160;- Purchase any quantity- Promotional value expires six months from purchase&amp;#160;Redemption Process:1- Print off CityDeals voucher2- Visit&amp;#160;Website3- Type the voucher code into the coupon code box during checkout and click apply</string><string>Valid online only</string><string>One voucher per transaction</string><string>Allow 2-4 weeks for shipping from time of purchase from merchant’s site</string><string>Not valid for cash back (unless required by law)</string><string>Not valid for tax or gratuity</string><string>May not be combined with other offers, discounts or promotions</string><string>No substitutions unless otherwise noted </string><string>Purchase any quantity</string></details></conditions></ResponseDeal>')
--INSERT [dbo].[LK_Offers] ([Offer_ID], [SearchTags], [OfferType], [Country], [Offer_Details]) VALUES (2, N'traveldeals,tourpackage', N'External', N'INDIA', N'<ResponseDeal><id>1001</id><deal_url>http://www.ebay.in/itm/The-perfect-package-for-those-who-want-to-discover-the-world-8D-7N-for-4-person-/181227904828</deal_url><title>The perfect package for those who want to discover the world 8D/7N for 4 person</title><sku>51141</sku><small_image_url /><medium_image_url /><large_image_url /><shipping_method>print</shipping_method><vendor_name>escalationstravelware</vendor_name><vendor_listing_url>http://myworld.ebay.in/escalationstravelware/?_trksid=p4340.l2559</vendor_listing_url><vendor_website_url /><vendor_logo>http://i.ebayimg.com/00/s/NDAwWDU1MA==/z/nL0AAOxy1JBSRvWD/$T2eC16ZHJF8FFp1RIyu8BSRvWDZqJ!~~60_12.JPG</vendor_logo><vendor_description>&lt;div&gt;&lt;div&gt;The perfect package for those who want to discover the world – this gives you access to more than 2,000 resorts around the globe. &amp;#160;Spend your one week vacation somewhere familiar like Phuket or Bali, or be adventurous and head to Malta or Costa Rica!. &amp;#160;Using the complimentary dropper, just add a few drops of any incense oil or fragrance perfume (NOT INCLUDED) in the small holes at the top and wallah, a nice fresh scented car.&lt;/div&gt;&lt;div&gt;&amp;#160;&lt;/div&gt;&lt;div&gt;AlignUrLife is an Online Retail Company based in San Diego, California. &amp;#160;They specialize in bringing online customers a variety of quality products at the LOWEST PRICES…Because the AlignUrLife Team has built special relationships with manufacturers and retailers that enables them to bring their customers (YOU) high quality products at low discount prices month after month! &amp;#160;So go ahead and enhance your life with a little something from AlignUrLife!&lt;/div&gt;&lt;div&gt;&amp;#160;&lt;/div&gt;&lt;div&gt;&lt;a href="http://www.alignurlife.com/" target="_blank"&gt;Website&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;</vendor_description><sold_out>false</sold_out><quantity_sold>0</quantity_sold><price>8000Rs</price><value> 48000.00Rs</value><discount_amount>40000Rs</discount_amount><discount_percent>16.6</discount_percent><conditions><limited_quantity>true</limited_quantity><initial_quantity>0</initial_quantity><quantity_remaining>905</quantity_remaining><minimum_purchase>1</minimum_purchase><maximum_purchase>0</maximum_purchase><details><string>NOTE: This is an online merchant; see&amp;#160;Redemption Process&amp;#160;below on how to receive your product- Valid online only- One voucher per transaction- Allow 2-4 weeks for shipping from time of purchase from merchant’s site- Not valid for cash back (unless required by law)- Not valid for tax or gratuity- May not be combined with other offers, discounts or promotions- No substitutions unless otherwise noted&amp;#160;- Purchase any quantity- Promotional value expires six months from purchase&amp;#160;Redemption Process:1- Print off CityDeals voucher2- Visit&amp;#160;Website3- Type the voucher code into the coupon code box during checkout and click apply</string><string>Valid online only</string><string>One voucher per transaction</string><string>Allow 2-4 weeks for shipping from time of purchase from merchant’s site</string><string>Not valid for cash back (unless required by law)</string><string>Not valid for tax or gratuity</string><string>May not be combined with other offers, discounts or promotions</string><string>No substitutions unless otherwise noted </string><string>Purchase any quantity</string></details></conditions></ResponseDeal>')

--SET IDENTITY_INSERT [dbo].[LK_Offers] OFF

INSERT [dbo].[TelecomCustomerAccountData] ([CustID], [AcctNo], [BillingDate], [BillType], [BillDescription], [Duration], [Volume], [Pulse], [Charges], [Discount], [NetCharges]) VALUES (16306, 700516163, CAST(0x00009F4B00000000 AS DateTime), N'Call Charge', N'voice calls - Local', N'243:34 (mm:ss)', 76, CAST(206.00 AS Decimal(18, 2)), CAST(141.20 AS Decimal(18, 2)), CAST(141.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[TelecomCustomerAccountData] ([CustID], [AcctNo], [BillingDate], [BillType], [BillDescription], [Duration], [Volume], [Pulse], [Charges], [Discount], [NetCharges]) VALUES (16306, 700516163, CAST(0x00009F4B00000000 AS DateTime), N'Call Charge', N'voice calls - STD', N'443:48 (mm:ss)', 66, CAST(180.00 AS Decimal(18, 2)), CAST(620.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(420.00 AS Decimal(18, 2)))
INSERT [dbo].[TelecomCustomerAccountData] ([CustID], [AcctNo], [BillingDate], [BillType], [BillDescription], [Duration], [Volume], [Pulse], [Charges], [Discount], [NetCharges]) VALUES (16306, 700516163, CAST(0x00009F4B00000000 AS DateTime), N'Call Charge', N'voice calls - ISD', N'43:19 (mm:ss)', 4, CAST(10.00 AS Decimal(18, 2)), CAST(350.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(350.40 AS Decimal(18, 2)))

--use TFSBankAppDemo
--IF EXISTS (SELECT * FROM sys.server_principals WHERE name = N'iaap_user')
--BEGIN
--ALTER LOGIN iaap_user WITH PASSWORD = 'Infosys@123'
--,DEFAULT_DATABASE = TFSBankAppDemo
--END
--ELSE
--BEGIN
--CREATE LOGIN iaap_user WITH PASSWORD = 'Infosys@123'
--,DEFAULT_DATABASE = TFSBankAppDemo
--END

--GO
 
--use TFSBankAppDemo
--IF  NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'iaap_user')
--BEGIN
--CREATE USER iaap_user FOR LOGIN iaap_user;
--END
--EXEC sp_addrolemember 'db_datareader', 'iaap_user'
--EXEC sp_addrolemember 'db_datawriter', 'iaap_user'
--EXEC sp_addrolemember 'db_owner', 'iaap_user'
--EXEC master..sp_addsrvrolemember @loginame = N'iaap_user', @rolename = N'sysadmin'
--PRINT 'iaap_user created'
--GO


    
  
    