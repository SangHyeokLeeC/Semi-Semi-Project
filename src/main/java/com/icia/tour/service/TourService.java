package com.icia.tour.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.icia.tour.dao.TourDAO;
import com.icia.tour.dto.CommentDTO;
import com.icia.tour.dto.InquiryDTO;
import com.icia.tour.dto.PackageDTO;
import com.icia.tour.dto.PageDTO;
import com.icia.tour.dto.PythonDTO;
import com.icia.tour.dto.SearchDTO;
import com.icia.tour.dto.TourDTO;

@Service // 이 클래스는 서비스 레이어를 나타냄
public class TourService {

    @Autowired // 의존성 주입
    private TourDAO tdao;

    @Autowired // 의존성 주입
    private HttpServletRequest request;

    @Autowired // 의존성 주입
    private HttpSession session;

    @Autowired // 의존성 주입
    private BCryptPasswordEncoder pwEnc;

    private ModelAndView mav;

    // 파일 저장 경로를 반환하는 메서드
    public String savePath() {
        return request.getServletContext().getRealPath("src/main/webapp/resources/profile/")
                .replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\", "");
    }

    // 아이디 중복 체크 메서드
    public String idCheck(String mId) {
        String result = null;
        String checkId = tdao.idcheck(mId); // DAO를 통해 아이디 중복 체크
        if (checkId == null) { // 아이디가 존재하지 않으면
            result = "OK";
        } else { // 아이디가 존재하면
            result = checkId;
        }
        return result; // 결과 반환
    }

    // 회원가입 메서드
    public ModelAndView join(TourDTO tour) {
        mav = new ModelAndView();
        tour.setMPw(pwEnc.encode(tour.getMPw())); // 비밀번호 암호화
        String mAddr = "(" + tour.getAddr1() + ")" + tour.getAddr2() + "," + tour.getAddr3(); // 주소 합치기
        tour.setMAddr(mAddr); // 주소 설정

        MultipartFile mProfile = tour.getMProfile(); // 프로필 이미지 가져오기
        String savePath = savePath(); // 파일 저장 경로

        if (!mProfile.isEmpty()) { // 프로필 이미지가 비어 있지 않으면
            String uuid = UUID.randomUUID().toString().substring(0, 8); // UUID 생성
            String fileName = mProfile.getOriginalFilename(); // 파일 이름 가져오기
            String mProfileName = uuid + "_" + fileName; // 고유한 파일 이름 생성
            tour.setMProfileName(mProfileName); // 파일 이름 설정

            try {
                mProfile.transferTo(new File(savePath + mProfileName)); // 파일 저장
            } catch (IllegalStateException | IOException e) {
                e.printStackTrace(); // 예외 처리
            }
        } else { // 프로필 이미지가 비어 있으면
            tour.setMProfileName("default.png"); // 기본 이미지 설정
        }

        try {
            tdao.join(tour); // DAO를 통해 회원가입 처리
            mav.setViewName("login"); // 회원가입 성공 시 로그인 페이지로 이동
        } catch (Exception e) {
            e.printStackTrace(); // 예외 처리
            mav.setViewName("join"); // 회원가입 실패 시 회원가입 페이지로 이동
        }
        return mav; // 결과 반환
    }

