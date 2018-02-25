package com.util;

import java.io.Serializable;

/**
 * Description: 鍒嗛〉鎶�鏈殑瀹炵幇銆�
 */
// oracle,sqlserver,mysql鍒嗛〉鎶�鏈�
public class Pager implements Serializable {

    private static final long serialVersionUID = 1L;

    private int     pageId     = 1;     // 褰撳墠椤�
    
    private int     rowCount   = 0;     // 鎬昏鏁�
    private int     pageSize   = 10;    // 椤靛ぇ灏�
    private int     pageCount  = 0;     // 鎬婚〉鏁�
    private int     pageOffset = 0;     // 褰撳墠椤佃捣濮嬭褰�
    private int     pageTail   = 0;     // 褰撳墠椤靛埌杈剧殑璁板綍
    private String  orderField;         // 鎺掑簭瀛楁
    private boolean orderDirection;     // 鍗囬檷搴�
    private String  orderCondition;     // 鍗囬檷搴�
    private String  mysqlQueryCondition;// limit鍒嗛〉
    private int     length     = 6;     // 椤甸潰鏄剧ず鍒嗛〉鎸夐挳涓暟
    private int     startIndex = 0;     // 寮�濮嬪垎椤垫暟瀛�
    private int     endIndex   = 0;     // 缁撴潫鍒嗛〉鏁板瓧
    private int[]   indexs;

    public Pager() {
        this.orderDirection = true;
    }

    public int[] getIndexs() {
        int len = getEndIndex() - getStartIndex() + 1;
        indexs = new int[len];
        for (int i = 0; i < len; i++) {
            indexs[i] = (getStartIndex() + i);
        }
        return indexs;
    }

    public void setIndexs(int[] indexs) {
        this.indexs = indexs;
    }

    public int getStartIndex() {
        startIndex = pageId - (length / 2);
        if (startIndex < 1) {
            startIndex = 1;
        }
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getEndIndex() {
        if (getStartIndex() < 1) {
            setStartIndex(1);
        }
        endIndex = (getStartIndex() + length) <= getPageCount() ? (getStartIndex() + 

length) : getPageCount();
        return endIndex;
    }

    public void setEndIndex(int endIndex) {
        this.endIndex = endIndex;
    }

    protected void doPage() {
        pageCount = rowCount / pageSize + 1;
        // 濡傛灉妯℃澘==0锛屼笖鎬绘暟澶т簬1锛屽垯鍑忎竴
        if ((rowCount % pageSize == 0) && pageCount > 1)
            pageCount--;
        // Mysql 绠楁硶
        pageOffset = (pageId - 1) * pageSize;
        pageTail = pageOffset + pageSize;
        if ((pageOffset + pageSize) > rowCount)
            pageTail = rowCount;
    }

    public String getOrderCondition() {
        if (orderField == null || orderField.trim().length() == 0) {
            return "";
        }
        orderCondition = new StringBuffer(" order by ").append(orderField).append

(orderDirection ? " " : " desc ")
                .toString();
        return orderCondition;
    }

    public void setOrderCondition(String orderCondition) {
        this.orderCondition = orderCondition;
    }

    public String getMysqlQueryCondition() {
        mysqlQueryCondition = new StringBuffer(" limit ").append(pageOffset).append

(",").append(pageSize).toString();
        return mysqlQueryCondition;
    }

    public void setMysqlQueryCondition(String mysqlQueryCondition) {
        this.mysqlQueryCondition = mysqlQueryCondition;
    }

    public boolean isOrderDirection() {
        return orderDirection;
    }

    public void setOrderDirection(boolean orderDirection) {
        this.orderDirection = orderDirection;
    }

    public void setOrderField(String orderField) {
        this.orderField = orderField;
    }

    public String getOrderField() {
        return orderField;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageId(int pageId) {
        this.pageId = pageId;
    }

    public int getPageId() {
        return pageId;
    }

    public void setPageOffset(int pageOffset) {
        this.pageOffset = pageOffset;
    }

    public int getPageOffset() {
        return pageOffset;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageTail(int pageTail) {
        this.pageTail = pageTail;
    }

    public int getPageTail() {
        return pageTail;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
        this.doPage();
    }

    public int getRowCount() {
        return rowCount;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

}