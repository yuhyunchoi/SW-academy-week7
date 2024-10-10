-- 사람 삽입
INSERT INTO person (person_key, name, birthdate, gender, registration_number) VALUES 
(1, '남길동', '1913-09-14', '남', '130914-*******'),
(2, '남석환', '1954-05-14', '남', '540514-*******'),
(3, '박한나', '1955-10-22', '여', '551022-*******'),
(4, '남기준', '1979-05-10', '남', '790510-*******'),
(5, '이주은', '1982-08-21', '여', '820821-*******'),
(6, '이선미', '1985-12-05', '여', '851205-*******'),
(7, '남기석', '2012-03-15', '남', '120315-*******');

-- 주소 기록 삽입
INSERT INTO address_history (address_history_key, person_key, address, address_regist_date) VALUES 
(1, 1, '경기도 성남시 분당구 대왕판교로645번길', '1913-09-14'),
(2, 2, '경기도 성남시 분당구 대왕판교로645번길', '1954-05-14'),
(3, 3, '서울특별시 중구 세종대로 110번길', '1955-10-22'),
(4, 4, '경기도 성남시 분당구 대왕판교로645번길', '2013-03-05'),
(5, 5, '경기도 수원시 팔달구 효원로 1번길', '1982-08-21'),
(6, 6, '경기도 수원시 팔달구 효원로 1번길', '1985-12-05'),
(7, 7, '경기도 성남시 분당구 대왕판교로645번길', '2012-03-15'),
(8, 4, '경기도 성남시 분당구 불정로 90번길', '2009-10-31'),
(9, 4, '서울시 동자구 상도로 940번길', '2007-10-31');

-- 가족 세부 관계 삽입
INSERT INTO relation_info (relation_info_key, relation_info) VALUES 
(1, '본인'),
(2, '부'),
(3, '모'),
(4, '배우자'),
(5, '자녀');

-- 세대 세부 관계 삽입
INSERT INTO household_relation (household_relation_key, household_relation) VALUES 
(1, '본인'),
(2, '부'),
(3, '모'),
(4, '배우자'),
(5, '자녀'),
(6, '동거인');

-- 변동사유 삽입
INSERT INTO reason_for_change (change_key, reason) VALUES 
(1, '출생등록'),  
(2, '세대분리'), 
(3, '전입');

-- 세대 구성 삽입
INSERT INTO household (household_key, person_key, household_relation_key) VALUES 
(1, 4, 1), -- 남기준 세대 본인 남기준
(1, 5, 4), -- 남기준 세대 배우자 이주은
(1, 7, 5), -- 남기준 세대 자녀 남기석
(1, 6, 6); -- 남기준 세대 동거인 이선미

-- 세대 신고 기록 삽입
INSERT INTO household_report_history (address_history_key, change_key, person_key, regist_date) VALUES 
(1, 1, 7, '2012-03-15'),  -- 남기석 출생등록
(2, 2, 4, '2009-10-02'),  -- 남기준 세대분리
(3, 3, 5, '2010-02-15'),  -- 이주은 전입
(4, 3, 6, '2015-11-29'); -- 이선미 전입

-- 가족 관계 삽입
INSERT INTO relation (relation_key, relation_inf_key, person_key) VALUES 
-- 남길동 기준
(1, 1, 1), -- 남길동 본인
(1, 5, 2), -- 남길동 자녀 남석환
-- 남석환 기준
(2, 1, 2), -- 남석환 본인
(2, 2, 1), -- 남석환 부 남길동
(2, 4, 3), -- 남석환 배우자 박한나
(2, 5, 4), -- 남석환 자녀 남기준
-- 박한나 기준
(3, 1, 3), -- 박한나 본인
(3, 4, 2), -- 박한나 배우자 남석환
(3, 5, 4), -- 박한나 자녀 남기준
-- 남기준 기준
(4, 1, 4), -- 남기준 본인
(4, 2, 2), -- 남기준 부 남석환
(4, 3, 3), -- 남기준 모 박한나
(4, 4, 5), -- 남기준 배우자 이주은
(4, 5, 7), -- 남기준 자녀 남기석
-- 이주은 기준
(5, 1, 5), -- 이주은 본인
(5, 5, 7), -- 이주은 자녀 남기석
-- 이선미 기준
(6, 1, 6), -- 이선미 본인
-- 남기석 기준
(7, 1, 7), -- 남기석 본인
(7, 2, 4), -- 남기석 부 남기준
(7, 3, 5); -- 남기석 모 이주은

-- 증명서 종류 삽입
INSERT INTO certificate_type (certificate_type_key,certificate_type) VALUES
(1, '가족관계증명서'),
(2, '주민등록등본');

