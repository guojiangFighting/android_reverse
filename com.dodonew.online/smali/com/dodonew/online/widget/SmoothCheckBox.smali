.class public Lcom/dodonew/online/widget/SmoothCheckBox;
.super Landroid/view/View;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final COLOR_CHECKED:I

.field private static final COLOR_FLOOR_UNCHECKED:I

.field private static final COLOR_TICK:I = -0x1

.field private static final COLOR_UNCHECKED:I = -0x1

.field private static final DEF_ANIM_DURATION:I = 0x12c

.field private static final DEF_DRAW_SIZE:I = 0x19

.field private static final KEY_INSTANCE_STATE:Ljava/lang/String; = "InstanceState"


# instance fields
.field private canClick:Z

.field private mAnimDuration:I

.field private mCenterPoint:Landroid/graphics/Point;

.field private mChecked:Z

.field private mCheckedColor:I

.field private mDrewDistance:F

.field private mFloorColor:I

.field private mFloorPaint:Landroid/graphics/Paint;

.field private mFloorScale:F

.field private mFloorUnCheckedColor:I

.field private mLeftLineDistance:F

.field private mListener:Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRightLineDistance:F

.field private mScaleVal:F

.field private mStrokeWidth:I

.field private mTickDrawing:Z

.field private mTickPaint:Landroid/graphics/Paint;

.field private mTickPath:Landroid/graphics/Path;

