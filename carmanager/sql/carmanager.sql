-- 회원
DROP TABLE IF EXISTS members RESTRICT;

-- 차량
DROP TABLE IF EXISTS makers RESTRICT;

-- 주유기록
DROP TABLE IF EXISTS refuel RESTRICT;

-- 소모품
DROP TABLE IF EXISTS goods RESTRICT;

-- 게시물
DROP TABLE IF EXISTS boards RESTRICT;

-- 내차
DROP TABLE IF EXISTS garage RESTRICT;

-- 차량별소모품
DROP TABLE IF EXISTS mygoods RESTRICT;

-- 사진
DROP TABLE IF EXISTS photoes RESTRICT;

-- 댓글
DROP TABLE IF EXISTS comments RESTRICT;

-- 차종
DROP TABLE IF EXISTS model RESTRICT;

-- 회원
CREATE TABLE members (
	mno   INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
	email VARCHAR(40)  NOT NULL COMMENT '이메일', -- 이메일
	nick  VARCHAR(50)  NOT NULL COMMENT '닉네임', -- 닉네임
	pwd   VARCHAR(255) NOT NULL COMMENT '패스워드', -- 패스워드
	photo VARCHAR(255) NULL     COMMENT '사진', -- 사진
	grade INTEGER      NOT NULL DEFAULT 0 COMMENT '회원등급' -- 회원등급
)
COMMENT '회원';

-- 회원
ALTER TABLE members
	ADD CONSTRAINT PK_members -- 회원 기본키
		PRIMARY KEY (
			mno -- 회원번호
		);

-- 회원 유니크 인덱스
CREATE UNIQUE INDEX UIX_members
	ON members ( -- 회원
		email ASC -- 이메일
	);

-- 회원 유니크 인덱스2
CREATE UNIQUE INDEX UIX_members2
	ON members ( -- 회원
		nick ASC -- 닉네임
	);

-- 회원 인덱스
CREATE INDEX IX_members
	ON members( -- 회원
		mno ASC -- 회원번호
	);

ALTER TABLE members
	MODIFY COLUMN mno INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 차량
CREATE TABLE makers (
	mkno  INTEGER     NOT NULL COMMENT '제조사번호', -- 제조사번호
	maker VARCHAR(50) NOT NULL COMMENT '제조사' -- 제조사
)
COMMENT '차량';

-- 차량
ALTER TABLE makers
	ADD CONSTRAINT PK_makers -- 차량 기본키
		PRIMARY KEY (
			mkno -- 제조사번호
		);

ALTER TABLE makers
	MODIFY COLUMN mkno INTEGER NOT NULL AUTO_INCREMENT COMMENT '제조사번호';

-- 주유기록
CREATE TABLE refuel (
	rno    INTEGER NOT NULL COMMENT '주유번호', -- 주유번호
	grno   INTEGER NOT NULL COMMENT '내차번호', -- 내차번호
	ref_dt DATE    NOT NULL COMMENT '주유날짜', -- 주유날짜
	mile   INTEGER NOT NULL COMMENT '주행거리', -- 주행거리
	cost   INTEGER NOT NULL COMMENT '주유금액', -- 주유금액
	liter  FLOAT   NULL     COMMENT '주유량' -- 주유량
)
COMMENT '주유기록';

-- 주유기록
ALTER TABLE refuel
	ADD CONSTRAINT PK_refuel -- 주유기록 기본키
		PRIMARY KEY (
			rno -- 주유번호
		);

ALTER TABLE refuel
	MODIFY COLUMN rno INTEGER NOT NULL AUTO_INCREMENT COMMENT '주유번호';

-- 소모품
CREATE TABLE goods (
	gno    INTEGER     NOT NULL COMMENT '소모품번호', -- 소모품번호
	gname  VARCHAR(50) NOT NULL COMMENT '이름', -- 이름
	l_mile INTEGER     NOT NULL COMMENT '수명거리' -- 수명거리
)
COMMENT '소모품';

-- 소모품
ALTER TABLE goods
	ADD CONSTRAINT PK_goods -- 소모품 기본키
		PRIMARY KEY (
			gno -- 소모품번호
		);

ALTER TABLE goods
	MODIFY COLUMN gno INTEGER NOT NULL AUTO_INCREMENT COMMENT '소모품번호';

