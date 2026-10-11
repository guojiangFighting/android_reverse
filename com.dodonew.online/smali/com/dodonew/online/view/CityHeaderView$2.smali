.class Lcom/dodonew/online/view/CityHeaderView$2;
.super Ljava/lang/Object;
.source "CityHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/CityHeaderView;->initText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/CityHeaderView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/CityHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/CityHeaderView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/view/CityHeaderView$2;->this$0:Lcom/dodonew/online/view/CityHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/dodonew/online/view/CityHeaderView$2;->this$0:Lcom/dodonew/online/view/CityHeaderView;

    invoke-static {v1}, Lcom/dodonew/online/view/CityHeaderView;->access$000(Lcom/dodonew/online/view/CityHeaderView;)Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Lcom/dodonew/online/bean/City;

    invoke-direct {v0}, Lcom/dodonew/online/bean/City;-><init>()V

    .line 83
    .local v0, "city":Lcom/dodonew/online/bean/City;
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/bean/City;->setName(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/bean/City;->setProvince(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/dodonew/online/view/CityHeaderView$2;->this$0:Lcom/dodonew/online/view/CityHeaderView;

    invoke-static {v1}, Lcom/dodonew/online/view/CityHeaderView;->access$000(Lcom/dodonew/online/view/CityHeaderView;)Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;->onClick(Lcom/dodonew/online/bean/City;)V

    .line 87
    .end local v0    # "city":Lcom/dodonew/online/bean/City;
    :cond_0
    return-void
.end method
