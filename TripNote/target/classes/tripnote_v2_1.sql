/* 회원 */
CREATE TABLE users (
	user_no NUMBER NOT NULL, /* 회원번호 */
	user_email VARCHAR2(50), /* 회원이메일 */
	user_nickname VARCHAR2(50), /* 회원닉네임 */
	user_pw VARCHAR2(50), /* 회원비밀번호 */
	user_birth VARCHAR2(8), /* 회원생년월일 */
	user_adminyn CHAR(1) DEFAULT 'N' /* 회원관리자여부(관리자:Y, 일반회원:N) */
);

COMMENT ON TABLE users IS '회원';

COMMENT ON COLUMN users.user_no IS '회원번호';

COMMENT ON COLUMN users.user_email IS '회원이메일';

COMMENT ON COLUMN users.user_nickname IS '회원닉네임';

COMMENT ON COLUMN users.user_pw IS '회원비밀번호';

COMMENT ON COLUMN users.user_birth IS '회원생년월일';

COMMENT ON COLUMN users.user_adminyn IS '회원관리자여부(관리자:Y, 일반회원:N)';

CREATE UNIQUE INDEX PK_users
	ON users (
		user_no ASC
	);

ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			user_no
		);

/* 게시글 */
CREATE TABLE posting (
	posting_no NUMBER NOT NULL, /* 게시글번호 */
	posting_title VARCHAR2(50), /* 게시글제목 */
	posting_content VARCHAR2(1000), /* 게시글내용 */
	posting_date DATE DEFAULT sysdate, /* 게시글날짜 */
	posting_uploadpath VARCHAR2(50), /* 게시글업로드경로 */
	posting_hitcount NUMBER DEFAULT 0, /* 게시글누적조회수 */
	posting_weekly_hitcount NUMBER DEFAULT 0, /* 게시글주간조회수 */
	posting_likecount NUMBER DEFAULT 0, /* 게시글좋아요횟수 */
	posting_badcount NUMBER DEFAULT 0, /* 게시글신고횟수 */
	posting_location VARCHAR2(500), /* 게시글위치정보 */
	user_no NUMBER, /* 회원번호 */
	blog_no NUMBER /* 블로그번호 */
);

COMMENT ON TABLE posting IS '게시글';

COMMENT ON COLUMN posting.posting_no IS '게시글번호';

COMMENT ON COLUMN posting.posting_title IS '게시글제목';

COMMENT ON COLUMN posting.posting_content IS '게시글내용';

COMMENT ON COLUMN posting.posting_date IS '게시글날짜';

COMMENT ON COLUMN posting.posting_uploadpath IS '게시글업로드경로';

COMMENT ON COLUMN posting.posting_hitcount IS '게시글누적조회수';

COMMENT ON COLUMN posting.posting_weekly_hitcount IS '게시글주간조회수';

COMMENT ON COLUMN posting.posting_likecount IS '게시글좋아요횟수';

COMMENT ON COLUMN posting.posting_badcount IS '게시글신고횟수';

COMMENT ON COLUMN posting.posting_location IS '게시글위치정보';

COMMENT ON COLUMN posting.user_no IS '회원번호';

COMMENT ON COLUMN posting.blog_no IS '블로그번호';

CREATE UNIQUE INDEX PK_posting
	ON posting (
		posting_no ASC
	);

ALTER TABLE posting
	ADD
		CONSTRAINT PK_posting
		PRIMARY KEY (
			posting_no
		);

/* 블로그 */
CREATE TABLE blog (
	blog_no NUMBER NOT NULL, /* 블로그번호 */
	user_no NUMBER NOT NULL, /* 회원번호 */
	blog_title VARCHAR2(20), /* 블로그제목 */
	blog_detail VARCHAR2(50), /* 블로그설명 */
	blog_profile_photo VARCHAR2(50), /* 블로그프로필사진 */
	blog_title_photo VARCHAR2(50), /* 블로그대문사진 */
	blog_font VARCHAR2(20), /* 블로그글꼴 */
	blog_backgroundcolor VARCHAR2(20), /* 블로그배경색 */
	blog_titlecolor VARCHAR2(20) /* 블로그제목색 */
);

COMMENT ON TABLE blog IS '블로그';

COMMENT ON COLUMN blog.blog_no IS '블로그번호';

COMMENT ON COLUMN blog.user_no IS '회원번호';

COMMENT ON COLUMN blog.blog_title IS '블로그제목';

COMMENT ON COLUMN blog.blog_detail IS '블로그설명';

