package com.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGoodsDAO;
import com.model.TCatelog;
import com.model.TGoods;
import com.opensymphony.xwork2.ActionSupport;

public class goodsAction extends ActionSupport
{
	private int goodsId;
	private int goodsCatelogId;
	private String goodsName;
	private String goodsMiaoshu;
	private String fujian;
	private int goodsShichangjia;
	private int goodsTejia;
	private String goodsRenqun;
	
	private int catelogId;
	
	private String message;
	private String path;
	private int jiage_sta=0;
	private int jiage_end=0;
	
	private TGoodsDAO goodsDAO;
	private TCatelogDAO catelogDAO;
	
	public String goodsNoTejiaAdd()
	{
		TGoods goods=new TGoods();
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		goods.setGoodsPic(fujian);
		goods.setGoodsShichangjia(goodsShichangjia);
		goods.setGoodsTejia(goodsShichangjia);// 如果不是特价商品。把这个商品的特价设置为市场价格
		goods.setGoodsIsnottejia("no");
		goods.setGoodsDel("no");
		goods.setGoodsRenqun(goodsRenqun);
		goodsDAO.save(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaNoTejia.action");
		return "succeed";
		
	}
	
	public String goodsNoTejiaDel()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsDel("yes");
		goodsDAO.attachDirty(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaNoTejia.action");
		return "succeed";
	}
	
	public String goodsManaNoTejia()
	{
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='no' order by goodsCatelogId";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<goodsList.size();i++)
		{
			TGoods goods=(TGoods)goodsList.get(i);
			System.out.println(goods.getGoodsCatelogId());
			goods.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsNoTejiaEditPre()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsNoTejiaEdit()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		//goods.setGoodsPic(fujian);
		goods.setGoodsShichangjia(goodsShichangjia);
		goods.setGoodsTejia(goodsShichangjia);// 如果不是特价商品。把这个商品的特价设置为市场价格
		goods.setGoodsIsnottejia("no");
		goods.setGoodsDel("no");
		goodsDAO.attachDirty(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaNoTejia.action");
		return "succeed";
	}
	
	
	
	public String goodsYesTejiaAdd()
	{
		TGoods goods=new TGoods();
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		goods.setGoodsPic(fujian);
		goods.setGoodsShichangjia(goodsShichangjia);
		goods.setGoodsTejia(goodsTejia);
		goods.setGoodsIsnottejia("yes");
		goods.setGoodsDel("no");
		goods.setGoodsRenqun(goodsRenqun);
		goodsDAO.save(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaYesTejia.action");
		return "succeed";
		
	}
	
	public String goodsYesTejiaDel()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsDel("yes");
		goodsDAO.attachDirty(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaYesTejia.action");
		return "succeed";
	}
	
	
	public String goodsManaYesTejia()
	{
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='yes' order by goodsCatelogId";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<goodsList.size();i++)
		{
			TGoods goods=(TGoods)goodsList.get(i);
			goods.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsYesTejiaEditPre()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsYesTejiaEdit()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		//goods.setGoodsPic(fujian);
		goods.setGoodsShichangjia(goodsShichangjia);
		goods.setGoodsTejia(goodsTejia);
		goods.setGoodsIsnottejia("yes");
		goods.setGoodsDel("no");
		goodsDAO.attachDirty(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaYesTejia.action");
		return "succeed";
	}
	
	
	
	
	public String goodsDetail()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		TGoods goods=goodsDAO.findById(goodsId);
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsAllYesTejia()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='yes' order by goodsCatelogId";
		List goodsYesTejiaList=goodsDAO.getHibernateTemplate().find(sql);
		request.put("goodsYesTejiaList", goodsYesTejiaList);
		return ActionSupport.SUCCESS;
	}
	
	

	public String getGoodsRenqun()
	{
		return goodsRenqun;
	}

	public void setGoodsRenqun(String goodsRenqun)
	{
		this.goodsRenqun = goodsRenqun;
	}

	public String goodsAllNoTejia()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='no' order by goodsCatelogId";
		List goodsYesTejiaList=goodsDAO.getHibernateTemplate().find(sql);
		request.put("goodsYesTejiaList", goodsYesTejiaList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsByCatelog()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		String sql="from TGoods where goodsDel='no' and goodsCatelogId=? order by goodsCatelogId";
		Object[] con={catelogId};
		List goodsByCatelogList=goodsDAO.getHibernateTemplate().find(sql,con);
		request.put("goodsByCatelogList", goodsByCatelogList);
		
		System.out.println(goodsByCatelogList.size()+"^^^"+goodsCatelogId);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodSearch()
	{
		System.out.println(goodsName+"^^"+jiage_sta);
        Map request=(Map)ServletActionContext.getContext().get("request");
        StringBuffer sql=new StringBuffer("from TGoods where goodsDel='no' and goodsRenqun='"+goodsRenqun+"'"+" and goodsName like '%"+goodsName+"%'");
		if(catelogId!=0)
		{
			sql.append(" and goodsCatelogId="+catelogId);
		}
		if(jiage_sta!=0)
		{
			sql.append(" and goodsTejia>"+jiage_sta);
		}
		if(jiage_end!=0)
		{
			sql.append(" and goodsTejia<"+jiage_end);
		}
		
		
		List goodsList=goodsDAO.getHibernateTemplate().find(sql.toString());
		request.put("goodsList", goodsList);
		
		return ActionSupport.SUCCESS;
	}
	
	public int getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}

	public int getJiage_end()
	{
		return jiage_end;
	}

	public void setJiage_end(int jiage_end)
	{
		this.jiage_end = jiage_end;
	}

	public int getJiage_sta()
	{
		return jiage_sta;
	}

	public void setJiage_sta(int jiage_sta)
	{
		this.jiage_sta = jiage_sta;
	}

	public int getGoodsCatelogId()
	{
		return goodsCatelogId;
	}
	public void setGoodsCatelogId(int goodsCatelogId)
	{
		this.goodsCatelogId = goodsCatelogId;
	}
	public TGoodsDAO getGoodsDAO()
	{
		return goodsDAO;
	}
	public void setGoodsDAO(TGoodsDAO goodsDAO)
	{
		this.goodsDAO = goodsDAO;
	}
	public int getGoodsId()
	{
		return goodsId;
	}
	public void setGoodsId(int goodsId)
	{
		this.goodsId = goodsId;
	}
	public String getGoodsMiaoshu()
	{
		return goodsMiaoshu;
	}
	public void setGoodsMiaoshu(String goodsMiaoshu)
	{
		this.goodsMiaoshu = goodsMiaoshu;
	}
	public String getGoodsName()
	{
		return goodsName;
	}
	
	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public void setGoodsName(String goodsName)
	{
		this.goodsName = goodsName;
	}
	
	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}

	public int getGoodsShichangjia()
	{
		return goodsShichangjia;
	}
	public void setGoodsShichangjia(int goodsShichangjia)
	{
		this.goodsShichangjia = goodsShichangjia;
	}
	public int getGoodsTejia()
	{
		return goodsTejia;
	}
	public void setGoodsTejia(int goodsTejia)
	{
		this.goodsTejia = goodsTejia;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
}
