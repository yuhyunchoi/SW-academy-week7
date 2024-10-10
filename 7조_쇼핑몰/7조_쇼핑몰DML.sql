-- DML
INSERT INTO `Customer` (`customer_key`, `name`, `phone`, `email`) VALUES
(1, 'Alice Smith', '123-456-7890', 'alice.smith@example.com'),
(2, 'Bob Johnson', '234-567-8901', 'bob.johnson@example.com'),
(3, 'Carol White', '345-678-9012', 'carol.white@example.com'),
(4, 'David Brown', '456-789-0123', 'david.brown@example.com'),
(5, 'Eve Black', '567-890-1234', 'eve.black@example.com'),
(6, 'Frank Green', '678-901-2345', 'frank.green@example.com'),
(7, 'Grace Harris', '789-012-3456', 'grace.harris@example.com'),
(8, 'Henry Lewis', '890-123-4567', 'henry.lewis@example.com'),
(9, 'Ivy Walker', '901-234-5678', 'ivy.walker@example.com'),
(10, 'Jack Hall', '012-345-6789', 'jack.hall@example.com'),
(11, 'Karen Young', '123-456-7891', 'karen.young@example.com'),
(12, 'Leo King', '234-567-8902', 'leo.king@example.com'),
(13, 'Mia Wright', '345-678-9013', 'mia.wright@example.com'),
(14, 'Nick Adams', '456-789-0124', 'nick.adams@example.com'),
(15, 'Olivia Clark', '567-890-1235', 'olivia.clark@example.com'),
(16, 'Paul Turner', '678-901-2346', 'paul.turner@example.com'),
(17, 'Quincy Hill', '789-012-3457', 'quincy.hill@example.com'),
(18, 'Rita Scott', '890-123-4568', 'rita.scott@example.com'),
(19, 'Steve Young', '901-234-5679', 'steve.young@example.com'),
(20, 'Tina Moore', '012-345-6790', 'tina.moore@example.com');

INSERT INTO `Member` (`member_key`, `customer_key`, `member_id`, `member_pw`, `resident_number`, `member_address`, `name`, `email`, `phone`, `point`, `balance`) VALUES
(1, 1, 'alice01', 'securepassword', '111111-1111111', '123 Main St', 'Alice Smith', 'alice.smith@example.com', '123-456-7890', 100, 5000),
(2, 2, 'bob02', 'strongpassword', '222222-2222222', '456 Elm St', 'Bob Johnson', 'bob.johnson@example.com', '234-567-8901', 200, 10000),
(3, 3, 'carol03', 'bestpassword', '333333-3333333', '789 Pine St', 'Carol White', 'carol.white@example.com', '345-678-9012', 150, 7500),
(4, 4, 'david04', 'mypassword', '444444-4444444', '101 Maple St', 'David Brown', 'david.brown@example.com', '456-789-0123', 180, 8000),
(5, 5, 'eve05', 'password123', '555555-5555555', '202 Oak St', 'Eve Black', 'eve.black@example.com', '567-890-1234', 90, 4000),
(6, 6, 'frank06', 'supersecure', '666666-6666666', '303 Cedar St', 'Frank Green', 'frank.green@example.com', '678-901-2345', 250, 12000),
(7, 7, 'grace07', 'newpassword', '777777-7777777', '404 Birch St', 'Grace Harris', 'grace.harris@example.com', '789-012-3456', 110, 5500),
(8, 8, 'henry08', 'anotherpass', '888888-8888888', '505 Walnut St', 'Henry Lewis', 'henry.lewis@example.com', '890-123-4567', 130, 6000),
(9, 9, 'ivy09', 'mypassword123', '999999-9999999', '606 Cherry St', 'Ivy Walker', 'ivy.walker@example.com', '901-234-5678', 160, 7000),
(10, 10, 'jack10', 'yourpassword', '111111-2222222', '707 Willow St', 'Jack Hall', 'jack.hall@example.com', '012-345-6789', 175, 8500);

INSERT INTO `Product_category` (`category_key`, `super_category_key`, `category_name`) VALUES
(1, NULL, 'Men'),
(2, NULL, 'Women'),
(3, NULL, 'Kids'),
(4, NULL, 'Collaboration'),
(5, NULL, 'SPORTS'),
(6, 1, 'Featured'),
(7, 6, 'New'),
(8, 6, 'Best'),
(9, 1, 'Shoes'),
(10, 9, '라이프스타일'),
(11, 9, '러닝');

