.class public Lcom/dodonew/online/util/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field public static final GB:J = 0x40000000L

.field public static final KB:J = 0x400L

.field public static final MB:J = 0x100000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _queryPathFromMediaStore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 604
    const/4 v9, 0x0

    .line 606
    .local v9, "filePath":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 607
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 608
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 609
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 610
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 612
    :catch_0
    move-exception v8

    .line 613
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/dodonew/online/util/LogUtils;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static toArray(Ljava/util/List;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 260
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "binaryString":Ljava/lang/String;
    return-object v0
.end method

.method public static varargs toBinaryString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 235
    const/16 v6, 0x10

    new-array v0, v6, [C

    fill-array-data v0, :array_0

    .line 238
    .local v0, "DIGITS":[C
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x8

    new-array v1, v6, [C

    .line 239
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v6, p0

    if-ge v2, v6, :cond_1

    .line 240
    aget-byte v6, p0, v2

    if-gez v6, :cond_0

    aget-byte v6, p0, v2

    add-int/lit16 v5, v6, 0x100

    .line 241
    .local v5, "u":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    ushr-int/lit8 v6, v5, 0x7

    and-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v3

    .line 242
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v4

    .line 243
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v6, v5, 0x5

    and-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v3

    .line 244
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v4

    .line 245
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v3

    .line 246
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v6, v5, 0x2

    and-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v4

    .line 247
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v6, v5, 0x1

    and-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v3

    .line 248
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    and-int/lit8 v6, v5, 0x1

    aget-char v6, v0, v6

    aput-char v6, v1, v4

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v5    # "u":I
    :cond_0
    aget-byte v5, p0, v2

    goto :goto_1

    .line 250
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 235
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v3, 0x20

    const/4 v5, 0x0

    .line 512
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 513
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 531
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 514
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    instance-of v2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 516
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 518
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 519
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 522
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_3

    .line 524
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 525
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 524
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 527
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 531
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 627
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 628
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 629
    .local v4, "height":I
    instance-of v11, p0, Landroid/widget/ListView;

    if-eqz v11, :cond_0

    .line 630
    const/4 v4, 0x0

    move-object v6, p0

    .line 632
    check-cast v6, Landroid/widget/ListView;

    .line 633
    .local v6, "listView":Landroid/widget/ListView;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 634
    invoke-virtual {v6, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v4, v11

    .line 633
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 636
    .end local v5    # "i":I
    .end local v6    # "listView":Landroid/widget/ListView;
    :cond_0
    instance-of v11, p0, Landroid/widget/ScrollView;

    if-eqz v11, :cond_1

    .line 637
    const/4 v4, 0x0

    move-object v7, p0

    .line 639
    check-cast v7, Landroid/widget/ScrollView;

    .line 640
    .local v7, "scrollView":Landroid/widget/ScrollView;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 641
    invoke-virtual {v7, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v4, v11

    .line 640
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 644
    .end local v5    # "i":I
    .end local v7    # "scrollView":Landroid/widget/ScrollView;
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 646
    invoke-virtual {p0, v14}, Landroid/view/View;->setPressed(Z)V

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v9

    .line 648
    .local v9, "willNotCache":Z
    invoke-virtual {p0, v14}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 651
    .local v3, "color":I
    invoke-virtual {p0, v13}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 652
    if-eq v3, v13, :cond_2

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 655
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 656
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 657
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    move-object v0, v10

    .line 670
    :goto_2
    return-object v0

    .line 660
    :cond_3
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 662
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v1, v12, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 663
    const/16 v10, 0x1f

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 664
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 665
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 668
    invoke-virtual {p0, v9}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 669
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_2
.end method

.method public static toBitmap([B)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, -0x1

    .line 500
    invoke-static {p0, v0, v0}, Lcom/dodonew/online/util/ConvertUtils;->toBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    array-length v3, p0

    if-eqz v3, :cond_1

    .line 476
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 478
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 480
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 481
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 482
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 483
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 485
    :cond_0
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 490
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toByteArray(I)[B
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 145
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 461
    :goto_0
    return-object v0

    .line 452
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 454
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 455
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 457
    .local v0, "bytes":[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static toByteArray(Landroid/graphics/drawable/Drawable;)[B
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 690
    invoke-static {p0}, Lcom/dodonew/online/util/ConvertUtils;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/dodonew/online/util/ConvertUtils;->toByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 423
    if-nez p0, :cond_0

    move-object v1, v5

    .line 439
    :goto_0
    return-object v1

    .line 427
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 428
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x64

    new-array v0, v6, [B

    .line 429
    .local v0, "buff":[B
    const/4 v4, 0x0

    .line 430
    .local v4, "rc":I
    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-virtual {p0, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_1

    .line 431
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 436
    .end local v0    # "buff":[B
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "rc":I
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v5

    .line 439
    goto :goto_0

    .line 433
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buff":[B
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "rc":I
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 434
    .local v1, "bytes":[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;Z)[B
    .locals 7
    .param p0, "hexData"    # Ljava/lang/String;
    .param p1, "isHex"    # Z

    .prologue
    .line 156
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    .line 159
    :cond_1
    if-nez p1, :cond_2

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_2
    const-string v5, "\\s+"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    const-string v3, "0123456789ABCDEF"

    .line 164
    .local v3, "hexDigits":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 167
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 168
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    .line 169
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    or-int/2addr v5, v6

    .line 168
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 173
    .local v1, "bytes":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I

    .prologue
    .line 861
    invoke-static {p0, p1, p1, p0}, Lcom/dodonew/online/util/ConvertUtils;->toColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static toColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I
    .param p2, "focusedColor"    # I
    .param p3, "unableColor"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 842
    const/4 v2, 0x6

    new-array v0, v2, [I

    aput p1, v0, v4

    aput p2, v0, v5

    aput p0, v0, v6

    aput p2, v0, v7

    aput p3, v0, v8

    const/4 v2, 0x5

    aput p0, v0, v2

    .line 843
    .local v0, "colors":[I
    const/4 v2, 0x6

    new-array v1, v2, [[I

    .line 844
    .local v1, "states":[[I
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v4

    .line 845
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    .line 846
    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v6

    .line 847
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v7

    .line 848
    new-array v2, v5, [I

    const v3, 0x101009d

    aput v3, v2, v4

    aput-object v2, v1, v8

    .line 849
    const/4 v2, 0x5

    new-array v3, v4, [I

    aput-object v3, v1, v2

    .line 850
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 844
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 845
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static toColorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dodonew/online/util/ConvertUtils;->toColorString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toColorString(IZ)Ljava/lang/String;
    .locals 8
    .param p0, "color"    # I
    .param p1, "includeAlpha"    # Z

    .prologue
    const/4 v7, 0x1

    .line 282
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "alpha":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "red":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "green":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "blue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_3
    if-eqz p1, :cond_4

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "colorString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 302
    .end local v2    # "colorString":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "colorString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p0}, Lcom/dodonew/online/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 326
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/dodonew/online/util/ConvertUtils;->toDateString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDateString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 316
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toDp(Landroid/content/Context;F)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 737
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 738
    .local v1, "scale":F
    div-float v2, p1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 739
    .local v0, "dpValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " px == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    .line 740
    return v0
.end method

.method public static toDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 680
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static toDrawable([B)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 700
    invoke-static {p0}, Lcom/dodonew/online/util/ConvertUtils;->toBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/dodonew/online/util/ConvertUtils;->toDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static toFileSizeString(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileSize"    # J

    .prologue
    .line 779
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "fileSizeString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 783
    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_0

    .line 785
    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_0

    .line 788
    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/Object;)F
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 128
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static toGbk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 765
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "gbk"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 768
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 766
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 767
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/util/LogUtils;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 224
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "hexString":Ljava/lang/String;
    return-object v0
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const-string v3, ""

    .line 195
    :goto_0
    return-object v3

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 191
    .local v2, "bytes":[B
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v0, v2, v3

    .line 192
    .local v0, "aByte":B
    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "aByte":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 205
    const/16 v6, 0x10

    new-array v0, v6, [C

    fill-array-data v0, :array_0

    .line 208
    .local v0, "DIGITS":[C
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    new-array v1, v6, [C

    .line 209
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v6, p0

    if-ge v2, v6, :cond_1

    .line 210
    aget-byte v6, p0, v2

    if-gez v6, :cond_0

    aget-byte v6, p0, v2

    add-int/lit16 v5, v6, 0x100

    .line 211
    .local v5, "u":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    ushr-int/lit8 v6, v5, 0x4

    aget-char v6, v0, v6

    aput-char v6, v1, v3

    .line 212
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    and-int/lit8 v6, v5, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v4

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v5    # "u":I
    :cond_0
    aget-byte v5, p0, v2

    goto :goto_1

    .line 214
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 205
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static toInt([B)I
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 87
    aget-byte v0, p0, v1

    .line 88
    .local v0, "abyte":B
    and-int/lit16 v3, v0, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "abyte":B
    :cond_0
    return v2
.end method

.method public static toList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(Ljava/lang/Object;)J
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 114
    :goto_0
    return-wide v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static toPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "authority":Ljava/lang/String;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_0

    const/4 v4, 0x1

    .line 550
    .local v4, "isKitKat":Z
    :goto_0
    if-eqz v4, :cond_6

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 552
    const-string v11, "com.android.externalstorage.documents"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 553
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 555
    .local v9, "split":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v10, v9, v11

    .line 556
    .local v10, "type":Ljava/lang/String;
    const-string v11, "primary"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 557
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 600
    .end local v2    # "docId":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v9    # "split":[Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 548
    .end local v4    # "isKitKat":Z
    .restart local v5    # "path":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 561
    .restart local v4    # "isKitKat":Z
    :cond_1
    const-string v11, "com.android.providers.downloads.documents"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 562
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "id":Ljava/lang/String;
    const-string v11, "content://downloads/public_downloads"

    .line 564
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 563
    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 565
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v1, v11, v12}, Lcom/dodonew/online/util/ConvertUtils;->_queryPathFromMediaStore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 568
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    const-string v11, "com.android.providers.media.documents"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 569
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .restart local v2    # "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 571
    .restart local v9    # "split":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v10, v9, v11

    .line 572
    .restart local v10    # "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 573
    .restart local v1    # "contentUri":Landroid/net/Uri;
    const-string v11, "image"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 574
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 580
    :cond_3
    :goto_2
    const-string v7, "_id=?"

    .line 581
    .local v7, "selection":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-object v12, v9, v12

    aput-object v12, v8, v11

    .line 582
    .local v8, "selectionArgs":[Ljava/lang/String;
    const-string v11, "_id=?"

    invoke-static {p0, v1, v11, v8}, Lcom/dodonew/online/util/ConvertUtils;->_queryPathFromMediaStore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 575
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    const-string v11, "video"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 576
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 577
    :cond_5
    const-string v11, "audio"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 578
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 587
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "docId":Ljava/lang/String;
    .end local v9    # "split":[Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :cond_6
    const-string v11, "content"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 589
    const-string v11, "com.google.android.apps.photos.content"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 590
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 592
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, p1, v11, v12}, Lcom/dodonew/online/util/ConvertUtils;->_queryPathFromMediaStore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 595
    :cond_8
    const-string v11, "file"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 596
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 599
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uri to path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static toPx(F)I
    .locals 4
    .param p0, "dpValue"    # F

    .prologue
    .line 724
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 725
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, p0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 726
    .local v0, "px":F
    float-to-int v2, v0

    return v2
.end method

.method public static toPx(Landroid/content/Context;F)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 712
    .local v1, "scale":F
    mul-float v2, p1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 713
    .local v0, "pxValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dp == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " px"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    .line 714
    return v0
.end method

.method public static toRoundDrawable(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 7
    .param p0, "color"    # I
    .param p1, "radius"    # I

    .prologue
    const/4 v6, 0x0

    .line 822
    int-to-float v4, p1

    invoke-static {v4}, Lcom/dodonew/online/util/ConvertUtils;->toPx(F)I

    move-result v2

    .line 823
    .local v2, "r":I
    const/16 v4, 0x8

    new-array v1, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x7

    int-to-float v5, v2

    aput v5, v1, v4

    .line 824
    .local v1, "outerR":[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 825
    .local v3, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 826
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 827
    return-object v0
.end method

.method public static toShort(BB)I
    .locals 2
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 101
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static toSlashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v2, ""

    .line 357
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 358
    .local v0, "chars":[C
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 359
    .local v1, "chr":C
    const/16 v5, 0x22

    if-eq v1, v5, :cond_0

    const/16 v5, 0x27

    if-eq v1, v5, :cond_0

    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 360
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "chr":C
    :cond_2
    return-object v2
.end method

.method public static toSp(Landroid/content/Context;F)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 752
    .local v0, "fontScale":F
    div-float v2, p1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 753
    .local v1, "spValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " px == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    .line 754
    return v1
.end method

.method public static toStateListDrawable(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I

    .prologue
    .line 927
    invoke-static {p0, p1, p1, p0}, Lcom/dodonew/online/util/ConvertUtils;->toStateListDrawable(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static toStateListDrawable(IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I
    .param p2, "focusedColor"    # I
    .param p3, "unableColor"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 894
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 895
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 896
    .local v2, "normal":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 897
    .local v3, "pressed":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 898
    .local v1, "focused":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 899
    .local v4, "unable":Landroid/graphics/drawable/Drawable;
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 900
    new-array v5, v6, [I

    fill-array-data v5, :array_1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 901
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    invoke-virtual {v0, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 902
    new-array v5, v8, [I

    const v6, 0x101009c

    aput v6, v5, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 903
    new-array v5, v8, [I

    const v6, 0x101009d

    aput v6, v5, v7

    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 904
    new-array v5, v7, [I

    invoke-virtual {v0, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 905
    return-object v0

    .line 899
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 900
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static toStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 916
    invoke-static {p0, p1, p1, p0}, Lcom/dodonew/online/util/ConvertUtils;->toStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static toStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;
    .param p2, "focused"    # Landroid/graphics/drawable/Drawable;
    .param p3, "unable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 874
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 875
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 876
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 877
    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v3

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 878
    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 879
    new-array v1, v4, [I

    const v2, 0x101009d

    aput v2, v1, v3

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 880
    new-array v1, v3, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 881
    return-object v0

    .line 875
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 876
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 803
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 804
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/dodonew/online/util/LogUtils;->error(Ljava/lang/Throwable;)V

    .line 811
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 807
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 397
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "objects"    # [Ljava/lang/Object;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 410
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toTimemillis(Ljava/lang/String;)J
    .locals 2
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {p0}, Lcom/dodonew/online/util/ConvertUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
