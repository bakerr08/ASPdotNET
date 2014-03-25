-- -----------------------------------------------------
-- Table `Customer`
-- -----------------------------------------------------

CREATE TABLE Customer (
  CustomerID INT NOT NULL,
  FirstName VARCHAR(45) NULL,
  LastName VARCHAR(45) NULL,
  Address VARCHAR(45) NULL,
  City VARCHAR(45) NULL,
  State VARCHAR(2) NULL,
  Zip VARCHAR(5) NULL,
  Email VARCHAR(45) NULL,
  Password VARCHAR(45) NULL,
  PRIMARY KEY (CustomerID))
-- -----------------------------------------------------
-- Table `Order`
-- -----------------------------------------------------

CREATE TABLE Orders (
  OrderID INT NOT NULL,
  CustomerID INT NULL,
  Date DATETIME NULL,
  Reciept VARCHAR(45) NULL,
  CustomerShipped BIT NULL,
  PRIMARY KEY (OrderID),
  CONSTRAINT fk_Order_Customer
    FOREIGN KEY (CustomerID)
    REFERENCES Customer (CustomerID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
-- -----------------------------------------------------
-- Table `Format`
-- -----------------------------------------------------
CREATE TABLE Format (
  FormatID INT NOT NULL,
  Description VARCHAR(45) NULL,
  PRIMARY KEY (FormatID))
-- -----------------------------------------------------
-- Table `Rating`
-- -----------------------------------------------------
CREATE TABLE Rating (
  RatingID INT NOT NULL,
  Description VARCHAR(45) NULL,
  PRIMARY KEY (RatingID))
-- -----------------------------------------------------
-- Table `Genre`
-- -----------------------------------------------------
CREATE TABLE Genre (
  GenreID INT NOT NULL,
  ParentGenre VARCHAR(45) NULL,
  Description VARCHAR(45) NULL,
  PRIMARY KEY (GenreID))
-- -----------------------------------------------------
-- Table `Movies`
-- -----------------------------------------------------
CREATE TABLE Movies (
  MovieID INT NOT NULL,
  Title VARCHAR(45) NULL,
  Description VARCHAR(45) NULL,
  Image varchar(140) NULL,
  Price DECIMAL NULL,
  Quantity INT NULL,
  RatingID INT NULL,
  FormatID INT NULL,
  PRIMARY KEY (MovieID),
  CONSTRAINT fk_Movies_Rating
    FOREIGN KEY (RatingID)
    REFERENCES Rating (RatingID),
  CONSTRAINT fk_Movies_Format
	FOREIGN KEY (FormatID)
    REFERENCES Format (FormatID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
-- -----------------------------------------------------
-- Table `Item`
-- -----------------------------------------------------
CREATE TABLE Item (
  ItemID INT NOT NULL,
  OrderID INT NULL,
  MovieID INT NULL,
  PRIMARY KEY (ItemID),
  CONSTRAINT fk_Item_Order
    FOREIGN KEY (OrderID)
    REFERENCES Orders (OrderID),
  CONSTRAINT fk_Item_Movie
    FOREIGN KEY (MovieID)
    REFERENCES Movies (MovieID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
-- -----------------------------------------------------
-- Table `MovieGenre`
-- -----------------------------------------------------

CREATE TABLE MovieGenre (
  MovieID INT NOT NULL,
  GenreID INT NOT NULL,
  PRIMARY KEY (MovieID, GenreID),
  CONSTRAINT fk_MovieGenre_Movies
    FOREIGN KEY (MovieID)
    REFERENCES Movies (MovieID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_MovieGenre_Genre
    FOREIGN KEY (GenreID)
    REFERENCES Genre (GenreID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

