.class public Lcom/amap/api/mapcore/j;
.super Landroid/opengl/GLSurfaceView;
.source "AMapGLSurfaceView.java"

# interfaces
.implements Lcom/amap/api/mapcore/ad;


# instance fields
.field private a:Lcom/amap/api/mapcore/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/j;->a:Lcom/amap/api/mapcore/aa;

    .line 23
    new-instance v0, Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/AMapDelegateImp;-><init>(Lcom/amap/api/mapcore/ad;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/j;->a:Lcom/amap/api/mapcore/aa;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/aa;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/j;->a:Lcom/amap/api/mapcore/aa;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/j;->a:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/aa;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
