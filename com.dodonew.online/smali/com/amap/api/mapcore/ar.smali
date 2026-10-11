.class Lcom/amap/api/mapcore/ar;
.super Landroid/widget/LinearLayout;
.source "LocationView.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/widget/ImageView;

.field h:Lcom/amap/api/mapcore/aa;

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/ar;->i:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/au;Lcom/amap/api/mapcore/aa;)V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    iput-boolean v3, p0, Lcom/amap/api/mapcore/ar;->i:Z

    .line 71
    iput-object p3, p0, Lcom/amap/api/mapcore/ar;->h:Lcom/amap/api/mapcore/aa;

    .line 73
    :try_start_0
    const-string v0, "location_selected.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->d:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->d:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->a:Landroid/graphics/Bitmap;

    .line 76
    const-string v0, "location_pressed.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->e:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->e:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->b:Landroid/graphics/Bitmap;

    .line 80
    const-string v0, "location_unselected.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->f:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->f:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore/ar$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/ar$1;-><init>(Lcom/amap/api/mapcore/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/ar;->addView(Landroid/view/View;)V

    .line 138
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "LocationView"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 39
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->a:Landroid/graphics/Bitmap;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->b:Landroid/graphics/Bitmap;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->c:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->d:Landroid/graphics/Bitmap;

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->e:Landroid/graphics/Bitmap;

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/ar;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_5
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "LocationView"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/amap/api/mapcore/ar;->i:Z

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 150
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/ar;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/ar;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