-- 게시물
CREATE TABLE boards (
	bno     INTEGER      NOT NULL COMMENT '게시물번호', -- 게시물번호
	mno     INTEGER      NOT NULL COMMENT '작성자', -- 작성자
	title   VARCHAR(100) NOT NULL COMMENT '제목', -- 제목
	content TEXT         NOT NULL COMMENT '내용', -- 내용
	cre_dt  DATETIME     NOT NULL COMMENT '작성일시', -- 작성일시
	cate    VARCHAR(255) NOT NULL COMMENT '카테고리', -- 카테고리
	likes   INTEGER      NOT NULL COMMENT '추천수', -- 추천수
	views   INTEGER      NOT NULL COMMENT '조회수' -- 조회수
)
COMMENT '게시물';

-- 게시물
ALTER TABLE boards
	ADD CONSTRAINT PK_boards -- 게시물 기본키
		PRIMARY KEY (
			bno -- 게시물번호
		);

-- 게시물 인덱스
CREATE INDEX IX_boards
	ON boards( -- 게시물
		cate ASC -- 카테고리
	);

-- 게시물 인덱스2
CREATE INDEX IX_boards2
	ON boards( -- 게시물
		title ASC -- 제목
	);

ALTER TABLE boards
	MODIFY COLUMN bno INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시물번호';

-- 내차
CREATE TABLE garage (
	grno   INTEGER     NOT NULL COMMENT '내차번호', -- 내차번호
	mdno   INTEGER     NOT NULL COMMENT '모델번호', -- 모델번호
	mno    INTEGER     NOT NULL COMMENT '회원번호', -- 회원번호
	c_nick VARCHAR(50) NOT NULL COMMENT '별명', -- 별명
	mile   INTEGER     NOT NULL COMMENT '주행거리' -- 주행거리
)
COMMENT '내차';

-- 내차
ALTER TABLE garage
	ADD CONSTRAINT PK_garage -- 내차 기본키
		PRIMARY KEY (
			grno -- 내차번호
		);

-- 내차 인덱스
CREATE INDEX IX_garage
	ON garage( -- 내차
		mno ASC -- 회원번호
	);

ALTER TABLE garage
	MODIFY COLUMN grno INTEGER NOT NULL AUTO_INCREMENT COMMENT '내차번호';

-- 차량별소모품
CREATE TABLE mygoods (
	mgno   INTEGER NOT NULL COMMENT '소모품교체번호', -- 소모품교체번호
	grno   INTEGER NOT NULL COMMENT '내차번호', -- 내차번호
	gno    INTEGER NOT NULL COMMENT '소모품번호', -- 소모품번호
	c_mile INTEGER NOT NULL COMMENT '교체시거리', -- 교체시거리
	chn_dt DATE    NULL     COMMENT '교체일' -- 교체일
)
COMMENT '차량별소모품';

-- 차량별소모품
ALTER TABLE mygoods
	ADD CONSTRAINT PK_mygoods -- 차량별소모품 기본키
		PRIMARY KEY (
			mgno -- 소모품교체번호
		);

ALTER TABLE mygoods
	MODIFY COLUMN mgno INTEGER NOT NULL AUTO_INCREMENT COMMENT '소모품교체번호';

-- 사진
CREATE TABLE photoes (
	pno   INTEGER      NOT NULL COMMENT '사진번호', -- 사진번호
	photo VARCHAR(255) NULL     COMMENT '사진', -- 사진
	bno   INTEGER      NOT NULL COMMENT '게시물번호' -- 게시물번호
)
COMMENT '사진';

-- 사진
ALTER TABLE photoes
	ADD CONSTRAINT PK_photoes -- 사진 기본키
		PRIMARY KEY (
			pno -- 사진번호
		);

ALTER TABLE photoes
	MODIFY COLUMN pno INTEGER NOT NULL AUTO_INCREMENT COMMENT '사진번호';

-- 댓글
CREATE TABLE comments (
	cmno    INTEGER  NOT NULL COMMENT '댓글번호', -- 댓글번호
	bno     INTEGER  NOT NULL COMMENT '게시물번호', -- 게시물번호
	mno     INTEGER  NOT NULL COMMENT '댓글작성자', -- 댓글작성자
	content TEXT     NOT NULL COMMENT '내용', -- 내용
	cre_dt  DATETIME NOT NULL COMMENT '작성일시' -- 작성일시
)
COMMENT '댓글';

