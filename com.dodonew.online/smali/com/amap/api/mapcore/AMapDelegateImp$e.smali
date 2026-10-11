.class Lcom/amap/api/mapcore/AMapDelegateImp$e;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/aq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 0

    .prologue
    .line 4100
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp;Lcom/amap/api/mapcore/AMapDelegateImp$1;)V
    .locals 0

    .prologue
    .line 4100
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/AMapDelegateImp$e;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4106
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore/util/f;->g:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/amap/api/mapcore/util/f;->d:I

    .line 4107
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore/util/f;->h:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f;->c:Ljava/lang/String;

    .line 4108
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->e(Z)V

    .line 4109
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    new-instance v1, Lcom/amap/api/mapcore/AMapDelegateImp$e$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/AMapDelegateImp$e$1;-><init>(Lcom/amap/api/mapcore/AMapDelegateImp$e;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->a(Ljava/lang/Runnable;)V

    .line 4120
    :cond_0
    return-void
.end method
