.class public Lcom/dodonew/online/widget/likeanimation/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final END_COLOR:I = -0x3ef9

.field public static final INNER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/dodonew/online/widget/likeanimation/CircleView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUTER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/dodonew/online/widget/likeanimation/CircleView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_COLOR:I = -0xa8de


# instance fields
.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private circlePaint:Landroid/graphics/Paint;

.field private innerCircleRadiusProgress:F

.field private maskPaint:Landroid/graphics/Paint;

.field private maxCircleSize:I

.field private outerCircleRadiusProgress:F

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempCanvas:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/dodonew/online/widget/likeanimation/CircleView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "innerCircleRadiusProgress"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/likeanimation/CircleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/dodonew/online/widget/likeanimation/CircleView;->INNER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    .line 115
    new-instance v0, Lcom/dodonew/online/widget/likeanimation/CircleView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "outerCircleRadiusProgress"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/likeanimation/CircleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/dodonew/online/widget/likeanimation/CircleView;->OUTER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->circlePaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maskPaint:Landroid/graphics/Paint;

    .line 34
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->outerCircleRadiusProgress:F

    .line 35
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->innerCircleRadiusProgress:F

    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->circlePaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maskPaint:Landroid/graphics/Paint;

    .line 34
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->outerCircleRadiusProgress:F

    .line 35
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->innerCircleRadiusProgress:F

    .line 46
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->circlePaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maskPaint:Landroid/graphics/Paint;

    .line 34
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->outerCircleRadiusProgress:F

    .line 35
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->innerCircleRadiusProgress:F

    .line 51
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    return-void
.end method

.method private updateCircleColor()V
    .locals 11

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 93
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->outerCircleRadiusProgress:F

    float-to-double v0, v0

    invoke-static/range {v0 .. v5}, Lcom/dodonew/online/util/Utils;->clamp(DDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 94
    .local v10, "colorProgress":F
    float-to-double v0, v10

    const-wide/16 v6, 0x0

    move-wide v8, v4

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 95
    iget-object v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->circlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v2, -0xa8de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x3ef9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public getInnerCircleRadiusProgress()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->innerCircleRadiusProgress:F

    return v0
.end method

.method public getOuterCircleRadiusProgress()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->outerCircleRadiusProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    const v1, 0xffffff

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->outerCircleRadiusProgress:F

    iget v4, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maxCircleSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->innerCircleRadiusProgress:F

    iget v4, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maxCircleSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->tempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 63
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->maxCircleSize:I

    .line 64
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->tempBitmap:Landroid/graphics/Bitmap;

    .line 65
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    .line 66
    return-void
.end method

.method public setInnerCircleRadiusProgress(F)V
    .locals 0
    .param p1, "innerCircleRadiusProgress"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->innerCircleRadiusProgress:F

    .line 79
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->postInvalidate()V

    .line 80
    return-void
.end method

.method public setOuterCircleRadiusProgress(F)V
    .locals 0
    .param p1, "outerCircleRadiusProgress"    # F

    .prologue
    .line 87
    iput p1, p0, Lcom/dodonew/online/widget/likeanimation/CircleView;->outerCircleRadiusProgress:F

    .line 88
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->updateCircleColor()V

    .line 89
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/CircleView;->postInvalidate()V

    .line 90
    return-void
.end method