-- 댓글
ALTER TABLE comments
	ADD CONSTRAINT PK_comments -- 댓글 기본키
		PRIMARY KEY (
			cmno -- 댓글번호
		);

-- 댓글 인덱스
CREATE INDEX IX_comments
	ON comments( -- 댓글
		bno ASC -- 게시물번호
	);

ALTER TABLE comments
	MODIFY COLUMN cmno INTEGER NOT NULL AUTO_INCREMENT COMMENT '댓글번호';

-- 차종
CREATE TABLE model (
	mdno  INTEGER     NOT NULL COMMENT '모델번호', -- 모델번호
	model VARCHAR(50) NOT NULL COMMENT '모델명', -- 모델명
	trim  VARCHAR(50) NULL     COMMENT '세부모델', -- 세부모델
	fuel  VARCHAR(10) NOT NULL COMMENT '연료종류', -- 연료종류
	effi  FLOAT       NOT NULL COMMENT '공인연비', -- 공인연비
	mkno  INTEGER     NOT NULL COMMENT '제조사번호' -- 제조사번호
)
COMMENT '차종';

-- 차종
ALTER TABLE model
	ADD CONSTRAINT PK_model -- 차종 기본키
		PRIMARY KEY (
			mdno -- 모델번호
		);

-- 차종 유니크 인덱스
CREATE UNIQUE INDEX UIX_model
	ON model ( -- 차종
		model ASC -- 모델명
	);

ALTER TABLE model
	MODIFY COLUMN mdno INTEGER NOT NULL AUTO_INCREMENT COMMENT '모델번호';

-- 주유기록
ALTER TABLE refuel
	ADD CONSTRAINT FK_garage_TO_refuel -- 내차 -> 주유기록
		FOREIGN KEY (
			grno -- 내차번호
		)
		REFERENCES garage ( -- 내차
			grno -- 내차번호
		);

-- 게시물
ALTER TABLE boards
	ADD CONSTRAINT FK_members_TO_boards -- 회원 -> 게시물
		FOREIGN KEY (
			mno -- 작성자
		)
		REFERENCES members ( -- 회원
			mno -- 회원번호
		);

-- 내차
ALTER TABLE garage
	ADD CONSTRAINT FK_members_TO_garage -- 회원 -> 내차
		FOREIGN KEY (
			mno -- 회원번호
		)
		REFERENCES members ( -- 회원
			mno -- 회원번호
		);

-- 내차
ALTER TABLE garage
	ADD CONSTRAINT FK_model_TO_garage -- 차종 -> 내차
		FOREIGN KEY (
			mdno -- 모델번호
		)
		REFERENCES model ( -- 차종
			mdno -- 모델번호
		);

-- 차량별소모품
ALTER TABLE mygoods
	ADD CONSTRAINT FK_goods_TO_mygoods -- 소모품 -> 차량별소모품
		FOREIGN KEY (
			gno -- 소모품번호
		)
		REFERENCES goods ( -- 소모품
			gno -- 소모품번호
		);

-- 차량별소모품
ALTER TABLE mygoods
	ADD CONSTRAINT FK_garage_TO_mygoods -- 내차 -> 차량별소모품
		FOREIGN KEY (
			grno -- 내차번호
		)
		REFERENCES garage ( -- 내차
			grno -- 내차번호
		);

-- 사진
ALTER TABLE photoes
	ADD CONSTRAINT FK_boards_TO_photoes -- 게시물 -> 사진
		FOREIGN KEY (
			bno -- 게시물번호
		)
		REFERENCES boards ( -- 게시물
			bno -- 게시물번호
		);

-- 댓글
ALTER TABLE comments
	ADD CONSTRAINT FK_boards_TO_comments -- 게시물 -> 댓글
		FOREIGN KEY (
			bno -- 게시물번호
		)
		REFERENCES boards ( -- 게시물
			bno -- 게시물번호
		);

-- 댓글
ALTER TABLE comments
	ADD CONSTRAINT FK_members_TO_comments -- 회원 -> 댓글
		FOREIGN KEY (
			mno -- 댓글작성자
		)
		REFERENCES members ( -- 회원
			mno -- 회원번호
		);

-- 차종
ALTER TABLE model
	ADD CONSTRAINT FK_makers_TO_model -- 차량 -> 차종
		FOREIGN KEY (
			mkno -- 제조사번호
		)
		REFERENCES makers ( -- 차량
			mkno -- 제조사번호
		);