-- 증명서 발급 삽입
INSERT INTO certificate (certificate_key, certificate_type_key, person_key, certificate_no, certificate_date) VALUES 
(1, 1, 4, 1234567890123456, '2021-10-25'), -- 남기준의 가족관계증명서
(2, 2, 4, 9876543210987654, '2021-10-25'); -- 남기준의 주민등록등본

-- 사망 장소 정보 삽입
INSERT INTO place_of_death (place_of_death_key, place_of_death_classification) VALUES
(1, '주택'),
(2, '의료기관'),
(3, '사회복지시설(양로원, 고아원 등)'),
(4, '산업장'),
(5, '공공시설(학교, 운동장 등)'),
(6, '도로'),
(7, '상업/서비스시설(상점, 호텔 등)'),
(8, '농장(논밭, 축사, 양식장 등)'),
(9, '병원 이송 중 사망'),
(10, '기타');

-- 사망 신고인 자격 정보 삽입
INSERT INTO registered_person_of_death_qualification (register_qualif_key, qualification_type) VALUES
(1, '동거친족'),
(2, '비동거친족'),
(3, '동거자'),
(4, '기타');

-- 사망 신고인 정보 삽입
INSERT INTO registered_person_of_death (register_key, register_qualif_key, name, registration_number, phone, email) VALUES
(1, 2, '남석환', '540514-*******', '010-2345-6789', NULL);

-- 사망 정보 삽입
INSERT INTO death (person_key, place_of_death_key, register_key, death_date, death_regist_date, place_of_death_location) VALUES
(1, 1, 1, '2021-04-29 09:03:00', '2021-05-02', '강원도 고성군 금강산로 290번길'); -- 남길동 사망 정보

-- 출생 장소 정보 삽입
INSERT INTO place_of_birth (place_of_birth_key, place_of_birth_location) VALUES
(1, '자택'),
(2, '병원'),
(3, '기타');

-- 출생 신고인 자격 정보 삽입
INSERT INTO registered_person_of_birth_qualification (register_qualif_key, qualification_type) VALUES
(1, '부'),
(2, '모'),
(3, '호주'),
(4, '동거친족'),
(5, '기타');

-- 출생 신고인 정보 삽입
INSERT INTO registered_person_of_birth (registered_person_of_birth_key, register_qualif_key, name, resident_registration_number, cellphone, email) VALUES
(1, 1, '남기준', '790510-*******', '010-1234-5678', 'nam@nhnad.co.kr');

-- 출생 정보 삽입
INSERT INTO birth (person_key, place_of_birth_key, registered_person_of_birth_key, birthdate, original_address, birth_regist_date) VALUES
(7, 2, 1, '2012-03-15 14:59:00', '경기도 성남시 분당구 대왕판교로645번길', '2012-03-17'); -- 남기석 출생 정보



-- **가족관계 증명서** ------------------------------------------------------
-- 증명서 발급
SELECT 
    c.certificate_date AS 발급일,
    c.certificate_no AS 증명서확인번호,
    ah.address AS 등록기준지
FROM certificate c
JOIN person p ON c.person_key = p.person_key
JOIN address_history ah ON p.person_key = ah.person_key
WHERE c.certificate_key = 1  -- 남기준의 가족관계증명서
    AND p.name = '남기준'
    AND ah.address_regist_date = (
        SELECT MAX(ah1.address_regist_date)
        FROM address_history ah1
        WHERE ah1.person_key = p.person_key
            AND ah1.address_regist_date <= c.certificate_date
    )
ORDER BY 
    c.certificate_date DESC
LIMIT 1;

-- 가족관계
SELECT 
    ri.relation_info AS 구분,
    p.name AS 성명,
    p.birthdate AS 출생연월일,
    p.registration_number AS 주민등록번호,
    p.gender AS 성별
FROM relation r
JOIN relation_info ri ON r.relation_inf_key = ri.relation_info_key
JOIN person p ON r.person_key = p.person_key
WHERE r.relation_key = 4 -- 남기준의 relation_key
ORDER BY FIELD(r.relation_inf_key, 1, 2, 3, 4, 5);  -- 본인, 부, 모, 배우자, 자녀 순으로 정렬
-- -------------------------------------------------------------------

-- **주민등록 등본** ------------------------------------------------------
-- 증명서 발급
SELECT 
    c.certificate_date AS 발급일,
    c.certificate_no AS 증명서확인번호,
    p.name AS 세대주성명,
    hr.reason AS 세대구성사유,
    hrh.regist_date AS 세대구성일자
FROM certificate c
JOIN person p ON c.person_key = p.person_key
JOIN household h ON p.person_key = h.person_key
JOIN household_report_history hrh ON h.person_key = hrh.person_key
JOIN reason_for_change hr ON hrh.change_key = hr.change_key
WHERE c.certificate_key = 2  -- 남기준의 주민등록등본
    AND p.name = '남기준'
    AND hrh.regist_date = (
        SELECT MAX(hrh1.regist_date)
        FROM household_report_history hrh1
        WHERE hrh1.person_key = p.person_key
			AND hrh1.regist_date <= c.certificate_date
    )
