-- DDL
DROP DATABASE IF EXISTS Shoppingmall;
CREATE DATABASE Shoppingmall;
use Shoppingmall;

CREATE TABLE `Member` (
	`member_key`	bigint	NOT NULL,
	`customer_key`	bigint	NOT NULL,
	`member_id`	varchar(20)	NOT NULL,
	`member_pw`	varchar(255)	NOT NULL,
	`resident_number`	varchar(20)	NOT NULL,
	`member_address`	varchar(50)	NOT NULL,
	`name`	varchar(20)	NOT NULL,
	`email`	varchar(50)	NOT NULL,
	`phone`	varchar(15)	NOT NULL,
	`point`	int	NULL,
	`balance`	int	NULL
);

CREATE TABLE `Customer` (
	`customer_key`	bigint	NOT NULL,
	`name`	varchar(20)	NOT NULL,
	`phone`	varchar(15)	NOT NULL,
	`email`	varchar(50)	NOT NULL
);

CREATE TABLE `Product` (
	`product_key`	bigint	NOT NULL,
	`category_key`	bigint	NOT NULL,
	`product_name`	varchar(50)	NOT NULL,
	`price`	int	NOT NULL,
	`saleprice`	int	NOT NULL	DEFAULT 0,
	`description`	varchar(255)	NOT NULL,
	`number_of_product`	int	NOT NULL,
	`is_deleted`	boolean	NOT NULL	DEFAULT False,
	`product_image`	varchar(255)	NULL,
	`product_rate`	float	NULL,
	`manufacturer`	varchar(50)	NOT NULL,
	`purchase_benefits`	varchar(50)	NULL,
	`card_benefits`	varchar(50)	NULL
);

CREATE TABLE `Order` (
	`order_key`	bigint	NOT NULL,
	`customer_key`	bigint	NOT NULL,
	`order_date`	timestamp	NOT NULL,
	`order_total_price`	int	NOT NULL,
	`order_require`	varchar(50)	NULL,
	`order_product`	varchar(50)	NOT NULL,
	`order_img`	varchar(255)	NOT NULL,
	`order_info`	varchar(50)	NOT NULL,
	`receiver_name`	varchar(20)	NOT NULL,
	`receiver_phone`	varchar(13)	NOT NULL,
	`order_address`	varchar(50)	NOT NULL,
	`address_detail`	varchar(50)	NOT NULL,
	`zip_code`	varchar(10)	NOT NULL,
	`delivery_fee`	int	NOT NULL	DEFAULT 2500,
	`discount_and_point`	int	NOT NULL	DEFAULT 0
);

CREATE TABLE `Category` (
	`customer_category_key`	bigint	NOT NULL,
	`super_customer_category_key`	bigint	NULL,
	`customer_category_name`	varchar(50)	NOT NULL
);

CREATE TABLE `Cart` (
	`cart_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL
);

CREATE TABLE `Wishlist` (
	`wishlist_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL
);

CREATE TABLE `Delivery` (
	`delivery_addr_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL,
	`name`	varchar(20)	NOT NULL,
	`phone_number`	varchar(15)	NOT NULL,
	`zip_code`	varchar(10)	NOT NULL,
	`request`	varchar(255)	NOT NULL	DEFAULT '천천히 안전하게 배송해주세요',
	`sub_address`	varchar(50)	NOT NULL,
	`is_basic_address`	boolean	NOT NULL	DEFAULT False
);

CREATE TABLE `Review` (
	`review_key`	bigint	NOT NULL,
	`product_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL,
	`review`	varchar(255)	NOT NULL,
	`review_date`	timestamp	NOT NULL,
	`review_rate`	float	NOT NULL,
	`review_image`	varchar(255)	NULL
);

CREATE TABLE `Cart_Product_subtable` (
	`CPsub_key`	bigint	NOT NULL,
	`cart_key`	bigint	NOT NULL,
	`product_key`	bigint	NOT NULL,
	`quantity`	int	NOT NULL
);

CREATE TABLE `Wishlist_Product_subtable` (
	`WPsub_key`	bigint	NOT NULL,
	`wishlist_key`	bigint	NOT NULL,
	`product_key`	bigint	NOT NULL
);

CREATE TABLE `OrderDetail` (
	`order_detail_key`	bigint	NOT NULL,
	`product_key`	bigint	NOT NULL,
	`order_key`	bigint	NOT NULL,
	`quantity`	int	NOT NULL
);