.field private mTickPoints:[Landroid/graphics/Point;

.field private mUnCheckedColor:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "#FB4846"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dodonew/online/widget/SmoothCheckBox;->COLOR_CHECKED:I

    .line 50
    const-string v0, "#DFDFDF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dodonew/online/widget/SmoothCheckBox;->COLOR_FLOOR_UNCHECKED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/SmoothCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/SmoothCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mScaleVal:F

    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorScale:F

    .line 77
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/SmoothCheckBox;->init(Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mScaleVal:F

    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorScale:F

    .line 83
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/SmoothCheckBox;->init(Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/SmoothCheckBox;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->canClick:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/dodonew/online/widget/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorScale:F

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/widget/SmoothCheckBox;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickDrawing:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/dodonew/online/widget/SmoothCheckBox;->COLOR_FLOOR_UNCHECKED:I

    return v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/widget/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    return p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/SmoothCheckBox;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->startCheckedAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/SmoothCheckBox;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->startUnCheckedAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/SmoothCheckBox;)F
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 45
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mScaleVal:F

    return v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/widget/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mScaleVal:F

    return p1
.end method

.method static synthetic access$602(Lcom/dodonew/online/widget/SmoothCheckBox;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorColor:I

    return p1
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 45
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mUnCheckedColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/widget/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 45
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCheckedColor:I

    return v0
.end method

.method static synthetic access$900(IIF)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/dodonew/online/widget/SmoothCheckBox;->getGradientColor(IIF)I

    move-result v0

    return v0
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 273
    .local v0, "radius":I
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 274
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mUnCheckedColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mScaleVal:F

    mul-float v0, v1, v2

    .line 267
    .local v0, "radius":F
    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 268
    return-void
.end method

.method private drawTick(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickDrawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/SmoothCheckBox;->drawTickPath(Landroid/graphics/Canvas;)V

    .line 280
    :cond_0
    return-void
.end method

.method private drawTickDelayed()V
    .locals 4

    .prologue
    .line 392
    new-instance v0, Lcom/dodonew/online/widget/SmoothCheckBox$7;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/SmoothCheckBox$7;-><init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    iget v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/dodonew/online/widget/SmoothCheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    return-void
.end method

.method private drawTickPath(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 283
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 285
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 286
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    cmpg-float v3, v3, v0

    if-gez v3, :cond_2

    .line 287
    .local v0, "step":F
    :goto_0
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    .line 288
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 289
    .local v1, "stopX":F
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    div-float/2addr v4, v5

    add-float v2, v3, v4

    .line 291
    .local v2, "stopY":F
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 292
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 295
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 296
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    iput v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    .line 325
    .end local v0    # "step":F
    .end local v1    # "stopX":F
    .end local v2    # "stopY":F
    :cond_0
    :goto_1
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mRightLineDistance:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 326
    new-instance v3, Lcom/dodonew/online/widget/SmoothCheckBox$2;

    invoke-direct {v3, p0}, Lcom/dodonew/online/widget/SmoothCheckBox$2;-><init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    const-wide/16 v4, 0xa

    invoke-virtual {p0, v3, v4, v5}, Lcom/dodonew/online/widget/SmoothCheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    :cond_1
    return-void

    .line 286
    :cond_2
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mWidth:I

    int-to-float v3, v3

    div-float v0, v3, v5

    goto/16 :goto_0

    .line 300
    :cond_3
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 301
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 305
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mRightLineDistance:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 306
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    iget v6, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mRightLineDistance:F

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 307
    .restart local v1    # "stopX":F
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    iget v6, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mRightLineDistance:F

    div-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 309
    .restart local v2    # "stopY":F
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 310
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 311
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 312
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 314
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mWidth:I

    div-int/lit8 v3, v3, 0x14

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 315
    .restart local v0    # "step":F
    :goto_2
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    goto/16 :goto_1

    .line 314
    .end local v0    # "step":F
    :cond_4
    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mWidth:I

    div-int/lit8 v3, v3, 0x14

    int-to-float v0, v3

    goto :goto_2

    .line 317
    .end local v1    # "stopX":F
    .end local v2    # "stopY":F
    :cond_5
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 318
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 319
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 320
    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private static getGradientColor(IIF)I
    .locals 13
    .param p0, "startColor"    # I
    .param p1, "endColor"    # I
    .param p2, "percent"    # F

    .prologue
    const/high16 v12, 0xff0000

    const v10, 0xff00

    const/high16 v11, 0x3f800000    # 1.0f

    .line 402
    and-int v9, p0, v12

    shr-int/lit8 v8, v9, 0x10

    .line 403
    .local v8, "sr":I
    and-int v9, p0, v10

    shr-int/lit8 v7, v9, 0x8

    .line 404
    .local v7, "sg":I
    and-int/lit16 v6, p0, 0xff

    .line 406
    .local v6, "sb":I
    and-int v9, p1, v12

    shr-int/lit8 v5, v9, 0x10

    .line 407
    .local v5, "er":I
    and-int v9, p1, v10

    shr-int/lit8 v4, v9, 0x8

    .line 408
    .local v4, "eg":I
    and-int/lit16 v3, p1, 0xff

    .line 410
    .local v3, "eb":I
    int-to-float v9, v8

    sub-float v10, v11, p2

    mul-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 411
    .local v2, "cr":I
    int-to-float v9, v7

    sub-float v10, v11, p2

    mul-float/2addr v9, v10

    int-to-float v10, v4

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 412
    .local v1, "cg":I
    int-to-float v9, v6

    sub-float v10, v11, p2

    mul-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v0, v9

    .line 413
    .local v0, "cb":I
    const/16 v9, 0xff

    invoke-static {v9, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    return v9
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dodonew/online/R$styleable;->SmoothCheckBox:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 90
    .local v1, "tickColor":I
    const/16 v2, 0x12c

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mAnimDuration:I

    .line 91
    const/4 v2, 0x6

    sget v3, Lcom/dodonew/online/widget/SmoothCheckBox;->COLOR_FLOOR_UNCHECKED:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorColor:I

    .line 92
    const/4 v2, 0x4

    sget v3, Lcom/dodonew/online/widget/SmoothCheckBox;->COLOR_CHECKED:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCheckedColor:I

    .line 93
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mUnCheckedColor:I

    .line 94
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->canClick:Z

    .line 96
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dodonew/online/util/CompatUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 95
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorColor:I

    iput v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorUnCheckedColor:I

    .line 100
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCheckedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    .line 114
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    .line 115
    new-array v2, v8, [Landroid/graphics/Point;

    iput-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    .line 116
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v6

    .line 117
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v4

    .line 118
    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v7

    .line 120
    new-instance v2, Lcom/dodonew/online/widget/SmoothCheckBox$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/SmoothCheckBox$1;-><init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/SmoothCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method private measureSize(I)I
    .locals 6
    .param p1, "measureSpec"    # I

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v4, v5}, Lcom/dodonew/online/util/CompatUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 212
    .local v0, "defSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 213
    .local v3, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 215
    .local v2, "specMode":I
    const/4 v1, 0x0

    .line 216
    .local v1, "result":I
    sparse-switch v2, :sswitch_data_0

    .line 225
    :goto_0
    return v1

    .line 219
    :sswitch_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 220
    goto :goto_0

    .line 222
    :sswitch_1
    move v1, v3

    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 203
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickDrawing:Z

    .line 204
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorScale:F

    .line 205
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mScaleVal:F

    .line 206
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCheckedColor:I

    :goto_0
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorColor:I

    .line 207
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    iget v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mRightLineDistance:F

    add-float/2addr v1, v0

    :cond_1
    iput v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    .line 208
    return-void

    .line 206
    :cond_2
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mFloorUnCheckedColor:I

    goto :goto_0
.end method

.method private startCheckedAnimation()V
    .locals 4

    .prologue
    .line 336
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 337
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mAnimDuration:I

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 338
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    new-instance v2, Lcom/dodonew/online/widget/SmoothCheckBox$3;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/SmoothCheckBox$3;-><init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 347
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 349
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 350
    .local v1, "floorAnimator":Landroid/animation/ValueAnimator;
    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    new-instance v2, Lcom/dodonew/online/widget/SmoothCheckBox$4;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/SmoothCheckBox$4;-><init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 361
    invoke-direct {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->drawTickDelayed()V

    .line 362
    return-void

    .line 336
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 349
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startUnCheckedAnimation()V
    .locals 4

    .prologue
    .line 365
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 366
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    new-instance v2, Lcom/dodonew/online/widget/SmoothCheckBox$5;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/SmoothCheckBox$5;-><init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 376
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 378
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 379
    .local v1, "floorAnimator":Landroid/animation/ValueAnimator;
    iget v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 380
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 381
    new-instance v2, Lcom/dodonew/online/widget/SmoothCheckBox$6;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/SmoothCheckBox$6;-><init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 388
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 389
    return-void

    .line 365
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 378
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/SmoothCheckBox;->drawBorder(Landroid/graphics/Canvas;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/SmoothCheckBox;->drawCenter(Landroid/graphics/Canvas;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/SmoothCheckBox;->drawTick(Landroid/graphics/Canvas;)V

    .line 262
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v4, 0x1

    const/high16 v3, 0x41f00000    # 30.0f

    .line 236
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mWidth:I

    .line 237
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    :goto_0
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    .line 238
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    :goto_1
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    .line 239
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    .line 240
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 241
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 243
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 244
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 245
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41500000    # 13.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 248
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 250
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 251
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mLeftLineDistance:F

    .line 252
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 253
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 252
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mRightLineDistance:F

    .line 254
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    return-void

    .line 237
    :cond_0
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    goto/16 :goto_0

    .line 238
    :cond_1
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    goto/16 :goto_1

    .line 239
    :cond_2
    iget v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mStrokeWidth:I

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 231
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/SmoothCheckBox;->measureSize(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/SmoothCheckBox;->measureSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setMeasuredDimension(II)V

    .line 232
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 147
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 148
    check-cast v0, Landroid/os/Bundle;

    .line 149
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "InstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 150
    .local v1, "isChecked":Z
    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(Z)V

    .line 151
    const-string v2, "InstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 155
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isChecked":Z
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "InstanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    const-string v1, "InstanceState"

    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    return-object v0
.end method

.method public setCanClick(Z)V
    .locals 0
    .param p1, "canClick"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->canClick:Z

    .line 427
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mChecked:Z

    .line 170
    invoke-direct {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->reset()V

    .line 171
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->invalidate()V

    .line 172
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mListener:Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mListener:Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;->onCheckedChanged(Lcom/dodonew/online/widget/SmoothCheckBox;Z)V

    .line 175
    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 184
    if-eqz p2, :cond_2

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mTickDrawing:Z

    .line 186
    iput-boolean p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mChecked:Z

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mDrewDistance:F

    .line 188
    if-eqz p1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->startCheckedAnimation()V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mListener:Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mListener:Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;->onCheckedChanged(Lcom/dodonew/online/widget/SmoothCheckBox;Z)V

    .line 200
    :cond_0
    :goto_1
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->startUnCheckedAnimation()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public setOnCheckedChangeListener(Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox;->mListener:Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;

    .line 418
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(Z)V

    .line 165
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
