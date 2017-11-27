/* 회원 */
DROP TABLE user;
/* 게시글 */
DROP TABLE posting;
/* 블로그 */
DROP TABLE blog;
/* 관심사 */
DROP TABLE favorite;
/* 회원관심사 */
DROP TABLE userfavorite;
/* 팔로잉 */
DROP TABLE following;
/* 보관 */
DROP TABLE keeping;
/* 댓글 */
DROP TABLE comment;
/* 전체테마설정 */
DROP TABLE theme;
/* 블랙리스트 */
DROP TABLE blacklist;
/* 해시태그 */
DROP TABLE hashtag;
/* 신고 */
DROP TABLE bad;
/* 관심사세분류 */
DROP TABLE favoritedetail;
   
-- 시퀀스 생성
DROP SEQUENCE user_seq;       -- 회원번호
DROP SEQUENCE posting_seq;    -- 게시글번호
DROP SEQUENCE blog_seq;       -- 블로그번호
DROP SEQUENCE favorite_seq;   -- 관심사번호
DROP SEQUENCE comment_seq;    -- 댓글번호