
CREATE TABLE 도식
(
  CountryCode    VARCHAR(200) NOT NULL COMMENT '국가 코드',
  Name           VARCHAR(200) NULL     COMMENT '이름',
  Continent      VARCHAR(200) NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  SurfaceArea    INT          NULL     COMMENT '면적',
  IndepYear      INT          NULL     COMMENT '독립연도',
  Population     INT          NULL     COMMENT '인구',
  LifeExpectancy INT          NULL     COMMENT '기대수명',
  GNP            INT          NULL     COMMENT '국민총생산',
  GNPOld         INT          NULL     COMMENT '전년도국민총생산',
  LocalName      VARCHAR(200) NULL     COMMENT '현지이름',
  GovernmentForm VARCHAR(200) NULL     COMMENT '정부형태',
  HeadOfState    VARCHAR(200) NULL     COMMENT '국가원수',
  PRIMARY KEY (CountryCode)
) COMMENT '국가';

CREATE TABLE 도식1
(
  ID          INT          NULL     COMMENT '번호',
  Name        VARCHAR(200) NULL     COMMENT '도시 이름',
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드',
  District    VARCHAR(200) NULL     COMMENT '구역',
  Population  INT          NULL     COMMENT '인구수'
) COMMENT '도시';

CREATE TABLE 도식2
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드',
  Language    VARCHAR(200) NULL     COMMENT '사용 언어',
  IsOfficial  BOOLEAN      NULL     COMMENT '공식 여부',
  Percentage  FLOAT        NULL     COMMENT '사용 비율'
) COMMENT '국가 공용어';

ALTER TABLE 도식2
  ADD CONSTRAINT FK_도식_TO_도식2
    FOREIGN KEY (CountryCode)
    REFERENCES 도식 (CountryCode);

ALTER TABLE 도식1
  ADD CONSTRAINT FK_도식_TO_도식1
    FOREIGN KEY (CountryCode)
    REFERENCES 도식 (CountryCode);