COMMENT ON COLUMN blog.blog_profile_photo IS '블로그프로필사진';

COMMENT ON COLUMN blog.blog_title_photo IS '블로그대문사진';

COMMENT ON COLUMN blog.blog_font IS '블로그글꼴';

COMMENT ON COLUMN blog.blog_backgroundcolor IS '블로그배경색';

COMMENT ON COLUMN blog.blog_titlecolor IS '블로그제목색';

CREATE UNIQUE INDEX PK_blog
	ON blog (
		blog_no ASC,
		user_no ASC
	);

ALTER TABLE blog
	ADD
		CONSTRAINT PK_blog
		PRIMARY KEY (
			blog_no,
			user_no
		);

/* 관심사 */
CREATE TABLE favorite (
	favorite_no NUMBER NOT NULL, /* 관심사번호 */
	favorite_keyword VARCHAR2(10), /* 관심사키워드 */
	favorite_useyn CHAR(1) DEFAULT 'Y' /* 관심사사용여부(Y/N) */
);

COMMENT ON TABLE favorite IS '관심사';

COMMENT ON COLUMN favorite.favorite_no IS '관심사번호';

COMMENT ON COLUMN favorite.favorite_keyword IS '관심사키워드';

COMMENT ON COLUMN favorite.favorite_useyn IS '관심사사용여부(Y/N)';

CREATE UNIQUE INDEX PK_favorite
	ON favorite (
		favorite_no ASC
	);

ALTER TABLE favorite
	ADD
		CONSTRAINT PK_favorite
		PRIMARY KEY (
			favorite_no
		);

/* 회원관심사 */
CREATE TABLE userfavorite (
	user_no NUMBER NOT NULL, /* 회원번호 */
	favorite_no NUMBER NOT NULL /* 관심사번호 */
);

COMMENT ON TABLE userfavorite IS '회원관심사';

COMMENT ON COLUMN userfavorite.user_no IS '회원번호';

COMMENT ON COLUMN userfavorite.favorite_no IS '관심사번호';

CREATE UNIQUE INDEX PK_userfavorite
	ON userfavorite (
		user_no ASC,
		favorite_no ASC
	);

ALTER TABLE userfavorite
	ADD
		CONSTRAINT PK_userfavorite
		PRIMARY KEY (
			user_no,
			favorite_no
		);

/* 팔로잉 */
CREATE TABLE following (
	user_no NUMBER, /* 회원번호 */
	following_user_no VARCHAR2(20) /* 팔로잉회원번호 */
);

COMMENT ON TABLE following IS '팔로잉';

COMMENT ON COLUMN following.user_no IS '회원번호';

COMMENT ON COLUMN following.following_user_no IS '팔로잉회원번호';

/* 보관 */
CREATE TABLE keeping (
	user_no NUMBER NOT NULL, /* 회원번호 */
	posting_no NUMBER NOT NULL /* 게시글번호 */
);

COMMENT ON TABLE keeping IS '보관';

COMMENT ON COLUMN keeping.user_no IS '회원번호';

COMMENT ON COLUMN keeping.posting_no IS '게시글번호';

CREATE UNIQUE INDEX PK_keeping
	ON keeping (
		user_no ASC,
		posting_no ASC
	);

ALTER TABLE keeping
	ADD
		CONSTRAINT PK_keeping
		PRIMARY KEY (
			user_no,
			posting_no
		);

/* 댓글 */
CREATE TABLE comments (
	comment_no NUMBER NOT NULL, /* 댓글번호 */
	comment_content VARCHAR2(500), /* 댓글내용 */
	posting_no NUMBER, /* 게시글번호 */
	user_no NUMBER /* 회원번호 */
);

COMMENT ON TABLE comments IS '댓글';

COMMENT ON COLUMN comments.comment_no IS '댓글번호';

COMMENT ON COLUMN comments.comment_content IS '댓글내용';

COMMENT ON COLUMN comments.posting_no IS '게시글번호';

COMMENT ON COLUMN comments.user_no IS '회원번호';

CREATE UNIQUE INDEX PK_comments
	ON comments (
		comment_no ASC
	);

ALTER TABLE comments
	ADD
		CONSTRAINT PK_comments
		PRIMARY KEY (
			comment_no
		);

/* 전체테마설정 */
CREATE TABLE theme (
	theme_font VARCHAR2(20), /* 테마글꼴 */
	theme_backgroundcolor VARCHAR2(20), /* 테마배경색 */
	theme_titlecolor VARCHAR2(20), /* 테마제목색 */
	theme_categorycolor VARCHAR2(20) /* 테마카테고리색 */
);

