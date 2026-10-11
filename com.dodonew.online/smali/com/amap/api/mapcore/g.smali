.class Lcom/amap/api/mapcore/g;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 4053
    iput-object p1, p0, Lcom/amap/api/mapcore/g;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4057
    iget-object v0, p0, Lcom/amap/api/mapcore/g;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4058
    iget-object v0, p0, Lcom/amap/api/mapcore/g;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->f(Lcom/amap/api/mapcore/AMapDelegateImp;Z)Z

    .line 4059
    iget-object v0, p0, Lcom/amap/api/mapcore/g;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->v(Lcom/amap/api/mapcore/AMapDelegateImp;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4061
    :cond_0
    return-void
.end method
