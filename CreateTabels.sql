create table Doctor  (
 DocID int PRIMARY KEY IDENTITY(10,1),
 DocIDcard Nvarchar(255) ,--מזהה דוקטור
 DocFName Nvarchar(255),-- שם פרטי דוקטור
 DocLName Nvarchar(255),--שם משפחה דוקטור
 DocPhoneNum Nvarchar(255), -- מס' טלפון רופא
 DocEmail Nvarchar(255), -- אימייל רופא
 DocPass Nvarchar(255),-- סיסמא רופא
 BussinessName Nvarchar(255) -- שם העסק
);

create table Patient(
 ClientID int PRIMARY KEY IDENTITY(400,1),
 DocID int,
 ClientIDcard Nvarchar(255) ,-- מזהה לקוח
 ClientFName Nvarchar(255), -- שם פרטי לקוח
 ClientLname Nvarchar(255) ,-- שם משפחה לקוח
 ClientPhonenum Nvarchar(255), -- מס' פלאפון לקוח
 ClientEmail Nvarchar(255), -- אימייל לקוח
 ClientPass Nvarchar(255), -- סיסמא לקוח
 FOREIGN KEY (DocID) REFERENCES Doctor(DocID),
);

create table Clinic (
 ClinicID int PRIMARY KEY IDENTITY(7000,1),-- מזהה מרפאה
 DocID int,
 ClinicName Nvarchar(255),-- שם המרפאה
 ClinicAddress Nvarchar(255), -- כתובת המרפאה
 ClinicOpenHours Nvarchar(255), -- שעות פתיחת מרפאה
 ClinicCity Nvarchar(255), -- עיר המרפאה
 FOREIGN KEY (DocID) REFERENCES Doctor(DocID),
);

create table DocAppointment(
 DocID int, -- מזהה רופא
 ClientID int,--מזהה לקוח
 ClinicID int, -- מזהה מרפאה
 AppDate Nvarchar(255), -- תאריך הפגישה
 AppHour Nvarchar(255), -- שעת הפגישה
 AppDoc Nvarchar(255), -- סיכום הפגישה
 FOREIGN KEY (DocID) REFERENCES Doctor(DocID),
 FOREIGN KEY (ClientID) REFERENCES patient(ClientID),
 FOREIGN KEY (ClinicID) REFERENCES Clinic(ClinicID)

);