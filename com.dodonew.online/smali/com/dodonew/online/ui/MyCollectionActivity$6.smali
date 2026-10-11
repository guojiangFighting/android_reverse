.class Lcom/dodonew/online/ui/MyCollectionActivity$6;
.super Ljava/lang/Object;
.source "MyCollectionActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCollectionActivity;->setMyCollectionAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCollectionActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$6;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 214
    iget-object v2, p0, Lcom/dodonew/online/ui/MyCollectionActivity$6;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$600(Lcom/dodonew/online/ui/MyCollectionActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Collection;

    .line 215
    .local v0, "collection":Lcom/dodonew/online/bean/Collection;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCollectionActivity$6;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    const-class v3, Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "domainId"

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getDomainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "netBarId"

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getNetbarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, Lcom/dodonew/online/ui/MyCollectionActivity$6;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-virtual {v2, v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
