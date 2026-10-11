.class public Lcom/amap/api/mapcore/bm$a;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/autonavi/amap/mapcore/IPoint;

.field public f:I

.field public g:Z

.field public h:Ljava/nio/FloatBuffer;

.field public i:Landroid/graphics/Bitmap;

.field public j:Lcom/amap/api/mapcore/util/bd$a;

.field public k:I

.field final synthetic l:Lcom/amap/api/mapcore/bm;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/bm;IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 574
    iput-object p1, p0, Lcom/amap/api/mapcore/bm$a;->l:Lcom/amap/api/mapcore/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->f:I

    .line 702
    iput-boolean v0, p0, Lcom/amap/api/mapcore/bm$a;->g:Z

    .line 703
    iput-object v1, p0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    .line 704
    iput-object v1, p0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    .line 705
    iput-object v1, p0, Lcom/amap/api/mapcore/bm$a;->j:Lcom/amap/api/mapcore/util/bd$a;

    .line 706
    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    .line 575
    iput p2, p0, Lcom/amap/api/mapcore/bm$a;->a:I

    .line 576
    iput p3, p0, Lcom/amap/api/mapcore/bm$a;->b:I

    .line 577
    iput p4, p0, Lcom/amap/api/mapcore/bm$a;->c:I

    .line 578
    iput p5, p0, Lcom/amap/api/mapcore/bm$a;->d:I

    .line 579
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/bm;Lcom/amap/api/mapcore/bm$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 581
    iput-object p1, p0, Lcom/amap/api/mapcore/bm$a;->l:Lcom/amap/api/mapcore/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->f:I

    .line 702
    iput-boolean v0, p0, Lcom/amap/api/mapcore/bm$a;->g:Z

    .line 703
    iput-object v1, p0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    .line 704
    iput-object v1, p0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    .line 705
    iput-object v1, p0, Lcom/amap/api/mapcore/bm$a;->j:Lcom/amap/api/mapcore/util/bd$a;

    .line 706
    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    .line 582
    iget v0, p2, Lcom/amap/api/mapcore/bm$a;->a:I

    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->a:I

    .line 583
    iget v0, p2, Lcom/amap/api/mapcore/bm$a;->b:I

    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->b:I

    .line 584
    iget v0, p2, Lcom/amap/api/mapcore/bm$a;->c:I

    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->c:I

    .line 585
    iget v0, p2, Lcom/amap/api/mapcore/bm$a;->d:I

    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->d:I

    .line 586
    iget-object v0, p2, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v0, p0, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 587
    iget-object v0, p2, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    .line 588
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/bm$a;
    .locals 2

    .prologue
    .line 592
    .line 594
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/bm$a;

    .line 595
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->a:I

    iput v1, v0, Lcom/amap/api/mapcore/bm$a;->a:I

    .line 596
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->b:I

    iput v1, v0, Lcom/amap/api/mapcore/bm$a;->b:I

    .line 597
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->c:I

    iput v1, v0, Lcom/amap/api/mapcore/bm$a;->c:I

    .line 598
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->d:I

    iput v1, v0, Lcom/amap/api/mapcore/bm$a;->d:I

    .line 599
    iget-object v1, p0, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, v0, Lcom/amap/api/mapcore/bm$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 600
    iget-object v1, p0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->asReadOnlyBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore/bm$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/bm$a;->l:Lcom/amap/api/mapcore/bm;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/bm$a;-><init>(Lcom/amap/api/mapcore/bm;Lcom/amap/api/mapcore/bm$a;)V

    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/16 v5, 0x6f

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 642
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 644
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/bm$a;->j:Lcom/amap/api/mapcore/util/bd$a;

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 646
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 647
    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(I)I

    move-result v0

    .line 648
    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->a(I)I

    move-result v1

    .line 647
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    .line 650
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->l:Lcom/amap/api/mapcore/bm;

    invoke-static {v0}, Lcom/amap/api/mapcore/bm;->a(Lcom/amap/api/mapcore/bm;)Lcom/amap/api/mapcore/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/aa;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    :cond_1
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    const-string v1, "TileOverlayDelegateImp"

    const-string v2, "setBitmap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 655
    iget v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    if-ge v0, v4, :cond_0

    .line 656
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->l:Lcom/amap/api/mapcore/bm;

    invoke-static {v0}, Lcom/amap/api/mapcore/bm;->b(Lcom/amap/api/mapcore/bm;)Lcom/amap/api/mapcore/util/bb;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/amap/api/mapcore/util/bb;->a(ZLcom/amap/api/mapcore/bm$a;)V

    .line 657
    iget v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    .line 658
    const-string v0, "TileOverlayDelegateImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitmap Throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "retry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 664
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    if-ge v0, v4, :cond_0

    .line 665
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->l:Lcom/amap/api/mapcore/bm;

    invoke-static {v0}, Lcom/amap/api/mapcore/bm;->b(Lcom/amap/api/mapcore/bm;)Lcom/amap/api/mapcore/util/bb;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/amap/api/mapcore/util/bb;->a(ZLcom/amap/api/mapcore/bm$a;)V

    .line 666
    iget v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    .line 667
    const-string v0, "TileOverlayDelegateImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitmap failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "retry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/bm$a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 679
    invoke-static {p0}, Lcom/amap/api/mapcore/util/bd;->a(Lcom/amap/api/mapcore/bm$a;)V

    .line 680
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bm$a;->g:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->l:Lcom/amap/api/mapcore/bm;

    invoke-static {v0}, Lcom/amap/api/mapcore/bm;->c(Lcom/amap/api/mapcore/bm;)Lcom/amap/api/mapcore/bn;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore/bn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_0
    iput-boolean v3, p0, Lcom/amap/api/mapcore/bm$a;->g:Z

    .line 684
    iput v3, p0, Lcom/amap/api/mapcore/bm$a;->f:I

    .line 685
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 688
    :cond_1
    iput-object v2, p0, Lcom/amap/api/mapcore/bm$a;->i:Landroid/graphics/Bitmap;

    .line 689
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 692
    :cond_2
    iput-object v2, p0, Lcom/amap/api/mapcore/bm$a;->h:Ljava/nio/FloatBuffer;

    .line 693
    iput-object v2, p0, Lcom/amap/api/mapcore/bm$a;->j:Lcom/amap/api/mapcore/util/bd$a;

    .line 694
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bm$a;->a()Lcom/amap/api/mapcore/bm$a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 610
    if-ne p0, p1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 613
    :cond_1
    instance-of v2, p1, Lcom/amap/api/mapcore/bm$a;

    if-nez v2, :cond_2

    move v0, v1

    .line 614
    goto :goto_0

    .line 617
    :cond_2
    check-cast p1, Lcom/amap/api/mapcore/bm$a;

    .line 618
    iget v2, p0, Lcom/amap/api/mapcore/bm$a;->a:I

    iget v3, p1, Lcom/amap/api/mapcore/bm$a;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore/bm$a;->b:I

    iget v3, p1, Lcom/amap/api/mapcore/bm$a;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore/bm$a;->c:I

    iget v3, p1, Lcom/amap/api/mapcore/bm$a;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore/bm$a;->d:I

    iget v3, p1, Lcom/amap/api/mapcore/bm$a;->d:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/amap/api/mapcore/bm$a;->a:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->b:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->c:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget v1, p0, Lcom/amap/api/mapcore/bm$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
