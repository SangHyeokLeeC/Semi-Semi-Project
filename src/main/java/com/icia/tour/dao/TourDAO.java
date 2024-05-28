package com.icia.tour.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.tour.dto.PackageDTO;
import com.icia.tour.dto.PageDTO;
import com.icia.tour.dto.PythonDTO;
import com.icia.tour.dto.SearchDTO;
import com.icia.tour.dto.TourDTO;
import com.icia.tour.dto.CommentDTO;
import com.icia.tour.dto.InquiryDTO;

@Repository
public class TourDAO {

    @Autowired
    private SqlSessionTemplate sql;

    // 아이디 중복 체크
    public String idcheck(String mId) {
        return sql.selectOne("Tour.idCheck", mId);
    }

    // 회원 가입
    public void join(TourDTO tour) {
        sql.insert("Tour.join", tour);
    }

    // 회원 정보 조회
    public TourDTO mView(String mId) {
        System.out.println("[2.5] 서비스 -> DAO: mId = " + mId);
        TourDTO result = sql.selectOne("Tour.mView", mId);
        System.out.println("[2.6] DAO -> 서비스: result = " + result);
        return result;
    }


    // 지도 데이터 삽입
    public void insertMaps(List<PythonDTO> tour) {
        for(int i=0; i<tour.size(); i++) {
            sql.insert("Tour.insertPackage", tour.get(i));
        }
    }

    // 패키지 리스트 조회
    public List<PythonDTO> packageList() {
        return sql.selectList("Tour.packageList");
    }

    // 패키지 상세 정보 조회
    public PackageDTO detailList(String pname) {
        return sql.selectOne("Tour.detailList", pname);
    }
    
    public List<PackageDTO> bSearch(SearchDTO search) {
		return sql.selectList("Tour.searchList", search);
	}
    
    public int tCount() {
		return sql.selectOne("Tour.listCount");
	}
    
    public List<PackageDTO> packageList(PageDTO paging) {
		return sql.selectList("Tour.packageList", paging);
	}

	public void tHit(String pname) {
		sql.update("Tour.tourHit", pname);
	}

	public List<CommentDTO> commentList(int cpnum) {
		return sql.selectList("Tour.commentList", cpnum);
	}

	public void cwrite(CommentDTO comment) {
		sql.insert("Tour.commentWrite", comment);
	}

	public void detailmodify(CommentDTO comment) {
		sql.update("Tour.detailmodify", comment);
	}

	public void detaildelete(CommentDTO comment) {
		sql.delete("Tour.detaildelete", comment);
	}
	public int mCount() {
		return sql.selectOne("Tour.mCount");
		}

	public List<TourDTO> mSearch(SearchDTO search) {
		return sql.selectList("Tour.mSearch", search);
	}

	// 문의글 작성
	public int contact(InquiryDTO inquiry) {
		System.out.println("[3] service → dao : " + inquiry);
		return sql.insert("Tour.contact", inquiry);
	}
    // 문의글 상세 보기
	public InquiryDTO IView(int iNum) {
		return sql.selectOne("Tour.IView",iNum);
	}
    //
	public int ICtn() {
		return sql.selectOne("Tour.ICtn");
	}
    // adminContactList 페이징 처리
	public List<InquiryDTO> adminContactList(PageDTO paging) {
		return sql.selectList("Tour.adminContactList", paging);
	}
    // 문의글 검색
	public List<InquiryDTO> iSearch(SearchDTO search) {
		return sql.selectList("Tour.iSearch", search);
	}

	public List<TourDTO> mList(PageDTO paging) {
		return sql.selectList("Tour.mList", paging);
	}
}
	