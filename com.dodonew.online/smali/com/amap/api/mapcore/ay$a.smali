.class public Lcom/amap/api/mapcore/ay$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/autonavi/amap/mapcore/FPoint;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IILcom/autonavi/amap/mapcore/FPoint;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ay$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 43
    iput v1, p0, Lcom/amap/api/mapcore/ay$a;->b:I

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore/ay$a;->c:I

    .line 45
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore/ay$a;->d:I

    .line 55
    iput-object p3, p0, Lcom/amap/api/mapcore/ay$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 56
    iput p4, p0, Lcom/amap/api/mapcore/ay$a;->b:I

    .line 57
    iput p5, p0, Lcom/amap/api/mapcore/ay$a;->c:I

    .line 58
    iput p6, p0, Lcom/amap/api/mapcore/ay$a;->d:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ay$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 43
    iput v1, p0, Lcom/amap/api/mapcore/ay$a;->b:I

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore/ay$a;->c:I

    .line 45
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore/ay$a;->d:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ay$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 43
    iput v1, p0, Lcom/amap/api/mapcore/ay$a;->b:I

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore/ay$a;->c:I

    .line 45
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore/ay$a;->d:I

    .line 74
    return-void
.end method
