package mint.qnaBoard.dao;

import java.util.List;
import java.util.Map;

import mint.orderAndSales.bean.OrderAndSalesDTO;
import mint.qnaBoard.bean.QnaBoardDTO;

public interface QnaBoardDAO {

	public List<QnaBoardDTO> getQnaBoardList(Map<String, Object> map);

	public List<OrderAndSalesDTO> getOrderList(String email);

	public void qnaBoardWrite(QnaBoardDTO qnaBoardDTO);

	public QnaBoardDTO getQnaModify(int seq);

	public void qnaBoardModify(QnaBoardDTO qnaBoardDTO);

	public void qnaBoardDelete(int seq);

}
