#' 处理逻辑
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples
#' customerServer()
customerServer <- function(input,output,session,dms_token) {
  
  var_customerERP <- tsui::var_ListChoose1('customerERP')
  var_date_customerByDate_sync <- tsui::var_date('date_customerByDate_sync')
  
  shiny::observeEvent(input$btn_customerByDate_sync,{
    
    token <- dms_token
    FName <- var_customerERP()
    
    FDate <- var_date_customerByDate_sync()
    mdlCpOaMdr::customerByDate_sync(token = token,FDate =FDate ,FName = FName)
    tsui::pop_notice("同步成功")
    
    })
    
   
    
  }
  
  
#' 处理逻辑
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples
#' supplierServer()
supplierServer <- function(input,output,session,dms_token) {
  
  var_supplierERP <- tsui::var_ListChoose1('supplierERP')
  var_date_supplierByDate_sync <- tsui::var_date('date_supplierByDate_sync')
  
  shiny::observeEvent(input$btn_supplierByDate_sync,{
    
    token <- dms_token
    FDate <-var_date_supplierByDate_sync()
    FName <- var_supplierERP()
    mdlCpOaMdr::supplierByDate_sync(token = token,FDate =FDate ,FName = FName)
    tsui::pop_notice("同步成功")
    
  })
  
  
  
}
  
  
  
  
  
  
  
  
  