package com.icia.tour.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.tour.dto.CommentDTO;
import com.icia.tour.dto.InquiryDTO;
import com.icia.tour.dto.PythonDTO;
import com.icia.tour.dto.SearchDTO;
import com.icia.tour.dto.TourDTO;
import com.icia.tour.service.TourService;

@Controller
public class TourController {
    
    @Autowired
    private TourService tsvc;
    
    private ModelAndView mav;
    
    @Autowired
    private HttpSession session;
    
    // 홈 페이지로 이동
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String home() {
        return "index";
    }
    
    // 인덱스 페이지로 이동
    @RequestMapping(value="/index", method=RequestMethod.GET)
    public String index() {
        return "index";
    }
    
    // about 페이지로 이동
    @RequestMapping(value="/about", method=RequestMethod.GET)
    public String about() {
        return "about";
    }
    
    // contact 페이지로 이동
    @RequestMapping(value="/contact", method=RequestMethod.GET)
    public String contact() {
        return "contact";
    }
    
    // elements 페이지로 이동
    @RequestMapping(value="/elements", method=RequestMethod.GET)
    public String elements() {
        return "elements";
    }
   // 문의글 상세보기 페이지로 이동
    @RequestMapping(value="/iView", method=RequestMethod.GET)
    public String iView() {
        return "iview";
    }
    
    // 회원가입 페이지로 이동
    @RequestMapping(value="/join", method=RequestMethod.GET)
    public String join() {
        return "join";
    }
    
    // 로그인 페이지로 이동
    @RequestMapping(value="/login", method=RequestMethod.GET)
    public String login() {
        return "login";
    }
    
    // 서비스 페이지로 이동
    @RequestMapping(value="/services", method=RequestMethod.GET)
    public String services() {
        return "services";
    }
    
    // 내 정보 페이지로 이동
    @RequestMapping(value="/view", method=RequestMethod.GET)
    public String myInfo() {
        return "view";
    }
    // 회원목록 페이지로 이동
    @RequestMapping(value="/list", method=RequestMethod.GET)
    public String list() {
        return "list";
    }
   

    // 아이디 중복 체크
    @RequestMapping(value = "/idCheck", method = RequestMethod.POST)
    public @ResponseBody String idCheck(@RequestParam("mId") String mId) {
        String result = tsvc.idCheck(mId);
        return result;
    }
    
    // 회원가입 처리
    @RequestMapping(value="/join", method=RequestMethod.POST)
    public ModelAndView join(@ModelAttribute TourDTO tour) {
        mav = tsvc.join(tour);
        return mav;
    }
    
    // 로그인 처리
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute TourDTO tour) {
        mav = tsvc.login(tour);
        return mav;
    }
    
    // 회원 정보 조회
    @RequestMapping(value = "/mView", method = RequestMethod.GET)
    public ModelAndView mView(@RequestParam("mId") String mId) {
        System.out.println("[1] JSP -> 컨트롤러: mId = " + mId);
        mav = tsvc.mView(mId);
        System.out.println("[4] 컨트롤러 -> JSP: mav = " + mav);
        return mav;
    }
    public ModelAndView mList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "list", required = false, defaultValue = "5") int limit) {
		return mav = tsvc.mList(page, limit);
    }

    // 로그아웃 처리
    @RequestMapping(value = "/mLogout", method = RequestMethod.GET)
    public String logout() {
        session.invalidate();
        return "index";
    }
       
  // 패키지 리스트 페이지로 이동
  @RequestMapping(value="/packages", method=RequestMethod.GET)
  public ModelAndView packageList(@RequestParam(value="page", required=false, defaultValue="1") int page,
  @RequestParam(value="limit", required=false, defaultValue="5") int limit) {
  return tsvc.packageList(page, limit);
  	} 
    
    // 패키지 상세 정보 조회
    @RequestMapping(value="/detailList", method=RequestMethod.GET)
    public ModelAndView detailList(@RequestParam("pname") String pname) {
        return tsvc.detailList(pname);
    }
    
    // 지도 데이터 삽입
    @RequestMapping(value="/insertMaps", method=RequestMethod.POST)
    public String insertMaps(@RequestBody List<PythonDTO> tour) {
        tsvc.insertMaps(tour);
        return "index";
    }
    
    //pSearch : 상세 페이지 검색
    @RequestMapping(value="/pSearch", method=RequestMethod.GET)
    public ModelAndView pSearch(@ModelAttribute SearchDTO search) {
        return tsvc.pSearch(search);
    }
 // mSearch : 회원검색
 	@RequestMapping(value="/mSearch", method=RequestMethod.GET)
 	public ModelAndView mSearch(@ModelAttribute SearchDTO search) {
 		mav = tsvc.mSearch(search);
 		return mav;
 	}
//commentList : 댓글 목록 불러오기
    @RequestMapping(value="/commentList", method=RequestMethod.POST)
    public @ResponseBody List<CommentDTO> commentList(@RequestParam("cpnum") int cpnum) {
        return tsvc.commentList(cpnum);
    }
    
    //cwrite : 댓글 등록
    @RequestMapping(value="/cwrite", method=RequestMethod.POST)
    public @ResponseBody List<CommentDTO> cwrite(@ModelAttribute CommentDTO comment) {
        return tsvc.cwrite(comment);
    }
    
    //detailmodify : 댓글 수정
    @RequestMapping(value="/detailmodify", method=RequestMethod.POST)
    public @ResponseBody List<CommentDTO> detailmodify(@ModelAttribute CommentDTO comment) {
        return tsvc.detailmodify(comment);
    }
    
    //detaildelete : 댓글 삭제
    @RequestMapping(value="/detaildelete", method=RequestMethod.POST)
    public @ResponseBody List<CommentDTO> detaildelete(@ModelAttribute CommentDTO comment) {
        return tsvc.detaildelete(comment);
    }

 // bList 페이징처리
 	@RequestMapping(value = "/adminContactList", method = RequestMethod.GET)
 	public ModelAndView adminContactList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
 			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
 		mav = tsvc.adminContactList(page, limit);
 		return mav;
 	}
 // iSearch : 문의글검색
  	@RequestMapping(value="/iSearch", method=RequestMethod.GET)
  	public ModelAndView iSearch(@ModelAttribute SearchDTO search) {
  		mav = tsvc.iSearch(search);
  		return mav;
  	}
 // 문의작성 메소드
    @RequestMapping(value = "/contact", method = RequestMethod.POST)
	public ModelAndView contact(@ModelAttribute InquiryDTO inquiry) {
    	System.out.println("[1] JSP -> 컨트롤러: " + inquiry);
		mav = tsvc.contact(inquiry);
		System.out.println("[5]service → controller : " + mav);
		return mav;
	}
    // 문의정보 상세보기 메소드
    @RequestMapping(value = "/IView", method = RequestMethod.GET)
	public ModelAndView IView(@RequestParam("INum") int INum) {
		mav = tsvc.IView(INum);
		return mav;
	}
    
}
