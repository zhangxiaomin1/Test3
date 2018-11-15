//logs.js
const util = require('../../utils/util.js')

Page({
  data: {
    imagelist: [],
    tuijianlist:[],
    hostlist:[]
  },
  onLoad: function () {
    wx.request({
      url:"http://localhost:3000/imagelist",
      method:"GET",
      success: (res)=>{//箭头函数会保留当前this
        //console.log(res.data);
        this.setData({
          imagelist:res.data
        })
      }
    }),
    wx.request({
      url:"http://localhost:3000/tuijianlist",
      method:"GET",
      success: (res)=>{//箭头函数会保留当前this
        //console.log(res.data);
        this.setData({
          tuijianlist:res.data
        })
      }
    }),
    wx.request({
      url:"http://localhost:3000/hostlist",
      method:"GET",
      success: (res)=>{//箭头函数会保留当前this
        //console.log(res.data);
        this.setData({
          hostlist:res.data
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
    wx.stopPullDownRefresh();
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  }
})
