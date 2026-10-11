.class public Lcom/amap/api/mapcore/k;
.super Lcom/amap/api/mapcore/x;
.source "AMapGLTextureView.java"

# interfaces
.implements Lcom/amap/api/mapcore/ad;


# instance fields
.field private a:Lcom/amap/api/mapcore/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/k;->a:Lcom/amap/api/mapcore/aa;

    .line 22
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/AMapDelegateImp;-><init>(Lcom/amap/api/mapcore/ad;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/k;->a:Lcom/amap/api/mapcore/aa;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/aa;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/mapcore/k;->a:Lcom/amap/api/mapcore/aa;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/x;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore/k;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setZOrderOnTop(Z)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
