-- User Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    FullName VARCHAR(100) NOT NULL,
    Photo BLOB
);

-- Seller table
CREATE TABLE Sellers (
    SellerID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    FullName VARCHAR(100) NOT NULL,
    SellerInfo TEXT NOT NULL,
    Photo BLOB
);

-- Product table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Ratings DECIMAL(3, 2) DEFAULT 0.0,
    CategoryID INT,
    SellerID INT,
    Photo BLOB,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (SellerID) REFERENCES Sellers(SellerID)
);


-- Category table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);



-- Rating table
CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY,
    ProductID INT,
    UserID INT,
    Rate INT,
    Comment VARCHAR(255),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Order table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    Address VARCHAR(255),
    ShippingOption VARCHAR(50),
    PaymentMethod VARCHAR(50),
    AdditionalOffer VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Cart table
CREATE TABLE Cart (
    CartID INT PRIMARY KEY,
    UserID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Transaction table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    UserID INT,
    OrderID INT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Follower table
CREATE TABLE Followers (
    FollowerID INT PRIMARY KEY,
    UserID INT,
    SellerID INT,
    FollowerUserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SellerID) REFERENCES Seller(SellerID),
    FOREIGN KEY (FollowerUserID) REFERENCES Users(UserID)
)
