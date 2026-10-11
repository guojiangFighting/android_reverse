.class Lcom/amap/api/mapcore/br$1;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/br;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/br;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/br;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v0}, Lcom/amap/api/mapcore/br;->a(Lcom/amap/api/mapcore/br;)Lcom/amap/api/mapcore/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->E()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v1}, Lcom/amap/api/mapcore/br;->a(Lcom/amap/api/mapcore/br;)Lcom/amap/api/mapcore/aa;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/aa;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v0}, Lcom/amap/api/mapcore/br;->a(Lcom/amap/api/mapcore/br;)Lcom/amap/api/mapcore/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->R()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v0}, Lcom/amap/api/mapcore/br;->c(Lcom/amap/api/mapcore/br;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v1}, Lcom/amap/api/mapcore/br;->b(Lcom/amap/api/mapcore/br;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v0}, Lcom/amap/api/mapcore/br;->c(Lcom/amap/api/mapcore/br;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v1}, Lcom/amap/api/mapcore/br;->d(Lcom/amap/api/mapcore/br;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/br$1;->a:Lcom/amap/api/mapcore/br;

    invoke-static {v0}, Lcom/amap/api/mapcore/br;->a(Lcom/amap/api/mapcore/br;)Lcom/amap/api/mapcore/aa;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/mapcore/o;->b()Lcom/amap/api/mapcore/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->b(Lcom/amap/api/mapcore/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "ZoomControllerView"

    const-string v2, "zoomin ontouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
