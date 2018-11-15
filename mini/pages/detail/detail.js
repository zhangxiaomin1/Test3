// pages/detail/detail.js
Page({
  
  /**
   * 页面的初始数据
   */
  data: {
    book:[],
    itemize:[],
    currentTab:0,
    detail:[],  //保存数据
    pageIndex:0,//当前显示的页码
    pageSize:4,  //每页的数量
    hasMore:true  //用于记录是否还有更多
  },
  loadMore:function(){
    //加载数据
    wx.request({
      url:"http://localhost:3000/detail",
      data:{
        pno:++this.data.pageIndex,pageSize:this.data.pageSize
      },
      method:"GET",
      success:(res)=>{
        var pageCount=res.data.pageCount;
        console.log(pageCount);
        if(this.data.pageIndex>=pageCount){
          this.setData({
            hasMore:false
          })
        }
        var rows=this.data.detail.concat(res.data.data);
        console.log(rows);
        this.setData({
          detail:rows
        })       
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore();
    //2.发送ajax请求获取商品信息 
    //console.log("1:获取上一级组件传递参数");
    //console.log(options);
    var id=options.id;
    wx.request({
      url:"http://localhost:3000/book?id="+id,
      success:(res)=>{
        console.log(res.data[0]);
        this.setData({
          book:res.data[0]
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    //1.显示第一页数据，清空
    this.setData({
      pageIndex:0,
      books:[]
    })
    //2.加载更多
    this.loadMore();
    //3.停止下来动作多次执行
    wx.stopPullDownRefresh();
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    this.loadMore();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  },
  /*选项卡 */
  clickTab: function (e) {

    var that = this;
    
    if (this.data.currentTab === e.target.dataset.current) {
    return false;
    } else {
    that.setData({
    currentTab: e.target.dataset.current
    })
    }
    },
})