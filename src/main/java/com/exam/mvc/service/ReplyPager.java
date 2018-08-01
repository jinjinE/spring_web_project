package com.exam.mvc.service;

public class ReplyPager {
	//페이지랑 게시글 수 ==> 레코드 수
	public static final int PAGE_SCALE = 3;//10레코드가 페이지1
	//화면당 보여지는 페이지 수 ==> 1블럭
	public static final int BLOCK_SCALE = 10;//1블럭 : 1-10
	//멤버 변수 선언
	private int curPage; // 현재페이지
	private int prevPage; // 이전페이지
	private int nextPage; // 다음 페이지
	private int totPage; //전체 페이지
	
	//블럭
	private int curBlock;///현재 블럭
	private int prevBlock; //이전 블럭
	private int nextBlock; //다음 블럭
	private int totBlock; //전체블럭
	
	//범위
	private int pageBegin; //start
	private int pageEnd; //end
	
	private int blockBegin; //블럭의 시작
	private int blockEnd; //블럭의 끝
	
	//생성자 추가
	public ReplyPager(int count, int curPage) {
		//count : 레코드 갯수
		//curPage : 현재 페이지
		
		curBlock=1;
		this.curPage = curPage;
		setTotPage(count); // 전체 페이지 갯수 계산
		setPageRange(); //페이지 범위
		setTotBlock(); //전체 블럭 계산
		setBlockRange(); //블럭 범위계
	}

	private void setBlockRange() {
		//블럭당 페이지가 1-10, 11-20..
		//현재 블럭 계산 ==> 현재 페이지가 몇번 블럭에 속하는지 계산
		curBlock = (int)Math.ceil((curPage-1)/BLOCK_SCALE)+1;
		//curPage : 현재 페이지 번호
		// ex) curPage : 1 ==> (0/10) + 1 ==> curBlock(1)
		// ex) curPage : 2 ==> ((2-1)/10) + 1 ==> curBlock(1)
		// ex) curPage : 11 ==> ((11-1)/10) + 1 ==> curBlock(2)
		
		blockBegin = (curBlock-1)*BLOCK_SCALE+1;//블럭의 시작위치
		blockEnd = blockBegin+BLOCK_SCALE-1;//블럭의 끝위치
		/*System.out.println(blockBegin);
		System.out.println(blockEnd);*/
		//ex) 1~10 ==> 1, 10 11-20 ==> 11, 20
		//ex) 현재블럭 ==> 2라면 (2-1)*10+1 ==> 11(시작), 11+10-1 ==> 20(끝)
		
		//마지막 블럭은 전체페이지를 넘어가지 않게
		if(blockEnd > totPage) blockEnd = totPage;
		
		prevPage  = (curPage==1)?1:(curBlock-1)*BLOCK_SCALE;
		//이전 버튼울 뉼렀을 때 페이지
		nextPage = curBlock > totBlock ? (curBlock*BLOCK_SCALE):(curBlock*BLOCK_SCALE)+1;
		//다음 버튼을 눌렀을 때 페이지
		if(nextPage>=totPage) nextPage = totPage;
		//마지막 페이지를 넘어가지 않게
		
		
	}

	
	
	private void setTotBlock() {
		totBlock = (int)Math.ceil(totPage/BLOCK_SCALE);
		//전체 페이지 수/ 블럭 수
	}

	private void setPageRange() {
		//페이지 범위 계산 ==> 레코드 갯수로 계산 예정
		pageBegin = (curPage-1)*PAGE_SCALE;
		pageEnd = (pageBegin+PAGE_SCALE);
		System.out.println(pageBegin);
		System.out.println(pageEnd);
		/*System.out.println(pageBegin);
		System.out.println(pageEnd);*/
	}

	private void setTotPage(int count) {
		//전체 페이지 설정
		totPage = (int) Math.ceil(count*1.0/PAGE_SCALE);
		//ex) count : 9 ==> 9.0 ==> 10/10 ==>1
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}



	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}

	public int getCurPage() {
		return curPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public int getTotBlock() {
		return totBlock;
	}

	public int getPageBegin() {
		return pageBegin;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}
	
	
	
	
	
	
	
	
	
	
	
}
