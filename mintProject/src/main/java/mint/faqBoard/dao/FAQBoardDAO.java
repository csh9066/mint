package mint.faqBoard.dao;

import java.util.List;
import java.util.Map;

import mint.faqBoard.bean.FAQBoardDTO;

public interface FAQBoardDAO {

	public List<FAQBoardDTO> getBoardList(Map<String, Integer> map);

	public int getTotalArticle();

	public List<FAQBoardDTO> faqBoardSearch(Map<String, Object> map);

	public int getSearchTotalArticle(Map<String, Object> map);

	public void faqBoardWrite(Map<String, String> map);

	public FAQBoardDTO getFAQArticle(int seq);

	public List<FAQBoardDTO> faqCategory(Map<String, Object> map);

	public int getFAQCategoryTotalArticle(Map<String, Object> map);

	public void faqDelete(Map<String, String[]> map);

	public void faqModify(Map<String, String> map);

}
