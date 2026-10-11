.class Lcom/amap/api/mapcore/AMapDelegateImp$6;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;->a(Lcom/amap/api/mapcore/util/f;)V
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
    .line 3989
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$6;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3994
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$6;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->j(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/aq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/aq;->setVisibility(I)V

    .line 3995
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$6;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->j(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$6;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3996
    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore/util/f;->h:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/aq;->a([Ljava/lang/String;)V

    .line 3997
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$6;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->j(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$6;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 3998
    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore/util/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/aq;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4002
    :goto_0
    return-void

    .line 3999
    :catch_0
    move-exception v0

    .line 4000
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
