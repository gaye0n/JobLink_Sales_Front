<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeListControl.ascx.cs"  Inherits="SCM_NoticeListControl" %>   
<asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>

<link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="js/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script> 

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                 
<SCRIPT LANGUAGE="JavaScript">
<!--
  function viewStyle(obj){
    while(true){
      if((obj=obj.nextSibling).nodeName=="DIV"){
        obj.style.display=(obj.style.display!='block')?'block':'none';
        obj.style.fontSize = "13px";   
        obj.style.color = "#000000";
      //obj.style.backgroundColor = "#ffffff";
      obj.style.width = "100%";      
        break;
      }
    }
  }
 
//-->

</script>

<style type="text/css">
   .dropbtn {
		width: 80px;
		border-radius: 10px;
		background-color: transparent;
		text-transform: uppercase;
		text-decoration: none;
		font-size: 13px;
		font-weight:1000;
		color: #FF5675;
		border: none;
		padding: 10px 1px 10px;
		transition: all 0.7s ease-out;
		background: linear-gradient(270deg, #FFB0D9, #FFF0F5, #FFF0F5, #FFB0D9);
		background-position: 1% 50%;
		background-size: 300% 300%;
		margin-bottom: 5px;
		margin-left: 8px;
    }

	.dropbtn:hover {
		color: #fff;
		border: 1px solid rgba(223,190,106,0);
		color: #FF5675;
		background-position: 99% 50%;
	}

	
    .dropdown {
		position: relative;
		display: inline-block;
		width: 80px;
		font-size: 13px;
    }

    .dropdown-content {
		display: none;
		position: absolute;
		background-color: #f1f1f1;
		min-width: 100px;
		text-align: center;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		z-index: 1;
    }

    .dropdown-content a {
		color: #000000;
		padding: 12px 16px;
		text-decoration: none;
		display: block;
		width: 100px;
		opacity:0.8;
		transition:all 0.3s;
    }

    .dropdown-content a:hover {
        background-color: #fccbcb;
		color:white;
		opacity:1;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #c8c8c8;
    }

    .info {
        display: block;
        position: absolute;
        font-size: 12px; 
        margin-top: -35px;
        margin-left: 91%;
    }

    .check_sum {
        display: block;
        position: absolute;
        font-size: 14px;
        color: #BC50BC;
        margin-top: -32px; 
        margin-left: 100px;
    }

    .sum_line .val1 {
        background-color: #efefef;
        color: #000;
        font-weight: 600;
        text-align: center;
    }
    .sum_line .val2 {
        background-color: #efefef;
        color: #000;
        font-weight: 600;
        text-align: right;
    }

	
	.salesTR:hover {
		background-image: linear-gradient(to right, #fbc2eb 0%, #a6c1ee 51%, #fbc2eb 100%);
		box-shadow: 0px 0px 20px #ffd7d7;
		z-index: 2;
		-webkit-transition: all 200ms ease-in;
		-webkit-transform: scale(1.01);
		-ms-transition: all 200ms ease-in;
		-ms-transform: scale(1.01);   
		-moz-transition: all 200ms ease-in;
		-moz-transform: scale(1.01);
		transition: all 200ms ease-in;
		transform: scale(1.01);
	}
        
</style>


<div style="height:20px;"></div>

<div align="center" style="font-size: 25px; margin-top: 20px;"><b>담당자별 판매 실적</b></div>
<div style="height:20px;"></div>


<!-- <div class="buttons buttons2">
    <button type="button" class="button6"><a href="SCM_NoticeList7.aspx"><font color="#848484" size="2px" face="맑은고딕">전체</font></a></button>
    <button type="button" class="button6"><a href="SCM_NoticeList.aspx"><font color="#848484" size="2px" face="맑은고딕">식품</font></a></button>
    <button type="button" class="button6"><a href="SCM_NoticeList2.aspx"><font color="#848484" size="2px" face="맑은고딕">전자기기</font></a></button>
    <button type="button" class="button6"><a href="SCM_NoticeList3.aspx"><font color="#848484" size="2px" face="맑은고딕">의류</font></a></button>
    <button type="button" class="button6"><a href="SCM_NoticeList4.aspx"><font color="#848484" size="2px" face="맑은고딕">생활용품</font></a></button>
    <button type="button" class="button6"><a href="SCM_NoticeList5.aspx"><font color="#848484" size="2px" face="맑은고딕">건강</font></a></button>
    <button type="button" class="button6"><a href="SCM_NoticeList6.aspx"><font color="#848484" size="2px" face="맑은고딕">도서</font></a></button>
</div> -->



<div class="dropdown">
    <button class="dropbtn"><b>담당자</b></button>
        <div class="dropdown-content">
            <a href="SCM_NoticeListAll.aspx">전체</a>
            <a href="SCM_NoticeListKim.aspx">김가연</a>
            <a href="SCM_NoticeListJang.aspx">장지인</a>
            <a href="SCM_NoticeListLee.aspx">이정현</a>
            <a href="SCM_NoticeListOh.aspx">오민준</a>
        </div>
</div>


<div class="info" align="right">
    <span>회사명 : 이카운트 </span>
    <br/> 
    <span id="date">2019/09/01~</span>
</div>




<div class="check_sum">
  <input type="checkbox" class="totalcheck" value="totalcheck" onclick="makeList()"><b>담당자별 합계 확인</b>
</div>



<font face='맑은 고딕'>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="ctlNoticeList" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                        Width="100%" Font-Size="14px" CellPadding="4" ForeColor="#a29e9e"  PageSize="50"
                                        OnPageIndexChanging="ctlNoticeList_PageIndexChanging">


                                    <Columns>
                                            <asp:TemplateField HeaderText="일자">
                                                <ItemTemplate>
                                                        <%#FuncCutStrng(Eval("salesdate1"))%>                
                                                </ItemTemplate>
                                                <ItemStyle Width="8%" HorizontalAlign="center" verticalAlign="middle"/>
                                            </asp:TemplateField>
                                            

                                            <asp:TemplateField HeaderText="담당자명">
                                                <ItemTemplate>
                                                    <div class="salesman">
                                                        <%#FuncCutStrng(Eval("salesman1"))%>    
                                                    </div>                  
                                                </ItemTemplate>
                                                <ItemStyle Width="8%" ForeColor="#0431B4" HorizontalAlign="center" verticalAlign="middle"/>
                                            </asp:TemplateField> 
                                            

                                            <asp:TemplateField HeaderText="품명 및 규격">
                                                <ItemTemplate>                                          
                                                    <a href='SCM_NoticeView.aspx?SCM_SalesID=<%#Eval("SCM_SalesID") %>' onclick="viewStyle(this);return false">                                       
                                                    <!a class="fancybox fancybox.iframe"  href='SCM_NoticeView.aspx?SCM_SalesID=<%#Eval("SCM_SalesID") %>' onfocus="this.blur()" rel="external"> 
                                                    &nbsp;<%#FuncCutStrng(Eval("Title"))%>....more
                                                    &nbsp;<%#FuncNew(Eval("PostDate")) %>
                                                    </a>
                                                
                                                <div style='display:none'>
                                                    <br/>
                                                    <img src='../../fileUpload/notice/<%#FuncCutStrng(Eval("UpFileName"))%>' width="50%" height="60%">                                       
                                                    <br/>
                                                    <br/>
                                                        * 수량 : <%#FuncCutStrng(Eval("ea1"))%> ea <br>
                                                        * 단가 : \ <%#FuncCutStrng(Eval("price1"))%><br>
                                                        * 공급가액 : \ <%#FuncCutStrng(Eval("supply1"))%><br>
                                                        * 부가세 : \ <%#FuncCutStrng(Eval("vat1"))%><br>
                                                        * 합계 : \ <%#FuncCutStrng(Eval("total1"))%><br>
                                                        * 판매처명 : <%#FuncCutStrng(Eval("company1"))%> 
                                                    <br/>
                                                    <br/>                                       
                                                </div>
                                                </ItemTemplate>
                          
                                                <ItemStyle Width="25%" HorizontalAlign="left" verticalAlign="middle"/>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="수량">
                                                <ItemTemplate>
                                                    <div class="ea">
                                                        <%#FuncCutStrng(Eval("ea1"))%> 
                                                    </div>
                                                </ItemTemplate>
                                                <ItemStyle Width="7%" HorizontalAlign="right" verticalAlign="middle"/>
                                            </asp:TemplateField>  

                                            <asp:TemplateField HeaderText="단가">
                                                <ItemTemplate>
                                                    <div class="price">
                                                        <%#FuncCutStrng(Eval("price1"))%> 
                                                    </div>                                                 
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" HorizontalAlign="right" verticalAlign="middle"/>
                                            </asp:TemplateField> 
                                            

                                            <asp:TemplateField HeaderText="공급가액">
                                                <ItemTemplate>      
                                                    <div class="supply">                                        
                                                        <%#FuncCutStrng(Eval("supply1"))%>
                                                    </div> 
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" HorizontalAlign="right" verticalAlign="middle"/>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="부가세">
                                                <ItemTemplate> 
                                                    <div class="vat">                                                
                                                        <%#FuncCutStrng(Eval("vat1"))%>
                                                    <div> 
                                                </ItemTemplate>
                                                <ItemStyle Width="8%" HorizontalAlign="right" verticalAlign="middle"/>
                                            </asp:TemplateField> 
                                            

                                            <asp:TemplateField HeaderText="합계">
                                                <ItemTemplate>    
                                                    <div class="total">                                             
                                                        <%#FuncCutStrng(Eval("total1"))%>
                                                    </div>
                                                </ItemTemplate>
                                                <ItemStyle Font-Bold="True" Width="10%" HorizontalAlign="right" verticalAlign="middle"/>
                                            </asp:TemplateField> 

                                            <asp:TemplateField HeaderText="판매처명">
                                                <ItemTemplate>                                                
                                                    &nbsp;<%#FuncCutStrng(Eval("company1"))%>                               
                                                </ItemTemplate>
                                                <ItemStyle Width="8%" HorizontalAlign="left"/>
                                            </asp:TemplateField>  

                                        </Columns>

                                        <HeaderStyle BackColor="#F2F2F2"  Font-Bold="True" ForeColor="#0489B1" HorizontalAlign="Center"/> 
                                        <RowStyle BackColor="#FFFFFF" ForeColor="#333333" />
                                        
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" /> 
                                        <EditRowStyle BackColor="#999999" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#a29e9e" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#000000" />
                                </asp:GridView>
                                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>

</font>    
                    

<script type="text/javascript" src="js/jquery-latest.js"></script> 
<link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="js/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script> 

<script type="text/javascript">
   $(document).ready(function() {
      $(".fancybox").fancybox({      
      fitToView   : false,
      width      : '100%',
      height   : '300',
      autoSize   : false,
      autoCenter   : false,
      closeClick   : false,
      openEffect   : 'none',
      closeEffect   : 'none'
       
   });
});
</script> 

<script src="./js/func1.js" type="text/javascript"></script>


      