--상품 테이블
create table product_list(
	p_no number(38) primary key		--상품 번호
	,p_name varchar2(50) not null	--상품 이름
	,p_before_price number(38) not null --할인 전 가격
	,p_price number(38) not null	--상품 가격
	,p_amount number(38) not null	--상품 수량
	,p_sold number(38) default 0	--결제 수량
	,p_img1 varchar2(150) not null	--상품 이미지
	,p_img2 varchar2(150) not null	--상품 이미지(마우스 오버)
	,p_choice number(38) default 0	--상품 추천유무 (0,1) 0은 추천x, 1은 추천 o
	,p_class varchar2(30) not null	--상위 카테고리 (ex: Bed)
	,p_category varchar2(30) not null--하위 카테고리 (ex: Single)
	,p_date date					--상품 등록 날짜
);
select * from PRODUCT_list;

drop table product_list;

insert into product_list values(1,'2',1,1,1,1,'2','2',1,'2','1',sysdate);

create sequence product_no_seq
start with 1 -- 1부터 시작
increment by 1 --1씩 증가
nocache; --임시 메모리 사용하지 않겠다는 뜻

drop sequence product_no_seq;