COMMENT ON TABLE theme IS '전체테마설정';

COMMENT ON COLUMN theme.theme_font IS '테마글꼴';

COMMENT ON COLUMN theme.theme_backgroundcolor IS '테마배경색';

COMMENT ON COLUMN theme.theme_titlecolor IS '테마제목색';

COMMENT ON COLUMN theme.theme_categorycolor IS '테마카테고리색';

/* 블랙리스트 */
CREATE TABLE blacklist (
	user_email VARCHAR2(50), /* 회원이메일 */
	ban_reason VARCHAR2(500), /* 강제탈퇴사유 */
	ban_date DATE DEFAULT sysdate /* 강제탈퇴날짜 */
);

COMMENT ON TABLE blacklist IS '블랙리스트';

COMMENT ON COLUMN blacklist.user_email IS '회원이메일';

COMMENT ON COLUMN blacklist.ban_reason IS '강제탈퇴사유';

COMMENT ON COLUMN blacklist.ban_date IS '강제탈퇴날짜';

/* 해시태그 */
CREATE TABLE hashtag (
	posting_no NUMBER, /* 게시글번호 */
	tag VARCHAR2(50) /* 태그명 */
);

COMMENT ON TABLE hashtag IS '해시태그';

COMMENT ON COLUMN hashtag.posting_no IS '게시글번호';

COMMENT ON COLUMN hashtag.tag IS '태그명';

/* 신고 */
CREATE TABLE bad (
	posting_no NUMBER, /* 게시글번호 */
	posting_badreason VARCHAR2(500) /* 게시글신고사유 */
);

COMMENT ON TABLE bad IS '신고';

COMMENT ON COLUMN bad.posting_no IS '게시글번호';

COMMENT ON COLUMN bad.posting_badreason IS '게시글신고사유';

/* 관심사세분류 */
CREATE TABLE favoritedetail (
	favorite_no NUMBER, /* 관심사번호 */
	favorite_detail VARCHAR2(20) /* 관심사키워드세분류 */
);

COMMENT ON TABLE favoritedetail IS '관심사세분류';

COMMENT ON COLUMN favoritedetail.favorite_no IS '관심사번호';

COMMENT ON COLUMN favoritedetail.favorite_detail IS '관심사키워드세분류';

ALTER TABLE posting
	ADD
		CONSTRAINT FK_blog_TO_posting
		FOREIGN KEY (
			blog_no,
			user_no
		)
		REFERENCES blog (
			blog_no,
			user_no
		);

ALTER TABLE blog
	ADD
		CONSTRAINT FK_users_TO_blog
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE userfavorite
	ADD
		CONSTRAINT FK_users_TO_userfavorite
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE userfavorite
	ADD
		CONSTRAINT FK_favorite_TO_userfavorite
		FOREIGN KEY (
			favorite_no
		)
		REFERENCES favorite (
			favorite_no
		);

ALTER TABLE following
	ADD
		CONSTRAINT FK_users_TO_following
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE keeping
	ADD
		CONSTRAINT FK_users_TO_keeping
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE keeping
	ADD
		CONSTRAINT FK_posting_TO_keeping
		FOREIGN KEY (
			posting_no
		)
		REFERENCES posting (
			posting_no
		);

ALTER TABLE comments
	ADD
		CONSTRAINT FK_posting_TO_comments
		FOREIGN KEY (
			posting_no
		)
		REFERENCES posting (
			posting_no
		);

ALTER TABLE comments
	ADD
		CONSTRAINT FK_users_TO_comments
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE hashtag
	ADD
		CONSTRAINT FK_posting_TO_hashtag
		FOREIGN KEY (
			posting_no
		)
		REFERENCES posting (
			posting_no
		);

ALTER TABLE bad
	ADD
		CONSTRAINT FK_posting_TO_bad
		FOREIGN KEY (
			posting_no
		)
		REFERENCES posting (
			posting_no
		);

ALTER TABLE favoritedetail
	ADD
		CONSTRAINT FK_favorite_TO_favoritedetail
		FOREIGN KEY (
			favorite_no
		)
		REFERENCES favorite (
			favorite_no
		);
        
-- 시퀀스 생성
CREATE SEQUENCE user_seq;       -- 회원번호
CREATE SEQUENCE posting_seq;    -- 게시글번호
CREATE SEQUENCE blog_seq;       -- 블로그번호
CREATE SEQUENCE favorite_seq;   -- 관심사번호
CREATE SEQUENCE comment_seq;    -- 댓글번호