ORDER BY hrh.regist_date DESC  -- 신고일 기준 내림차순 정렬
LIMIT 1;

-- 세대주 주소
SELECT 
	CASE WHEN ah.address_regist_date = (
    SELECT MAX(address_regist_date) 
	FROM address_history 
	WHERE person_key = h.person_key) THEN '현주소' ELSE '이전주소' END AS 주소유형,
	ah.address AS 주소,
    ah.address_regist_date AS 신고일
FROM household h
JOIN address_history ah ON h.person_key = ah.person_key
WHERE h.household_relation_key = 1  -- 세대주인 경우
    AND h.person_key = 4 -- 남기준의 person_key
ORDER BY ah.address_regist_date DESC;

-- 세대원 정보
SELECT 
    hrp.household_relation AS 세대주관계,
    p.name AS 성명,
    p.registration_number AS 주민등록번호,
    hrh.regist_date AS 신고일,
    hr.reason AS 변동사유
FROM household h
JOIN person p ON h.person_key = p.person_key
JOIN household_relation hrp ON h.household_relation_key = hrp.household_relation_key
JOIN household_report_history hrh ON h.person_key = hrh.person_key
JOIN reason_for_change hr ON hrh.change_key = hr.change_key
WHERE h.household_key = (
	SELECT household_key 
    FROM household 
    WHERE person_key = 4  -- 남기석의 person_key
    )
ORDER BY FIELD(hrp.household_relation_key, 1, 4, 5, 6);  -- 본인, 배우자, 자녀, 동거인 순으로 정렬
-- -------------------------------------------------------------------

-- **출생 신고서** ------------------------------------------------------
-- 출생자 정보
SELECT 
	b.birth_regist_date AS 출생신고일,
    p.name AS 출생자성명,
    p.gender AS 성별,
    b.birthdate AS 출생일시,
    pb.place_of_birth_location AS 출생장소,
    ah.address AS 등록기준지
FROM birth b
JOIN person p ON b.person_key = p.person_key
JOIN place_of_birth pb ON b.place_of_birth_key = pb.place_of_birth_key
JOIN address_history ah ON p.person_key = ah.person_key
WHERE p.person_key = 7; -- 남기석의 person_key

-- 부모 정보
SELECT 
    ri.relation_info AS 관계,
    p.name AS 성명,
    p.registration_number AS 주민등록번호
FROM relation r
JOIN relation_info ri ON r.relation_inf_key = ri.relation_info_key
JOIN person p ON r.person_key = p.person_key
WHERE r.relation_key IN (
	SELECT relation_key 
	FROM relation 
	WHERE person_key = 7  -- 남기석의 person_key
	  AND relation_inf_key = 1  -- 자신 기준
    ) AND r.relation_inf_key IN (2, 3);  -- 2: 부, 3: 모
    
-- 출생신고인 정보
SELECT 
    p.name AS 신고인성명,
    p.registration_number AS 신고인주민등록번호,
    rpbq.qualification_type AS 신고인자격,
    rpb.email AS 신고인이메일,
    rpb.cellphone AS 신고인전화번호
FROM registered_person_of_birth rpb
JOIN registered_person_of_birth_qualification rpbq ON rpb.register_qualif_key = rpbq.register_qualif_key
JOIN person p ON rpb.name = p.name
WHERE rpb.registered_person_of_birth_key = 1; -- 남기준의 출생신고인 key
-- -------------------------------------------------------------------

-- **사망 신고서** ------------------------------------------------------
-- 사망자 정보
SELECT 
    d.death_regist_date AS 사망신고일,
    p.name AS 사망자성명,
    p.registration_number AS 주민등록번호,
    d.death_date AS 사망일시,
    pod.place_of_death_classification AS 사망장소구분,
    d.place_of_death_location AS 사망장소주소
FROM death d
JOIN person p ON d.person_key = p.person_key
JOIN place_of_death pod ON d.place_of_death_key = pod.place_of_death_key
WHERE d.person_key = 1; -- 남길동의 person_key
    
-- 사망신고인 정보
SELECT 
    rpd.name AS 신고인성명,
    rpd.registration_number AS 신고인주민등록번호,
    rpdq.qualification_type AS 신고인자격,
    rpd.email AS 신고인이메일,
    rpd.phone AS 신고인전화번호
FROM registered_person_of_death rpd
JOIN registered_person_of_death_qualification rpdq ON rpd.register_qualif_key = rpdq.register_qualif_key
WHERE rpd.register_key = 1; -- 남석환의 register_key
-- -------------------------------------------------------------------

