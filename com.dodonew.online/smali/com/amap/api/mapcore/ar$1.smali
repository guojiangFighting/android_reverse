.class Lcom/amap/api/mapcore/ar$1;
.super Ljava/lang/Object;
.source "LocationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/ar;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/au;Lcom/amap/api/mapcore/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/ar;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/ar;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/ar;->i:Z

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v6

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v0, v0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v1, v1, Lcom/amap/api/mapcore/ar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v0, v0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v1, v1, Lcom/amap/api/mapcore/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v0, v0, Lcom/amap/api/mapcore/ar;->h:Lcom/amap/api/mapcore/aa;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->k(Z)V

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v0, v0, Lcom/amap/api/mapcore/ar;->h:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->y()Landroid/location/Location;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 125
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 126
    iget-object v2, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v2, v2, Lcom/amap/api/mapcore/ar;->h:Lcom/amap/api/mapcore/aa;

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/aa;->a(Landroid/location/Location;)V

    .line 127
    iget-object v0, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v0, v0, Lcom/amap/api/mapcore/ar;->h:Lcom/amap/api/mapcore/aa;

    iget-object v2, p0, Lcom/amap/api/mapcore/ar$1;->a:Lcom/amap/api/mapcore/ar;

    iget-object v2, v2, Lcom/amap/api/mapcore/ar;->h:Lcom/amap/api/mapcore/aa;

    .line 128
    invoke-interface {v2}, Lcom/amap/api/mapcore/aa;->E()F

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/o;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/mapcore/o;

    move-result-object v1

    .line 127
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->a(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "LocationView"

    const-string v2, "onTouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