CREATE TABLE `MemberGrade` (
	`grade_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL,
	`grade`	int	NOT NULL
);

CREATE TABLE `Coupon` (
	`coupon_key`	bigint	NOT NULL,
	`coupon_name`	varchar(50)	NOT NULL,
	`discount`	int	NOT NULL,
	`available_range_start`	timestamp	NOT NULL,
	`available_range_end`	timestamp	NULL,
	`issue_date`	timestamp	NOT NULL
);

CREATE TABLE `Coupon_use_condition` (
	`coupon_use_condition_key`	bigint	NOT NULL,
	`coupon_key`	bigint	NOT NULL,
	`use_range`	varchar(50)	NULL,
	`min_Price_condition`	int	NULL,
	`is_can_duplicate`	boolean	NULL
);

CREATE TABLE `FAQ` (
	`FAQ_key`	bigint	NOT NULL,
	`category_key`	bigint	NOT NULL,
	`FAQ_title`	varchar(50)	NOT NULL,
	`FAQ_contents`	varchar(255)	NOT NULL
);

CREATE TABLE `Notice` (
	`notice_key`	int	NOT NULL,
	`category_key`	bigint	NOT NULL,
	`notice_title`	varchar(50)	NOT NULL,
	`notice_content`	varchar(255)	NOT NULL,
	`notice_date`	timestamp	NOT NULL
);

CREATE TABLE `Storeguide` (
	`store_key`	bigint	NOT NULL,
	`category_key`	bigint	NOT NULL,
	`store_name`	varchar(50)	NOT NULL,
	`store_address`	varchar(100)	NOT NULL,
	`store_contact`	varchar(15)	NOT NULL
);

CREATE TABLE `OneToOne_Inquiry` (
	`inquiry_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL,
	`category_key`	bigint	NOT NULL,
	`inquiry_title`	varchar(50)	NOT NULL,
	`inquiry_content`	varchar(50)	NOT NULL,
	`inquiry_type`	varchar(255)	NOT NULL,
	`inquiry_date`	timestamp	NOT NULL
);

CREATE TABLE `Product_Inquiry` (
	`product_inquiry_key`	bigint	NOT NULL,
	`product_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL,
	`product_inquiry_title`	varchar(50)	NOT NULL,
	`product_inquiry_content`	varchar(255)	NOT NULL,
	`product_time`	timestamp	NOT NULL
);

CREATE TABLE `Recent_search` (
	`member_key`	bigint	NOT NULL,
	`search_history`	varchar(255)	NULL
);

CREATE TABLE `Details_of_application` (
	`details_of_application_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL,
	`product_name`	varchar(50)	NOT NULL,
	`application_datetime`	timestamp	NOT NULL,
	`is_prize`	boolean	NOT NULL	DEFAULT False
);

CREATE TABLE `Refund` (
	`refund_key`	bigint	NOT NULL,
	`customer_key`	bigint	NOT NULL,
	`refund_date`	timestamp	NOT NULL,
	`refund_end_date`	timestamp	NULL,
	`refund_status`	varchar(20)	NOT NULL,
	`refund_money`	int	NOT NULL,
	`refund_point`	int	NULL,
	`refund_delivery_fee`	int	NULL,
	`refund_option`	varchar(20)	NOT NULL,
	`refund_bank`	varchar(20)	NOT NULL,
	`refund_account`	varchar(30)	NOT NULL,
	`refund_account_owner`	varchar(20)	NOT NULL
);

CREATE TABLE `Exchange` (
	`exchange_key`	bigint	NOT NULL,
	`customer_key`	bigint	NOT NULL,
	`exchange_date`	timestamp	NOT NULL,
	`exchange_end_date`	timestamp	NULL,
	`exchange_status`	varchar(20)	NOT NULL
);

CREATE TABLE `Product_category` (
	`category_key`	bigint	NOT NULL,
	`super_category_key`	bigint	NULL,
	`category_name`	varchar(50)	NOT NULL
);

CREATE TABLE `Coupon_member_subtable` (
	`CMsub_key`	bigint	NOT NULL,
	`coupon_key`	bigint	NOT NULL,
	`member_key`	bigint	NOT NULL,
	`count`	int	NOT NULL
);

ALTER TABLE `Member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`member_key`
);

ALTER TABLE `Customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`customer_key`
);

ALTER TABLE `Product` ADD CONSTRAINT `PK_PRODUCT` PRIMARY KEY (
	`product_key`
);

ALTER TABLE `Order` ADD CONSTRAINT `PK_ORDER` PRIMARY KEY (
	`order_key`
);

ALTER TABLE `Category` ADD CONSTRAINT `PK_CATEGORY` PRIMARY KEY (
	`customer_category_key`
);

ALTER TABLE `Cart` ADD CONSTRAINT `PK_CART` PRIMARY KEY (
	`cart_key`
);

ALTER TABLE `Wishlist` ADD CONSTRAINT `PK_WISHLIST` PRIMARY KEY (
	`wishlist_key`
);

ALTER TABLE `Delivery` ADD CONSTRAINT `PK_DELIVERY` PRIMARY KEY (
	`delivery_addr_key`
);

