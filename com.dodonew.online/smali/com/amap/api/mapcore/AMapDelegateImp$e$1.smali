.class Lcom/amap/api/mapcore/AMapDelegateImp$e$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp$e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp$e;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp$e;)V
    .locals 0

    .prologue
    .line 4109
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp$e;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->d(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp$e;

    iget-object v1, v1, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 4114
    invoke-static {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore/util/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp$e;

    iget-object v2, v2, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 4115
    invoke-static {v2}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v2

    iget v2, v2, Lcom/amap/api/mapcore/util/f;->d:I

    iget-object v3, p0, Lcom/amap/api/mapcore/AMapDelegateImp$e$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp$e;

    iget-object v3, v3, Lcom/amap/api/mapcore/AMapDelegateImp$e;->a:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 4116
    invoke-static {v3}, Lcom/amap/api/mapcore/AMapDelegateImp;->Z(Lcom/amap/api/mapcore/AMapDelegateImp;)Lcom/amap/api/mapcore/util/f;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore/util/f;->e:Ljava/lang/String;

    .line 4113
    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setIndoorBuildingToBeActive(Ljava/lang/String;ILjava/lang/String;)V

    .line 4117
    return-void
.end method
