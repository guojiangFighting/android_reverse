.class Lcom/amap/api/mapcore/AMapDelegateImp$12$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/AMapDelegateImp$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/AMapDelegateImp$12;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp$12;)V
    .locals 0

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/amap/api/mapcore/AMapDelegateImp$12$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$12$1;->a:Lcom/amap/api/mapcore/AMapDelegateImp$12;

    iget-object v0, v0, Lcom/amap/api/mapcore/AMapDelegateImp$12;->f:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-static {v0}, Lcom/amap/api/mapcore/AMapDelegateImp;->h(Lcom/amap/api/mapcore/AMapDelegateImp;)V

    .line 1927
    return-void
.end method
