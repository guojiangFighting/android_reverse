.class public Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;
.super Ljava/lang/Object;
.source "PixelateText.java"

# interfaces
.implements Lcom/dodonew/online/widget/htextview/animatetext/IHText;


# static fields
.field public static final SCALE:I = 0x8


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field charTime:F

.field private differentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;",
            ">;"
        }
    .end annotation
.end field

.field private gaps:[F

.field mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

.field private mOldText:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private matrix:Landroid/graphics/Matrix;

.field private metrics:Landroid/util/DisplayMetrics;

.field mostCount:I

.field private oldGaps:[F

.field oldPaint:Landroid/graphics/Paint;

.field private oldStartX:F

.field paint:Landroid/graphics/Paint;

.field private pixCanvas:Landroid/graphics/Canvas;

.field private pixPaint:Landroid/graphics/Paint;

.field progress:F

.field private startX:F

.field private startY:F

.field private textSize:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->progress:F

    .line 32
    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->charTime:F

    .line 33
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mostCount:I

    .line 36
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->gaps:[F

    .line 37
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldGaps:[F

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->differentList:Ljava/util/List;

    .line 47
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldStartX:F

    .line 48
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->startX:F

    .line 49
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->startY:F

    return-void
.end method

.method private calc()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 346
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->textSize:F

    .line 347
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->textSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->gaps:[F

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->textSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldGaps:[F

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldStartX:F

    .line 361
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->startX:F

    .line 362
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->startY:F

    .line 364
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->differentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 365
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->differentList:Ljava/util/List;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->textSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 368
    return-void
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 43
    .param p0, "sbitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radiusf"    # F

    .prologue
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 58
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p1

    float-to-int v0, v0

    move/from16 v26, v0

    .line 59
    .local v26, "radius":I
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ge v0, v4, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 252
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 63
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 64
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 66
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 67
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 69
    add-int/lit8 v37, v5, -0x1

    .line 70
    .local v37, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 71
    .local v21, "hm":I
    mul-int v36, v5, v9

    .line 72
    .local v36, "wh":I
    add-int v4, v26, v26

    add-int/lit8 v14, v4, 0x1

    .line 74
    .local v14, "div":I
    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 75
    .local v24, "r":[I
    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 76
    .local v17, "g":[I
    move/from16 v0, v36

    new-array v10, v0, [I

    .line 78
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v35, v0

    .line 80
    .local v35, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 81
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 82
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 83
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 84
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 83
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 87
    :cond_1
    const/16 v40, 0x0

    .local v40, "yi":I
    move/from16 v42, v40

    .line 89
    .local v42, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [[I

    .line 94
    .local v32, "stack":[[I
    add-int/lit8 v25, v26, 0x1

    .line 98
    .local v25, "r1":I
    const/16 v39, 0x0

    .local v39, "y":I
    :goto_2
    move/from16 v0, v39

    if-ge v0, v9, :cond_6

    .line 99
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v30, v13

    .local v30, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v29, v13

    .local v29, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v28, v13

    .line 100
    .local v28, "rinsum":I
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v26

    if-gt v0, v1, :cond_3

    .line 101
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v40

    aget v23, v3, v4

    .line 102
    .local v23, "p":I
    add-int v4, v22, v26

    aget-object v31, v32, v4

    .line 103
    .local v31, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v31, v4

    .line 104
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v31, v4

    .line 105
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v31, v4

    .line 106
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v27, v25, v4

    .line 107
    .local v27, "rbs":I
    const/4 v4, 0x0

    aget v4, v31, v4

    mul-int v4, v4, v27

    add-int v30, v30, v4

    .line 108
    const/4 v4, 0x1

    aget v4, v31, v4

    mul-int v4, v4, v27

    add-int v20, v20, v4

    .line 109
    const/4 v4, 0x2

    aget v4, v31, v4

    mul-int v4, v4, v27

    add-int/2addr v13, v4

    .line 110
    if-lez v22, :cond_2

    .line 111
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v28, v28, v4

    .line 112
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 113
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v11, v4

    .line 100
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 115
    :cond_2
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 116
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v19, v19, v4

    .line 117
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v12, v4

    goto :goto_4

    .line 120
    .end local v23    # "p":I
    .end local v27    # "rbs":I
    .end local v31    # "sir":[I
    :cond_3
    move/from16 v33, v26

    .line 122
    .local v33, "stackpointer":I
    const/16 v38, 0x0

    .local v38, "x":I
    :goto_5
    move/from16 v0, v38

    if-ge v0, v5, :cond_5

    .line 124
    aget v4, v16, v30

    aput v4, v24, v40

    .line 125
    aget v4, v16, v20

    aput v4, v17, v40

    .line 126
    aget v4, v16, v13

    aput v4, v10, v40

    .line 128
    sub-int v30, v30, v29

    .line 129
    sub-int v20, v20, v19

    .line 130
    sub-int/2addr v13, v12

    .line 132
    sub-int v4, v33, v26

    add-int v34, v4, v14

    .line 133
    .local v34, "stackstart":I
    rem-int v4, v34, v14

    aget-object v31, v32, v4

    .line 135
    .restart local v31    # "sir":[I
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v29, v29, v4

    .line 136
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v19, v19, v4

    .line 137
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int/2addr v12, v4

    .line 139
    if-nez v39, :cond_4

    .line 140
    add-int v4, v38, v26

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v37

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v35, v38

    .line 142
    :cond_4
    aget v4, v35, v38

    add-int v4, v4, v42

    aget v23, v3, v4

    .line 144
    .restart local v23    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v31, v4

    .line 145
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v31, v4

    .line 146
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v31, v4

    .line 148
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v28, v28, v4

    .line 149
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 150
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v11, v4

    .line 152
    add-int v30, v30, v28

    .line 153
    add-int v20, v20, v18

    .line 154
    add-int/2addr v13, v11

    .line 156
    add-int/lit8 v4, v33, 0x1

    rem-int v33, v4, v14

    .line 157
    rem-int v4, v33, v14

    aget-object v31, v32, v4

    .line 159
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 160
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v19, v19, v4

    .line 161
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v12, v4

    .line 163
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v28, v28, v4

    .line 164
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v18, v18, v4

    .line 165
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int/2addr v11, v4

    .line 167
    add-int/lit8 v40, v40, 0x1

    .line 122
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_5

    .line 169
    .end local v23    # "p":I
    .end local v31    # "sir":[I
    .end local v34    # "stackstart":I
    :cond_5
    add-int v42, v42, v5

    .line 98
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_2

    .line 171
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v28    # "rinsum":I
    .end local v29    # "routsum":I
    .end local v30    # "rsum":I
    .end local v33    # "stackpointer":I
    .end local v38    # "x":I
    :cond_6
    const/16 v38, 0x0

    .restart local v38    # "x":I
    :goto_6
    move/from16 v0, v38

    if-ge v0, v5, :cond_c

    .line 172
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v30, v13

    .restart local v30    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v29, v13

    .restart local v29    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v28, v13

    .line 173
    .restart local v28    # "rinsum":I
    move/from16 v0, v26

    neg-int v4, v0

    mul-int v41, v4, v5

    .line 174
    .local v41, "yp":I
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v26

    if-gt v0, v1, :cond_9

    .line 175
    const/4 v4, 0x0

    move/from16 v0, v41

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v40, v4, v38

    .line 177
    add-int v4, v22, v26

    aget-object v31, v32, v4

    .line 179
    .restart local v31    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v40

    aput v6, v31, v4

    .line 180
    const/4 v4, 0x1

    aget v6, v17, v40

    aput v6, v31, v4

    .line 181
    const/4 v4, 0x2

    aget v6, v10, v40

    aput v6, v31, v4

    .line 183
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v27, v25, v4

    .line 185
    .restart local v27    # "rbs":I
    aget v4, v24, v40

    mul-int v4, v4, v27

    add-int v30, v30, v4

    .line 186
    aget v4, v17, v40

    mul-int v4, v4, v27

    add-int v20, v20, v4

    .line 187
    aget v4, v10, v40

    mul-int v4, v4, v27

    add-int/2addr v13, v4

    .line 189
    if-lez v22, :cond_8

    .line 190
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v28, v28, v4

    .line 191
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 192
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v11, v4

    .line 199
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 200
    add-int v41, v41, v5

    .line 174
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 194
    :cond_8
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 195
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v19, v19, v4

    .line 196
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v12, v4

    goto :goto_8

    .line 203
    .end local v27    # "rbs":I
    .end local v31    # "sir":[I
    :cond_9
    move/from16 v40, v38

    .line 204
    move/from16 v33, v26

    .line 205
    .restart local v33    # "stackpointer":I
    const/16 v39, 0x0

    :goto_9
    move/from16 v0, v39

    if-ge v0, v9, :cond_b

    .line 207
    const/high16 v4, -0x1000000

    aget v6, v3, v40

    and-int/2addr v4, v6

    aget v6, v16, v30

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v40

    .line 209
    sub-int v30, v30, v29

    .line 210
    sub-int v20, v20, v19

    .line 211
    sub-int/2addr v13, v12

    .line 213
    sub-int v4, v33, v26

    add-int v34, v4, v14

    .line 214
    .restart local v34    # "stackstart":I
    rem-int v4, v34, v14

    aget-object v31, v32, v4

    .line 216
    .restart local v31    # "sir":[I
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v29, v29, v4

    .line 217
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v19, v19, v4

    .line 218
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int/2addr v12, v4

    .line 220
    if-nez v38, :cond_a

    .line 221
    add-int v4, v39, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v35, v39

    .line 223
    :cond_a
    aget v4, v35, v39

    add-int v23, v38, v4

    .line 225
    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v31, v4

    .line 226
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v31, v4

    .line 227
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v31, v4

    .line 229
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v28, v28, v4

    .line 230
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v18, v18, v4

    .line 231
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v11, v4

    .line 233
    add-int v30, v30, v28

    .line 234
    add-int v20, v20, v18

    .line 235
    add-int/2addr v13, v11

    .line 237
    add-int/lit8 v4, v33, 0x1

    rem-int v33, v4, v14

    .line 238
    aget-object v31, v32, v33

    .line 240
    const/4 v4, 0x0

    aget v4, v31, v4

    add-int v29, v29, v4

    .line 241
    const/4 v4, 0x1

    aget v4, v31, v4

    add-int v19, v19, v4

    .line 242
    const/4 v4, 0x2

    aget v4, v31, v4

    add-int/2addr v12, v4

    .line 244
    const/4 v4, 0x0

    aget v4, v31, v4

    sub-int v28, v28, v4

    .line 245
    const/4 v4, 0x1

    aget v4, v31, v4

    sub-int v18, v18, v4

    .line 246
    const/4 v4, 0x2

    aget v4, v31, v4

    sub-int/2addr v11, v4

    .line 248
    add-int v40, v40, v5

    .line 205
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_9

    .line 171
    .end local v23    # "p":I
    .end local v31    # "sir":[I
    .end local v34    # "stackstart":I
    :cond_b
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_6

    .line 251
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v28    # "rinsum":I
    .end local v29    # "routsum":I
    .end local v30    # "rsum":I
    .end local v33    # "stackpointer":I
    .end local v41    # "yp":I
    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateText(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 295
    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    .line 296
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    .line 297
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->calc()V

    .line 299
    iget-object v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 300
    .local v2, "n":I
    if-gtz v2, :cond_0

    move v2, v4

    .line 303
    :cond_0
    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->charTime:F

    iget v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->charTime:F

    iget v7, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mostCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-long v0, v5

    .line 305
    .local v0, "duration":J
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    long-to-float v6, v0

    aput v6, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 306
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    new-instance v4, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText$1;

    invoke-direct {v4, p0}, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 314
    return-void
.end method

.method public init(Lcom/dodonew/online/widget/htextview/HTextView;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "hTextView"    # Lcom/dodonew/online/widget/htextview/HTextView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    .line 257
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    .line 259
    const-string v1, ""

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    .line 260
    const-string v1, ""

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    .line 262
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    .line 263
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    .line 267
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 270
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixPaint:Landroid/graphics/Paint;

    .line 271
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->metrics:Landroid/util/DisplayMetrics;

    .line 275
    invoke-virtual {p1}, Lcom/dodonew/online/widget/htextview/HTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    .line 276
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 277
    .local v0, "windowManger":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 279
    invoke-virtual {p1}, Lcom/dodonew/online/widget/htextview/HTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->textSize:F

    .line 281
    const/16 v1, 0x2bc

    const/16 v2, 0xc8

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->bitmap:Landroid/graphics/Bitmap;

    .line 283
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->matrix:Landroid/graphics/Matrix;

    .line 285
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixCanvas:Landroid/graphics/Canvas;

    .line 286
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget v10, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->startX:F

    .line 318
    .local v10, "offset":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldStartX:F

    .line 320
    .local v5, "oldOffset":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->progress:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->charTime:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->charTime:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mostCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    div-float v15, v1, v2

    .line 322
    .local v15, "pp":F
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/widget/htextview/util/HLog;->i(Ljava/lang/Object;)V

    .line 324
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v15

    float-to-int v13, v1

    .line 325
    .local v13, "alpha":I
    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v15

    mul-float/2addr v1, v2

    float-to-int v14, v1

    .line 327
    .local v14, "oldAlpha":I
    const/16 v1, 0xff

    if-le v13, v1, :cond_0

    const/16 v13, 0xff

    .line 328
    :cond_0
    if-gez v13, :cond_1

    const/4 v13, 0x0

    .line 330
    :cond_1
    const/16 v1, 0xff

    if-le v14, v1, :cond_2

    const/16 v14, 0xff

    .line 331
    :cond_2
    if-gez v14, :cond_3

    const/4 v14, 0x0

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixCanvas:Landroid/graphics/Canvas;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->startY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->oldPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->startY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 340
    new-instance v16, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x2bc

    const/16 v4, 0xc8

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 341
    .local v16, "targetRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->pixPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 343
    return-void
.end method

.method public reset(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->progress:F

    .line 290
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->calc()V

    .line 291
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 292
    return-void
.end method