ALTER TABLE `Review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`review_key`
);

ALTER TABLE `Cart_Product_subtable` ADD CONSTRAINT `PK_CART_PRODUCT_SUBTABLE` PRIMARY KEY (
	`CPsub_key`,
	`cart_key`,
	`product_key`
);

ALTER TABLE `Wishlist_Product_subtable` ADD CONSTRAINT `PK_WISHLIST_PRODUCT_SUBTABLE` PRIMARY KEY (
	`WPsub_key`,
	`wishlist_key`,
	`product_key`
);

ALTER TABLE `OrderDetail` ADD CONSTRAINT `PK_ORDERDETAIL` PRIMARY KEY (
	`order_detail_key`,
	`product_key`,
	`order_key`
);

ALTER TABLE `MemberGrade` ADD CONSTRAINT `PK_MEMBERGRADE` PRIMARY KEY (
	`grade_key`
);

ALTER TABLE `Coupon` ADD CONSTRAINT `PK_COUPON` PRIMARY KEY (
	`coupon_key`
);

ALTER TABLE `Coupon_use_condition` ADD CONSTRAINT `PK_COUPON_USE_CONDITION` PRIMARY KEY (
	`coupon_use_condition_key`
);

ALTER TABLE `FAQ` ADD CONSTRAINT `PK_FAQ` PRIMARY KEY (
	`FAQ_key`
);

ALTER TABLE `Notice` ADD CONSTRAINT `PK_NOTICE` PRIMARY KEY (
	`notice_key`
);

ALTER TABLE `Storeguide` ADD CONSTRAINT `PK_STOREGUIDE` PRIMARY KEY (
	`store_key`
);

ALTER TABLE `OneToOne_Inquiry` ADD CONSTRAINT `PK_ONETOONE_INQUIRY` PRIMARY KEY (
	`inquiry_key`
);

ALTER TABLE `Product_Inquiry` ADD CONSTRAINT `PK_PRODUCT_INQUIRY` PRIMARY KEY (
	`product_inquiry_key`
);

ALTER TABLE `Recent_search` ADD CONSTRAINT `PK_RECENT_SEARCH` PRIMARY KEY (
	`member_key`
);

ALTER TABLE `Details_of_application` ADD CONSTRAINT `PK_DETAILS_OF_APPLICATION` PRIMARY KEY (
	`details_of_application_key`
);

ALTER TABLE `Refund` ADD CONSTRAINT `PK_REFUND` PRIMARY KEY (
	`refund_key`
);

ALTER TABLE `Exchange` ADD CONSTRAINT `PK_EXCHANGE` PRIMARY KEY (
	`exchange_key`
);

ALTER TABLE `Product_category` ADD CONSTRAINT `PK_PRODUCT_CATEGORY` PRIMARY KEY (
	`category_key`
);

ALTER TABLE `Coupon_member_subtable` ADD CONSTRAINT `PK_COUPON_MEMBER_SUBTABLE` PRIMARY KEY (
	`CMsub_key`,
	`coupon_key`,
	`member_key`
);

ALTER TABLE `Cart_Product_subtable` ADD CONSTRAINT `FK_Cart_TO_Cart_Product_subtable_1` FOREIGN KEY (
	`cart_key`
)
REFERENCES `Cart` (
	`cart_key`
);

ALTER TABLE `Cart_Product_subtable` ADD CONSTRAINT `FK_Product_TO_Cart_Product_subtable_1` FOREIGN KEY (
	`product_key`
)
REFERENCES `Product` (
	`product_key`
);

ALTER TABLE `Wishlist_Product_subtable` ADD CONSTRAINT `FK_Wishlist_TO_Wishlist_Product_subtable_1` FOREIGN KEY (
	`wishlist_key`
)
REFERENCES `Wishlist` (
	`wishlist_key`
);

ALTER TABLE `Wishlist_Product_subtable` ADD CONSTRAINT `FK_Product_TO_Wishlist_Product_subtable_1` FOREIGN KEY (
	`product_key`
)
REFERENCES `Product` (
	`product_key`
);

ALTER TABLE `OrderDetail` ADD CONSTRAINT `FK_Product_TO_OrderDetail_1` FOREIGN KEY (
	`product_key`
)
REFERENCES `Product` (
	`product_key`
);

ALTER TABLE `OrderDetail` ADD CONSTRAINT `FK_Order_TO_OrderDetail_1` FOREIGN KEY (
	`order_key`
)
REFERENCES `Order` (
	`order_key`
);

ALTER TABLE `Recent_search` ADD CONSTRAINT `FK_Member_TO_Recent_search_1` FOREIGN KEY (
	`member_key`
)
REFERENCES `Member` (
	`member_key`
);

ALTER TABLE `Coupon_member_subtable` ADD CONSTRAINT `FK_Coupon_TO_Coupon_member_subtable_1` FOREIGN KEY (
	`coupon_key`
)
REFERENCES `Coupon` (
	`coupon_key`
);

ALTER TABLE `Coupon_member_subtable` ADD CONSTRAINT `FK_Member_TO_Coupon_member_subtable_1` FOREIGN KEY (
	`member_key`
)
REFERENCES `Member` (
	`member_key`
);