.class Lcom/amap/api/mapcore/br;
.super Landroid/widget/LinearLayout;
.source "ZoomControllerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/amap/api/mapcore/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p2, p0, Lcom/amap/api/mapcore/br;->o:Lcom/amap/api/mapcore/aa;

    .line 94
    :try_start_0
    const-string v0, "zoomin_selected.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->g:Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->g:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->a:Landroid/graphics/Bitmap;

    .line 96
    const-string v0, "zoomin_unselected.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->h:Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->h:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    .line 98
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->b:Landroid/graphics/Bitmap;

    .line 99
    const-string v0, "zoomout_selected.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->i:Landroid/graphics/Bitmap;

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->i:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->c:Landroid/graphics/Bitmap;

    .line 102
    const-string v0, "zoomout_unselected.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->j:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->j:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->d:Landroid/graphics/Bitmap;

    .line 105
    const-string v0, "zoomin_pressed.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->k:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->k:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->e:Landroid/graphics/Bitmap;

    .line 107
    const-string v0, "zoomout_pressed.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->l:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->l:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/r;->a:F

    .line 109
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->f:Landroid/graphics/Bitmap;

    .line 111
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 115
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore/br$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/br$1;-><init>(Lcom/amap/api/mapcore/br;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore/br$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/br$2;-><init>(Lcom/amap/api/mapcore/br;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    const/4 v1, -0x2

    invoke-virtual {v0, v3, v3, v5, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 179
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v3, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 180
    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore/br;->setOrientation(I)V

    .line 182
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/br;->addView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/br;->addView(Landroid/view/View;)V

    .line 185
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "ZoomControllerView"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/br;)Lcom/amap/api/mapcore/aa;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->o:Lcom/amap/api/mapcore/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/br;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/br;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/br;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/br;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/br;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/br;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->a:Landroid/graphics/Bitmap;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->b:Landroid/graphics/Bitmap;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->c:Landroid/graphics/Bitmap;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->d:Landroid/graphics/Bitmap;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->e:Landroid/graphics/Bitmap;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->f:Landroid/graphics/Bitmap;

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->g:Landroid/graphics/Bitmap;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->h:Landroid/graphics/Bitmap;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->i:Landroid/graphics/Bitmap;

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->g:Landroid/graphics/Bitmap;

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->k:Landroid/graphics/Bitmap;

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->l:Landroid/graphics/Bitmap;

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/br;->removeAllViews()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "ZoomControllerView"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->o:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->r()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/br;->o:Lcom/amap/api/mapcore/aa;

    .line 189
    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->s()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->o:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->s()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->o:Lcom/amap/api/mapcore/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->r()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v0, p0, Lcom/amap/api/mapcore/br;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
