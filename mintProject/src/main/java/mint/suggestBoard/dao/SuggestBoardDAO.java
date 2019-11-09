package mint.suggestBoard.dao;

import java.util.List;
import java.util.Map;

import mint.suggestBoard.bean.SuggestBoardDTO;

public interface SuggestBoardDAO {

	public void writeSuggestBoard(SuggestBoardDTO suggestBoardDTO);

	public List<SuggestBoardDTO> getSuggestBoardList(Map<String, Object> map);

	public int getSuggestBoardTotArticle(String id);

	public SuggestBoardDTO getSuggestBoard(int seq);

	public void updateSuggestBoard(SuggestBoardDTO suggestBoardDTO);

	public void deleteSuggestBoard(int seq);

}
