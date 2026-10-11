.class Lcom/amap/api/mapcore/bq;
.super Landroid/view/View;
.source "WaterMarkerView.java"


# instance fields
.field a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Paint;

.field private g:Z

.field private h:I

.field private i:Lcom/amap/api/mapcore/AMapDelegateImp;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    .line 29
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bq;->g:Z

    .line 30
    iput v1, p0, Lcom/amap/api/mapcore/bq;->h:I

    .line 32
    iput v1, p0, Lcom/amap/api/mapcore/bq;->j:I

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/bq;->a:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/AMapDelegateImp;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    .line 29
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bq;->g:Z

    .line 30
    iput v1, p0, Lcom/amap/api/mapcore/bq;->h:I

    .line 32
    iput v1, p0, Lcom/amap/api/mapcore/bq;->j:I

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/bq;->a:I

    .line 68
    iput-object p2, p0, Lcom/amap/api/mapcore/bq;->i:Lcom/amap/api/mapcore/AMapDelegateImp;

    .line 71
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/r;->e:Lcom/amap/api/mapcore/r$a;

    sget-object v1, Lcom/amap/api/mapcore/r$a;->b:Lcom/amap/api/mapcore/r$a;

    if-ne v0, v1, :cond_0

    .line 72
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bi;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apl.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 76
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bq;->d:Landroid/graphics/Bitmap;

    .line 77
    iget-object v1, p0, Lcom/amap/api/mapcore/bq;->d:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bq;->b:Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    sget-object v0, Lcom/amap/api/mapcore/r;->e:Lcom/amap/api/mapcore/r$a;

    sget-object v1, Lcom/amap/api/mapcore/r$a;->b:Lcom/amap/api/mapcore/r$a;

    if-ne v0, v1, :cond_1

    .line 82
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bi;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apl1.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 87
    :goto_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bq;->e:Landroid/graphics/Bitmap;

    .line 88
    iget-object v1, p0, Lcom/amap/api/mapcore/bq;->e:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bq;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bi;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "ap.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bi;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "ap1.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "WaterMarkerView"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bq;->b:Landroid/graphics/Bitmap;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bq;->d:Landroid/graphics/Bitmap;

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bq;->e:Landroid/graphics/Bitmap;

    .line 54
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "WaterMarkerView"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/amap/api/mapcore/bq;->j:I

    .line 127
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bq;->g:Z

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bq;->invalidate()V

    .line 119
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bq;->g:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->b:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public c()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore/bq;->a:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bq;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/bq;->h:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 136
    iget v1, p0, Lcom/amap/api/mapcore/bq;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v1, p0, Lcom/amap/api/mapcore/bq;->i:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/bq;->a:I

    .line 144
    :goto_1
    sget-object v0, Lcom/amap/api/mapcore/r;->e:Lcom/amap/api/mapcore/r$a;

    sget-object v1, Lcom/amap/api/mapcore/r$a;->b:Lcom/amap/api/mapcore/r$a;

    if-ne v0, v1, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bq;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/bq;->a:I

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bq;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/bq;->h:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "WaterMarkerView"

    const-string v2, "onDraw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 138
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/amap/api/mapcore/bq;->j:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 139
    iget-object v1, p0, Lcom/amap/api/mapcore/bq;->i:Lcom/amap/api/mapcore/AMapDelegateImp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/AMapDelegateImp;->m()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/amap/api/mapcore/bq;->a:I

    goto :goto_1

    .line 141
    :cond_2
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/bq;->a:I

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bq;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/bq;->a:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bq;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/bq;->h:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/bq;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