    // 로그인 메서드
    public ModelAndView login(TourDTO tour) {
        mav = new ModelAndView();
        if (tour.getMId() == null || tour.getMPw() == null) {
            mav.setViewName("login");
            mav.addObject("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
            return mav;
        }

        TourDTO login = tdao.mView(tour.getMId());
        
        
        if (login != null && pwEnc != null && pwEnc.matches(tour.getMPw(), login.getMPw())) {
            mav.setViewName("index");
            session.setAttribute("loginId", login.getMId());
            session.setAttribute("loginProfile", login.getMProfileName());
            session.setAttribute("loginName", login.getMName());
        } else {
            mav.setViewName("login");
            mav.addObject("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
        }
        return mav;
    }

    // 회원 정보 조회 메서드
    public ModelAndView mView(String mId) {
        System.out.println("[2] 컨트롤러 -> 서비스: mId = " + mId);
        mav = new ModelAndView();
        try {
            TourDTO tour = tdao.mView(mId); // DAO를 통해 회원 정보 조회
            if (tour != null) {
                System.out.println("[3] 서비스 -> DAO: TourDTO = " + tour);
                mav.addObject("view", tour); // 모델에 회원 정보 추가
                mav.setViewName("view"); // 회원 정보 페이지로 이동
            } else {
                mav.setViewName("error"); // 회원 정보를 찾지 못한 경우 에러 페이지로 이동
                mav.addObject("message", "회원 정보를 찾을 수 없습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace(); // 예외 처리
            mav.setViewName("error"); // 예외 발생 시 에러 페이지로 이동
            mav.addObject("message", "오류가 발생했습니다. 다시 시도해주세요.");
        }
        System.out.println("[3.5] 서비스 -> 컨트롤러: mav = " + mav);
        return mav; // 결과 반환
    }



    // 지도 데이터 삽입 메서드
    public void insertMaps(List<PythonDTO> tour) {
    	System.out.println("[2] >> " + tour);
        tdao.insertMaps(tour); // DAO를 통해 지도 데이터 삽입
    }


    // 패키지 상세 정보 조회 메서드
    public ModelAndView detailList(String pname) {
        mav = new ModelAndView();
        try {
            PackageDTO p = tdao.detailList(pname); // DAO를 통해 패키지 상세 정보 조회
            if (p != null) {
                mav.addObject("item", p); // 모델에 패키지 정보 추가
                mav.setViewName("detailList"); // 패키지 상세 정보 페이지로 이동
            } else {
                mav.setViewName("error"); // 패키지 정보를 찾지 못한 경우 에러 페이지로 이동
                mav.addObject("message", "패키지 정보를 찾을 수 없습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace(); // 예외 처리
            mav.setViewName("error"); // 예외 발생 시 에러 페이지로 이동
            mav.addObject("message", "오류가 발생했습니다. 다시 시도해주세요.");
        }
        return mav; // 결과 반환
    }
    // 패키지 목록 메소드
	public ModelAndView packageList(int page, int limit) {
		mav = new ModelAndView();
		
		// (1) 한 화면에 보여줄 페이지 번호 갯수
		int block = 5;
		
		// (2) 전체 게시글 갯수 : db에서 조회
		int count = tdao.tCount();
		
		// (3) 최대 페이지
		// ceil은 올림
		int maxPage = (int)Math.ceil((double)count / limit);
		
		// (4) 시작행
		// 1, 2, 3, 4, 5
		// 1, 6, 11, 16, 21
		int startRow = (page - 1) * limit + 1;
		
		// (5) 끝나는 행
		// 5, 10, 15, 20, 25
		int endRow = page * limit;
		
		// (6) 시작 페이지
		int startPage = ((int)Math.ceil((double)page / block)-1) * block + 1;
		
		// (7) 끝나는 페이지
		int endPage = startPage + block - 1;
		if(endPage >= maxPage) {
			endPage = maxPage;
		}

		//페이지 객체 생성
		PageDTO paging = new PageDTO();
		
		//DB로 보낼 정보
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		
		//JSP로 보낼 정보
		paging.setPage(page);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);
		
		List<PackageDTO> packages = tdao.packageList(paging);
		
		mav.setViewName("packageList");
		mav.addObject("list", packages);
		mav.addObject("paging", paging);
		
		return mav;
	}
	//패키지 검색 
	public ModelAndView pSearch(SearchDTO search) {
		mav = new ModelAndView();
		
		List<PackageDTO> searchList = tdao.bSearch(search);

		mav.setViewName("packageList");
		mav.addObject("list", searchList);
		
		return mav;
	}
           // 회원목록
	public ModelAndView mList(int page, int limit) {
		mav = new ModelAndView();
		
		int block = 5;

		int count = tdao.mCount();

		int maxPage = (int) Math.ceil((double) count / limit);

		int startRow = (page - 1) * limit + 1;

		int endRow = page * limit;

		int startPage = ((int) Math.ceil((double) page / block) - 1) * block + 1;

		int endPage = startPage + block - 1;

		if (endPage >= maxPage) {
			endPage = maxPage;
		}

		PageDTO paging = new PageDTO();

		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		paging.setPage(page);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);
		
		List<TourDTO> memberList = tdao.mList(paging);
		
		mav.addObject("memberList", memberList);
		mav.addObject("paging", paging);
		mav.setViewName("list");
		return mav;
	}

	public ModelAndView mSearch(SearchDTO search) {
		mav = new ModelAndView();
		
		List<TourDTO> searchList = tdao.mSearch(search);
		
		mav.addObject("memberList", searchList);
		mav.addObject("pages", 0);
		mav.setViewName("list");
		
		return mav;
	}
    //문의글 작성
	public ModelAndView contact(InquiryDTO inquiry) {
		mav = new ModelAndView();
		System.out.println("[2]controller → service : " + inquiry);
		int result = tdao.contact(inquiry);
		System.out.println("[4]dao → service : " + result);
		if (result > 0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("contact");
		}
		return mav;
	}
    //문의글 상세보기
	public ModelAndView IView(int iNum) {
		mav = new ModelAndView();
		
	    InquiryDTO inquiry = tdao.IView(iNum);

			mav.addObject("view", inquiry);
			mav.setViewName("index");
			mav.setViewName("iview");
		return mav;
	}
     //문의글 목록
	public ModelAndView adminContactList(int page, int limit) {
		mav = new ModelAndView();

		int block = 5;

		int count = tdao.ICtn();
		
		System.out.println("게시글 갯수 : " + count);

		int maxPage = (int) Math.ceil((double) count / limit);

		int startRow = (page - 1) * limit + 1;

		int endRow = page * limit;

		int startPage = ((int) Math.ceil((double) page / block) - 1) * block + 1;

		int endPage = startPage + block - 1;

		if (endPage >= maxPage) {
			endPage = maxPage;
		}
		PageDTO paging = new PageDTO();

		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		paging.setPage(page);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		paging.setLimit(limit);

		List<InquiryDTO> inquiryList = tdao.adminContactList(paging);
		mav.addObject("inquiryList", inquiryList);
		mav.addObject("paging", paging);
		mav.setViewName("adminContactList");

		return mav;
	}

	public ModelAndView iSearch(SearchDTO search) {
		mav = new ModelAndView();

		List<InquiryDTO> searchList = tdao.iSearch(search);

		mav.addObject("inquryList", searchList);
		mav.setViewName("adminContactList");
		return mav;
	}
	public List<CommentDTO> commentList(int cpnum) {
		return tdao.commentList(cpnum);
	}

	public List<CommentDTO> cwrite(CommentDTO comment) {
		tdao.cwrite(comment);
		return tdao.commentList(comment.getCpnum());
	}

	public List<CommentDTO> detailmodify(CommentDTO comment) {
		tdao.detailmodify(comment);
		return tdao.commentList(comment.getCpnum());
	}

	public List<CommentDTO> detaildelete(CommentDTO comment) {
		tdao.detaildelete(comment);
		return tdao.commentList(comment.getCpnum());
	}
}