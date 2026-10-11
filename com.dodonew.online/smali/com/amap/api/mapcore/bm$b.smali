.class Lcom/amap/api/mapcore/bm$b;
.super Lcom/amap/api/mapcore/util/av;
.source "TileOverlayDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/av",
        "<",
        "Lcom/amap/api/mapcore/aa;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/amap/api/mapcore/bm$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/bm;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/bm;Z)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/amap/api/mapcore/bm$b;->a:Lcom/amap/api/mapcore/bm;

    .line 537
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/av;-><init>()V

    .line 538
    iput-boolean p2, p0, Lcom/amap/api/mapcore/bm$b;->f:Z

    .line 539
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 531
    check-cast p1, [Lcom/amap/api/mapcore/aa;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/bm$b;->a([Lcom/amap/api/mapcore/aa;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lcom/amap/api/mapcore/aa;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amap/api/mapcore/aa;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/bm$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 545
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->k()I

    move-result v2

    .line 546
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/aa;->l()I

    move-result v0

    .line 547
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/aa;->E()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/amap/api/mapcore/bm$b;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 552
    :goto_0
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 553
    :cond_0
    const/4 v0, 0x0

    .line 554
    :goto_1
    return-object v0

    .line 548
    :catch_0
    move-exception v0

    move v0, v1

    .line 550
    goto :goto_0

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/bm$b;->a:Lcom/amap/api/mapcore/bm;

    iget v3, p0, Lcom/amap/api/mapcore/bm$b;->e:I

    invoke-static {v2, v3, v1, v0}, Lcom/amap/api/mapcore/bm;->a(Lcom/amap/api/mapcore/bm;III)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 531
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/bm$b;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/bm$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    if-nez p1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 563
    if-lez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$b;->a:Lcom/amap/api/mapcore/bm;

    iget v1, p0, Lcom/amap/api/mapcore/bm$b;->e:I

    iget-boolean v2, p0, Lcom/amap/api/mapcore/bm$b;->f:Z

    invoke-static {v0, p1, v1, v2}, Lcom/amap/api/mapcore/bm;->a(Lcom/amap/api/mapcore/bm;Ljava/util/List;IZ)Z

    .line 567
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
