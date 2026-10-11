.class Lcom/dodonew/online/ui/ChooseCityActivity$10;
.super Landroid/os/Handler;
.source "ChooseCityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/ChooseCityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ChooseCityActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 397
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_1

    .line 398
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5e02"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "city":Ljava/lang/String;
    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4, v0}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    .line 400
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-virtual {v4}, Lcom/dodonew/online/ui/ChooseCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-virtual {v4, v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->setTitle(Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1400(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/CityHeaderView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1400(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/CityHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/view/CityHeaderView;->initText()V

    .line 413
    .end local v0    # "city":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_0

    .line 406
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/google/gson/Gson;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1100(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "json":Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v4, v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1600(Lcom/dodonew/online/ui/ChooseCityActivity;Ljava/lang/String;)V

    .line 408
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 409
    .local v3, "top":[I
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1700(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 410
    iget-object v4, p0, Lcom/dodonew/online/ui/ChooseCityActivity$10;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$700(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    aget v5, v3, v7

    add-int/lit8 v5, v5, -0x37

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
