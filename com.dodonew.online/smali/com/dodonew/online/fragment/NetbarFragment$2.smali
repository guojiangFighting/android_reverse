.class Lcom/dodonew/online/fragment/NetbarFragment$2;
.super Landroid/os/Handler;
.source "NetbarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/fragment/NetbarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/NetbarFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/NetbarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    new-instance v1, Lcom/dodonew/online/bean/City;

    invoke-direct {v1}, Lcom/dodonew/online/bean/City;-><init>()V

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$302(Lcom/dodonew/online/fragment/NetbarFragment;Lcom/dodonew/online/bean/City;)Lcom/dodonew/online/bean/City;

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NetbarFragment;->access$300(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/bean/City;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/bean/City;->setProvince(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NetbarFragment;->access$300(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/bean/City;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5e02"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/bean/City;->setName(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$402(Lcom/dodonew/online/fragment/NetbarFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NetbarFragment;->access$500(Lcom/dodonew/online/fragment/NetbarFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$300(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/bean/City;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NetbarFragment;->access$000(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarView;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$400(Lcom/dodonew/online/fragment/NetbarFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/NetbarView;->setLocation(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NetbarFragment;->access$000(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarView;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment$2;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$300(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/bean/City;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/NetbarView;->setCity(Lcom/dodonew/online/bean/City;)V

    .line 124
    :cond_0
    return-void
.end method