INSERT INTO `Product` (`product_key`, `category_key`, `product_name`, `price`, `saleprice`, `description`, `number_of_product`, `is_deleted`, `product_image`, `product_rate`, `manufacturer`, `purchase_benefits`, `card_benefits`) VALUES
(1, 6, 'Reebok X RAWROW 3WAY STRING DUFFLE BAG - 핑크', 99000, 99000, '탈착 가능한 스트랩으로 숄더백으로 활용가능', 50, False, '1.png', 4.6, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(2, 6, 'Reebok X RAWROW 3WAY STRING DUFFLE BAG - 네이비', 99000, 99000, '탈착 가능한 스트랩으로 숄더백으로 활용가능', 50, False, '2.png', 4.6, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(3, 6, 'Reebok X RAWROW 3WAY STRING DUFFLE BAG - 블랙', 99000, 99000, '탈착 가능한 스트랩으로 숄더백으로 활용가능', 50, False, '3.png', 4.6, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(4, 10, '스매쉬 엣지 - 화이트 / 100208245 - 230', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '4.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(5, 10, '스매쉬 엣지 - 화이트 / 100208245 - 235', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '5.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(6, 10, '스매쉬 엣지 - 화이트 / 100208245 - 240', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '6.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(7, 10, '스매쉬 엣지 - 화이트 / 100208245 - 260', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '7.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(8, 10, '스매쉬 엣지 - 화이트 / 100208245 - 265', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '8.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(9, 10, '스매쉬 엣지 - 화이트 / 100208245 - 270', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '9.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(10, 10, '스매쉬 엣지 - 블랙 / 100208245 - 230', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '10.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(11, 10, '스매쉬 엣지 - 블랙 / 100208245 - 235', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '11.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(12, 10, '스매쉬 엣지 - 블랙 / 100208245 - 240', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '12.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(13, 10, '스매쉬 엣지 - 블랙 / 100208245 - 260', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '13.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(14, 10, '스매쉬 엣지 - 블랙 / 100208245 - 265', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '14.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(15, 10, '스매쉬 엣지 - 블랙 / 100208245 - 270', 89000, 89000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '15.png', 4.8, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(16, 11, '펌프 패리스 - 실버 / 100204587 - 260', 139000, 139000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '16.png', 4.5, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(17, 11, '펌프 패리스 - 실버 / 100204587 - 265', 139000, 139000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '17.png', 4.5, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능'),
(18, 11, '펌프 패리스 - 실버 / 100204587 - 270', 139000, 139000, '클래식한 테니스에서 영감을 받은 스니커즈', 50, False, '18.png', 4.5, '(주)LF', '리클럽 가입시 신규, 생일쿠폰/구매금액 5% 포인트 적립', '일반할부 12개월 가능');

INSERT INTO `Order` (`order_key`, `customer_key`, `order_date`, `order_total_price`, `order_require`, `order_product`, `order_img`, `order_info`, `receiver_name`, `receiver_phone`, `order_address`, `address_detail`, `zip_code`, `delivery_fee`, `discount_and_point`) VALUES
(1, 1, '2024-08-01 10:00:00', 99000, 'Leave at the front door', 'Reebok X RAWROW 3WAY STRING DUFFLE BAG - 핑크', '1.png', 'Paid', 'Alice Smith', '123-456-7890', '123 Main St', 'Apt 1', '12345', 0, 0),
(2, 2, '2024-08-02 12:30:00', 178000, 'Call on arrival', 'Reebok X RAWROW 3WAY STRING DUFFLE BAG - 네이비', '2.png', '카드결제', 'Bob Johnson', '234-567-8901', '456 Elm St', 'Apt 2', '23456', 0, 0),
(3, 3, '2024-08-03 15:45:00', 178000, 'Ring the doorbell', '스매쉬 엣지 - 화이트 / 100208245 - 230', '4.png', '카드결제', 'Carol White', '345-678-9012', '789 Pine St', 'Apt 3', '34567', 0, 0),
(4, 4, '2024-08-04 09:20:00', 178000, 'Leave with the neighbor', '스매쉬 엣지 - 화이트 / 100208245 - 240', '6.png', '카드결제', 'David Brown', '456-789-0123', '101 Maple St', 'Apt 4', '45678', 0, 0),
(5, 5, '2024-08-05 17:10:00', 178000, 'Leave at the reception', '스매쉬 엣지 - 화이트 / 100208245 - 265', '8.png', '카드결제', 'Eve Black', '567-890-1234', '202 Oak St', 'Apt 5', '56789', 0, 0),
(6, 6, '2024-08-06 14:55:00', 178000, 'Leave in the garage', '스매쉬 엣지 - 블랙 / 100208245 - 230', '10.png', '카드결제', 'Frank Green', '678-901-2345', '303 Cedar St', 'Apt 6', '67890', 0, 0),
(7, 7, '2024-08-07 08:30:00', 178000, 'Leave at the door', '스매쉬 엣지 - 블랙 / 100208245 - 240', '12.png', '카드결제', 'Grace Harris', '789-012-3456', '404 Birch St', 'Apt 7', '78901', 0, 0),
(8, 8, '2024-08-08 11:40:00', 178000, 'Leave with the security guard', '스매쉬 엣지 - 블랙 / 100208245 - 265', '14.png', '카드결제', 'Henry Lewis', '890-123-4567', '505 Walnut St', 'Apt 8', '89012', 0, 0),
(9, 9, '2024-08-09 16:25:00', 139000, 'Leave in the mailbox', '펌프 패리스 - 실버 / 100204587 - 260', '16.png', '카드결제', 'Ivy Walker', '901-234-5678', '606 Cherry St', 'Apt 9', '90123', 0, 0),
(10, 10, '2024-08-10 19:15:00', 278000, 'Call on arrival', '펌프 패리스 - 실버 / 100204587 - 265', '17.png', '카드결제', 'Jack Hall', '012-345-6789', '707 Willow St', 'Apt 10', '01234', 0, 0);

INSERT INTO `OrderDetail` (`order_detail_key`, `product_key`, `order_key`, `quantity`) VALUES
(1, 1, 1, 1),  -- Alice Smith ordered 1 Reebok X RAWROW 3WAY STRING DUFFLE BAG - 핑크
(2, 2, 2, 1),  -- Bob Johnson ordered 1 Reebok X RAWROW 3WAY STRING DUFFLE BAG - 네이비
(3, 3, 2, 1),  -- Bob Johnson ordered 1 Reebok X RAWROW 3WAY STRING DUFFLE BAG - 블랙
(4, 4, 3, 1),  -- Carol White ordered 1 스매쉬 엣지 - 화이트 / 100208245 - 230
(5, 5, 3, 1),  -- Carol White ordered 1 스매쉬 엣지 - 화이트 / 100208245 - 235
(6, 6, 4, 1),  -- David Brown ordered 1 스매쉬 엣지 - 화이트 / 100208245 - 240
(7, 7, 4, 1),  -- David Brown ordered 1 스매쉬 엣지 - 화이트 / 100208245 - 260
(8, 8, 5, 1),  -- Eve Black ordered 1 스매쉬 엣지 - 화이트 / 100208245 - 265
(9, 9, 5, 1),  -- Eve Black ordered 1 스매쉬 엣지 - 화이트 / 100208245 - 270
(10, 10, 6, 1),  -- Frank Green ordered 1 스매쉬 엣지 - 블랙 / 100208245 - 230
(11, 11, 6, 1),  -- Frank Green ordered 1 스매쉬 엣지 - 블랙 / 100208245 - 235
(12, 12, 7, 1),  -- Grace Harris ordered 1 스매쉬 엣지 - 블랙 / 100208245 - 240
(13, 13, 7, 1),  -- Grace Harris ordered 1 스매쉬 엣지 - 블랙 / 100208245 - 260
(14, 14, 8, 1),  -- Henry Lewis ordered 1 스매쉬 엣지 - 블랙 / 100208245 - 265
(15, 15, 8, 1),  -- Henry Lewis ordered 1 스매쉬 엣지 - 블랙 / 100208245 - 270
(16, 16, 9, 1),  -- Ivy Walker ordered 1 펌프 패리스 - 실버 / 100204587 - 260
(17, 17, 10, 1),  -- Jack Hall ordered 1 펌프 패리스 - 실버 / 100204587 - 265
(18, 18, 10, 1);  -- Jack Hall ordered 1 펌프 패리스 - 실버 / 100204587 - 270

INSERT INTO `Category` (`customer_category_key`, `super_customer_category_key`, `customer_category_name`) VALUES
-- FAQ 카테고리
(1, NULL, '주문결제'),
(2, NULL, '배송'),
(3, NULL, '교환/반품'),
-- 공지사항 카테고리
(4, NULL, '알림/소식'),
(5, NULL, '이벤트 당첨'),
(6, NULL, '공지'),
-- 매장 안내 카테고리
(7, NULL, '서울'),
(8, NULL, '인천'),
(9, NULL, '경기');

INSERT INTO `Cart` (`cart_key`, `member_key`) VALUES
(1, 1),
(2, 2);

INSERT INTO `Cart_Product_subtable` (`CPsub_key`, `cart_key`, `product_key`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1);

INSERT INTO `Wishlist` (`wishlist_key`, `member_key`) VALUES
(1, 1),
(2, 2);

INSERT INTO `Wishlist_Product_subtable` (`WPsub_key`, `wishlist_key`, `product_key`) VALUES
(1, 1, 8),
(2, 2, 5);

INSERT INTO `Delivery` (`delivery_addr_key`, `member_key`, `name`, `phone_number`, `zip_code`, `request`, `sub_address`, `is_basic_address`) VALUES
(1, 1, 'Alice', '123-456-7890', '12345', 'Leave at the front door', 'Apt 1', True),  -- Alice Smith's Delivery Address
(2, 1, 'Alice', '123-456-7890', '12345', 'Leave in the mailbox', 'Apt 1B', False),  -- Alice Smith's Delivery Address Secondary Address
(3, 2, 'Bob', '234-567-8901', '23456', 'Call on arrival', 'Apt 2', True),  -- Bob Johnson's Delivery Address
(4, 3, 'Carol', '345-678-9012', '34567', 'Ring the doorbell', 'Apt 3', True),  -- Carol White's Delivery Address
(5, 4, 'David', '456-789-0123', '45678', 'Leave with the neighbor', 'Apt 4', True),  -- David Brown's Delivery Address
(6, 5, 'Eve', '567-890-1234', '56789', 'Leave at the reception', 'Apt 5', True),  -- Eve Black's Delivery Address
(7, 6, 'Frank', '678-901-2345', '67890', 'Leave in the garage', 'Apt 6', True),  -- Frank Green's Delivery Address
(8, 7, 'Grace', '789-012-3456', '78901', 'Leave at the door', 'Apt 7', True),  -- Grace Harris's Delivery Address
(9, 8, 'Henry', '890-123-4567', '89012', 'Leave with the security guard', 'Apt 8', True),  -- Henry Lewis's Delivery Address
(10, 9, 'Ivy', '901-234-5678', '90123', 'Leave in the mailbox', 'Apt 9', True),  -- Ivy Walker's Delivery Address
(11, 10, 'Jack', '012-345-6789', '01234', 'Call on arrival', 'Apt 10', True);  -- Jack Hall's Delivery Address

INSERT INTO `Review` (`review_key`, `product_key`, `member_key`, `review`, `review_date`, `review_rate`, `review_image`) VALUES
(1, 1, 1, 'Great duffle bag! The color is vibrant and the material feels durable.', '2024-08-02 10:00:00', 4.5, 'review1.png'),  -- Review for Alice Smith's order of Reebok X RAWROW 3WAY STRING DUFFLE BAG - 핑크
(2, 2, 2, 'The navy color is sleek, and it’s very versatile.', '2024-08-03 13:00:00', 4.7, 'review2.png'),  -- Review for Bob Johnson's order of Reebok X RAWROW 3WAY STRING DUFFLE BAG - 네이비
(3, 3, 2, 'The black version matches everything. Very satisfied!', '2024-08-03 14:00:00', 4.6, 'review3.png'),  -- Review for Bob Johnson's order of Reebok X RAWROW 3WAY STRING DUFFLE BAG - 블랙
(4, 4, 3, 'Comfortable shoes with a classic look. Perfect fit.', '2024-08-04 16:00:00', 4.8, 'review4.png'),  -- Review for Carol White's order of 스매쉬 엣지 - 화이트 / 100208245 - 230
(5, 5, 3, 'The size is just right, and the quality is excellent.', '2024-08-04 17:00:00', 4.9, 'review5.png'),  -- Review for Carol White's order of 스매쉬 엣지 - 화이트 / 100208245 - 235
(6, 6, 4, 'Stylish and comfortable. I love wearing these!', '2024-08-05 09:30:00', 4.7, 'review6.png'),  -- Review for David Brown's order of 스매쉬 엣지 - 화이트 / 100208245 - 240
(7, 7, 4, 'Great value for the price. Would recommend!', '2024-08-05 10:00:00', 4.6, 'review7.png'),  -- Review for David Brown's order of 스매쉬 엣지 - 화이트 / 100208245 - 260
(8, 8, 5, 'The shoes are very comfortable and look great.', '2024-08-06 12:00:00', 4.8, 'review8.png');  -- Review for Eve Black's order of 스매쉬 엣지 - 화이트 / 100208245 - 265

INSERT INTO `Recent_search` (`member_key`, `search_history`) VALUES
(1, '신발'),
(2, '가방');

INSERT INTO `FAQ` (`FAQ_key`, `category_key`, `FAQ_title`, `FAQ_contents`) VALUES
(1, 1, '비회원도 주문할 수 있나요?', '네, 비회원도 주문 가능합니다. '),
(2, 2, '선물 포장 및 쇼핑백 동봉이 가능한가요?', '쇼핑백 동봉 가능합니다. 다만, 온라인 쇼핑몰에서 주문 출고되는 상품의 경우 본사 물류센터에서 직접 출고되기 때문에 별도의 포장 출고는 불가합니다. '),
(3, 3, '불량이나 오배송일때도 배송비를 부담해야 하나요?', '먼저 불량 부분 사진을 찍어 1:1게시판으로 불량 확인 문의 글을 남겨주시고, 사이트 상에 교환 또는 반품으로 신청을 해주시면 사진 확인 후, 접수 및 안내 도와드리겠습니다. ');

INSERT INTO `Notice` (`notice_key`, `category_key`, `notice_title`, `notice_content`, `notice_date`) VALUES
(1, 4, 'Reebok 오프라인 매장 OPEN 프로모션', '리복 신규 오픈 매장에서 한정기간 오픈 프로모션으로 최대 10만원 할인이 진행됩니다. ', '2023-10-25 09:00:00'),
(2, 5, '2024 리복 패밀리위크 오픈 알림 신청 이벤트 당첨자 공지', '리복 패밀리 위크에 참여해 주신 모든 고객님들께 감사드리며, 오픈 알림 신청 이벤트 당첨 결과 발표 드립니다.', '2024-06-10 10:00:00'),
(3, 6, '리복 2023 블랙 프라이데이 배송지연 안내', '블랙 프라이데이 기간 주문량 폭주로 인하여 배송 및 교환/반품 처리가 지연되고 있으며, 배송의 경우 영업일 기준 최대 5~7일까지 소요될 수 있습니다.', '2023-11-21 10:00:00');

INSERT INTO `Storeguide` (`store_key`, `category_key`, `store_name`, `store_address`, `store_contact`) VALUES
(1, 7, '현대 목동', '서울 양천구 목동동로 257 현대백화점 목동점 별관 B3층', '02-2163-3593'),
(2, 8, '리복 모다아울렛 인천점', '인천 서구 북항로32번안길 50 1층', '0507-1461-1446'),
(3, 9, '현대 목동', '서울 양천구 목동동로 257 현대백화점 목동점 별관 B3층', '02-2163-3593');

-- INSERT INTO `Product_Inquiry` (`product_inquiry_key`, `product_key`, `member_key`, `product_inquiry_title`, `product_inquiry_content`, `product_time`) VALUES

-- INSERT INTO `Refund` (`refund_key`, `customer_key`, `refund_date`, `refund_end_date`, `refund_status`, `refund_money`, `refund_point`, `refund_delivery_fee`, `refund_option`, `refund_bank`, `refund_account`, `refund_account_owner`) VALUES

-- INSERT INTO `Exchange` (`exchange_key`, `customer_key`, `exchange_date`, `exchange_end_date`, `exchange_status`) VALUES

-- INSERT INTO `MemberGrade` (`grade_key`, `member_key`, `grade`) VALUES

-- INSERT INTO `Coupon` (`coupon_key`, `coupon_name`, `discount`, `available_range_start`, `available_range_end`, `issue_date`) VALUES

-- INSERT INTO `Coupon_member_subtable` (`CMsub_key`, `coupon_key`, `member_key`, `count`) VALUES

-- INSERT INTO `Coupon_use_condition` (`coupon_use_condition_key`, `coupon_key`, `use_range`, `min_Price_condition`, `is_can_duplicate`) VALUES

-- INSERT INTO `Details_of_application` (`details_of_application_key`, `member_key`, `product_name`, `application_datetime`, `is_prize`) VALUES

-- INSERT INTO `OneToOne_Inquiry` (`inquiry_key`, `member_key`, `category_key`, `inquiry_title`, `inquiry_content`, `inquiry_type`, `inquiry_date`) VALUES


-- 1.고객 key가 3인 고객이 주문한 상품의 이름과 가격을 출력
SELECT p.product_name, p.price
FROM `OrderDetail` od
JOIN `Product` p ON od.product_key = p.product_key
JOIN `Order` o ON od.order_key = o.order_key
WHERE o.customer_key = 3;

-- 2. 회원1의 장바구니에 담긴 상품정보 출력
SELECT p.product_name, p.price, cp.quantity
FROM `Cart_Product_subtable` cp
JOIN `Product` p ON cp.product_key = p.product_key
JOIN `Cart` c ON cp.cart_key = c.cart_key
WHERE c.member_key = 1;

-- 3. 회원2의 찜리스트에 담긴 상품정보 출력
SELECT p.product_name, p.price
FROM `Wishlist_Product_subtable` wp
JOIN `Product` p ON wp.product_key = p.product_key
JOIN `Wishlist` w ON wp.wishlist_key = w.wishlist_key
WHERE w.member_key = 2;

-- 4. 회원5의 주문내역에 대한 리뷰 출력
SELECT r.review, r.review_date, r.review_rate, p.product_name
FROM `Review` r
JOIN `Product` p ON r.product_key = p.product_key
JOIN `OrderDetail` od ON r.product_key = od.product_key
JOIN `Order` o ON od.order_key = o.order_key
WHERE o.customer_key = 5;

-- 5. 회원6의 배송지 정보 출력
SELECT d.name, d.phone_number, d.zip_code, d.request, d.sub_address, d.is_basic_address
FROM `Delivery` d
WHERE d.member_key = 6;

-- 6. 회원2의 최근검색어 출력
SELECT r.search_history
FROM `Recent_search` r
WHERE r.member_key = 2;

-- 7. FAQ 카테고리가 '배송'인 내용 출력
SELECT f.FAQ_title, f.FAQ_contents
FROM `FAQ` f
JOIN `Category` c ON f.category_key = c.customer_category_key
WHERE c.customer_category_name = '배송';

-- 8. 서울에 있는 매장 정보 출력
SELECT s.store_name, s.store_address, s.store_contact
FROM `Storeguide` s
JOIN `Category` c ON s.category_key = c.customer_category_key
WHERE c.customer_category_name = '서울';

-- 9. 특정 회원의 모든 주문 내역과 관련된 제품 정보를 출력
SELECT o.order_key, p.product_name, p.price, od.quantity, o.order_date
FROM `Order` o
JOIN `OrderDetail` od ON o.order_key = od.order_key
JOIN `Product` p ON od.product_key = p.product_key
WHERE o.customer_key = 5; -- 고객 키 변경

-- 10. 특정 제품에 대한 모든 리뷰를 출력
SELECT r.review, r.review_date, r.review_rate, m.name
FROM `Review` r
JOIN `Member` m ON r.member_key = m.member_key
WHERE r.product_key = 5; -- 상품 키 변경

-- 11. 가장 많이 주문된 상품 목록 출력
SELECT p.product_name, SUM(od.quantity) AS total_quantity
FROM `OrderDetail` od
JOIN `Product` p ON od.product_key = p.product_key
GROUP BY p.product_name
ORDER BY total_quantity DESC;

-- 12. 특정 기간 동안의 모든 주문 내역 출력
SELECT o.order_key, c.name, o.order_date, o.order_total_price
FROM `Order` o
JOIN `Customer` c ON o.customer_key = c.customer_key
WHERE o.order_date BETWEEN '2024-08-01' AND '2024-08-05'; -- 날짜 변경

-- 13. 특정 고객의 누적 구매 금액 출력
SELECT c.name, SUM(o.order_total_price) AS total_spent
FROM `Order` o
JOIN `Customer` c ON o.customer_key = c.customer_key
WHERE c.customer_key = 1  -- 고객 키 변경
GROUP BY c.name;

