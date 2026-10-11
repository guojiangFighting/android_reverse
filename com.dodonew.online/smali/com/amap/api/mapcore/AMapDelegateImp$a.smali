.class abstract Lcom/amap/api/mapcore/AMapDelegateImp$a;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/AMapDelegateImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# instance fields
.field b:Z

.field c:Z

.field d:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewMode;

.field e:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewTime;

.field f:Lcom/autonavi/amap/mapcore/GLMapResManager$MapViewModeState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4400
    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$a;->b:Z

    .line 4401
    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/AMapDelegateImp$1;)V
    .locals 0

    .prologue
    .line 4399
    invoke-direct {p0}, Lcom/amap/api/mapcore/AMapDelegateImp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/AMapDelegateImp$a;->b:Z

    .line 4409
    return-void
.end method
