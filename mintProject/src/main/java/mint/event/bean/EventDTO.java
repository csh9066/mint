package mint.event.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;


@Data
@Component
public class EventDTO {
	private String seq;
	private String subject;
	private Date startDate;
	private Date endDate;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date logtime;
	private String productCode;
	private String discountRate;
	private String prevDiscountRate;
	private String eventThumbnail;
	private String eventStatus;
}
