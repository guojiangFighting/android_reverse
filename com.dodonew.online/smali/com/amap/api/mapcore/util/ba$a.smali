.class public Lcom/amap/api/mapcore/util/ba$a;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/File;

.field public d:Landroid/graphics/Bitmap$CompressFormat;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/mapcore/util/ba$a;->a:I

    .line 514
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/amap/api/mapcore/util/ba$a;->b:I

    .line 516
    invoke-static {}, Lcom/amap/api/mapcore/util/ba;->f()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 517
    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/mapcore/util/ba$a;->e:I

    .line 518
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ba$a;->f:Z

    .line 519
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ba$a;->g:Z

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ba$a;->h:Z

    .line 535
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba$a;->c:Ljava/io/File;

    .line 536
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 566
    iput p1, p0, Lcom/amap/api/mapcore/util/ba$a;->a:I

    .line 567
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba$a;->c:Ljava/io/File;

    .line 576
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ba$a;->f:Z

    .line 580
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 570
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ba$a;->g:Z

    .line 571
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/ba$a;->b:I

    .line 572
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ba$a;->g:Z

    .line 584
    return-void
.end method
