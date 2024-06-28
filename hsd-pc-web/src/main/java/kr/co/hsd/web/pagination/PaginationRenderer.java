package kr.co.hsd.web.pagination;

import kr.co.hsd.core.common.Pagination;
import org.springframework.stereotype.Component;

import java.text.MessageFormat;

/**
 * Created by lee young eun on 2017-07-07.
 */
@Component
public class PaginationRenderer {

    private String firstPageLabel;
    private String previousPageLabel;
    private String currentPageLabel;
    private String otherPageLabel;
    private String nextPageLabel;
    private String lastPageLabel;

    public PaginationRenderer() {
        currentPageLabel = "<a href=\"#none\" class=\"active\"><span>{0}</span></a>";    // 현재페이지
        otherPageLabel = "<a href=\"#none\" onclick=\"{0}({1}, this); return false;\"><span>{2}</span></a>";    // 페이지
    }

    public String renderPagination(Pagination pagination, String jsFunction) {
        StringBuffer sb = new StringBuffer();

        int startPageNo = pagination.getStartPageNo();  // 시작 페이지
        int endPageNo = pagination.getEndPageNo();      // 끝페이지
        int currentPageNo = pagination.getCurrentPageNo();  // 현재페이지
        int prevPageNo = pagination.getPrevPageNo();        // 이전페이지
        int nextPageNo = pagination.getNextPageNo();        // 다음페이지

        sb.append("<div class=\"pageinate\"><div class=\"cont\">");

        // 첫페이지
        if(currentPageNo != 1){
            firstPageLabel = "<a href=\"#none\" class=\"arr first\" onclick=\"{0}({1}, this); return false;\">처음페이지</a>";
            sb.append(MessageFormat.format(firstPageLabel, new Object[]{jsFunction, Integer.toString(1)}));
        }else{
            firstPageLabel = "<a href=\"#none\" class=\"arr first off\">처음페이지</a>";
            sb.append(MessageFormat.format(firstPageLabel, new Object[]{}));
        }

        // 이전페이지
        if(currentPageNo > prevPageNo) {
            previousPageLabel = "<a href=\"#none\" class=\"arr prev\" onclick=\"{0}({1}, this); return false;\">이전페이지</a>";
            sb.append(MessageFormat.format(previousPageLabel, new Object[]{jsFunction, Integer.toString(prevPageNo)}));
        }else{
            previousPageLabel = "<a href=\"#none\" class=\"arr prev off\">이전페이지</a>";
            sb.append(MessageFormat.format(previousPageLabel, new Object[]{}));
        }

        for(int i=startPageNo; i<=endPageNo; i++) {
            if(i == currentPageNo) {
                sb.append(MessageFormat.format(currentPageLabel, new Object[]{Integer.toString(i)}));
            } else {
                sb.append(MessageFormat.format(otherPageLabel, new Object[]{jsFunction, Integer.toString(i), Integer.toString(i)}));
            }
        }

        // 다음페이지
        if(currentPageNo < nextPageNo) {
            nextPageLabel = "<a href=\"#none\" class=\"arr next\" onclick=\"{0}({1}, this); return false;\">다음페이지</a>";
            sb.append(MessageFormat.format(nextPageLabel, new Object[]{jsFunction, Integer.toString(nextPageNo)}));
        }else{
            nextPageLabel = "<a href=\"#none\" class=\"arr next off\">다음페이지</a>";
            sb.append(MessageFormat.format(nextPageLabel, new Object[]{jsFunction, Integer.toString(nextPageNo)}));
        }

        // 마지막페이지
        if(currentPageNo != endPageNo){
            lastPageLabel = "<a href=\"#none\" class=\"arr last\" onclick=\"{0}({1}, this); return false;\">마지막페이지</a>";
            sb.append(MessageFormat.format(lastPageLabel, new Object[]{jsFunction, Integer.toString(endPageNo)}));
        }else{
            lastPageLabel = "<a href=\"#none\" class=\"arr last off\">마지막페이지</a>";
            sb.append(MessageFormat.format(lastPageLabel, new Object[]{}));
        }

        sb.append("</div></div>");
        return sb.toString();
    }
}
