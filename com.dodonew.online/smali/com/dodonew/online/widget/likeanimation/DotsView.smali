.class public Lcom/dodonew/online/widget/likeanimation/DotsView;
.super Landroid/view/View;
.source "DotsView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final COLOR_1:I = -0x3ef9

.field private static final COLOR_2:I = -0x6800

.field private static final COLOR_3:I = -0xa8de

.field private static final COLOR_4:I = -0xbbcca

.field private static final DOTS_COUNT:I = 0x7

.field public static final DOTS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/dodonew/online/widget/likeanimation/DotsView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTER_DOTS_POSITION_ANGLE:I = 0x33


# instance fields
.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private centerX:I

.field private centerY:I

.field private final circlePaints:[Landroid/graphics/Paint;

.field private currentDotSize1:F

.field private currentDotSize2:F

.field private currentProgress:F

.field private currentRadius1:F

.field private currentRadius2:F

.field private maxDotSize:F

.field private maxInnerDotsRadius:F

.field private maxOuterDotsRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/dodonew/online/widget/likeanimation/DotsView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "dotsProgress"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/likeanimation/DotsView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/dodonew/online/widget/likeanimation/DotsView;->DOTS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    .line 37
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    .line 39
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius1:F

    .line 40
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize1:F

    .line 42
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize2:F

    .line 43
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius2:F

    .line 45
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 49
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    .line 37
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    .line 39
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius1:F

    .line 40
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize1:F

    .line 42
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize2:F

    .line 43
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius2:F

    .line 45
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 54
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    .line 37
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    .line 39
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius1:F

    .line 40
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize1:F

    .line 42
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize2:F

    .line 43
    iput v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius2:F

    .line 45
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 59
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->init()V

    .line 60
    return-void
.end method

.method private drawInnerDotsFrame(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide v12, 0x4066800000000000L    # 180.0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    .line 95
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 96
    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->centerX:I

    int-to-double v4, v3

    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius2:F

    float-to-double v6, v3

    mul-int/lit8 v3, v2, 0x33

    add-int/lit8 v3, v3, -0xa

    int-to-double v8, v3

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 97
    .local v0, "cX":I
    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->centerY:I

    int-to-double v4, v3

    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius2:F

    float-to-double v6, v3

    mul-int/lit8 v3, v2, 0x33

    add-int/lit8 v3, v3, -0xa

    int-to-double v8, v3

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 98
    .local v1, "cY":I
    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize2:F

    iget-object v6, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    array-length v8, v8

    rem-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "cX":I
    .end local v1    # "cY":I
    :cond_0
    return-void
.end method

.method private drawOuterDotsFrame(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide v12, 0x4066800000000000L    # 180.0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    .line 87
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 88
    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->centerX:I

    int-to-double v4, v3

    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius1:F

    float-to-double v6, v3

    mul-int/lit8 v3, v2, 0x33

    int-to-double v8, v3

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 89
    .local v0, "cX":I
    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->centerY:I

    int-to-double v4, v3

    iget v3, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius1:F

    float-to-double v6, v3

    mul-int/lit8 v3, v2, 0x33

    int-to-double v8, v3

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 90
    .local v1, "cY":I
    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize1:F

    iget-object v6, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    array-length v7, v7

    rem-int v7, v2, v7

    aget-object v6, v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "cX":I
    .end local v1    # "cY":I
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 66
    iget-object v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private updateDotsAlpha()V
    .locals 12

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    .line 165
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    invoke-static/range {v0 .. v5}, Lcom/dodonew/online/util/Utils;->clamp(DDD)D

    move-result-wide v0

    double-to-float v11, v0

    .line 166
    .local v11, "progress":F
    float-to-double v0, v11

    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-int v10, v0

    .line 167
    .local v10, "alpha":I
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 169
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    return-void
.end method

.method private updateDotsPaints()V
    .locals 11

    .prologue
    .line 149
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 150
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 151
    .local v10, "progress":F
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v2, -0x3ef9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x6800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v2, -0x6800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xa8de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v2, -0xa8de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xbbcca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v2, -0xbbcca

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

    .line 162
    :goto_0
    return-void

    .line 156
    .end local v10    # "progress":F
    :cond_0
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 157
    .restart local v10    # "progress":F
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v2, -0x6800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xa8de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v2, -0xa8de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xbbcca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v2, -0xbbcca

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

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v2, -0x3ef9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x6800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method private updateInnerDotsPosition()V
    .locals 14

    .prologue
    const v10, 0x3e99999a    # 0.3f

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    .line 118
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_0

    .line 119
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    iget v6, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxInnerDotsRadius:F

    float-to-double v8, v6

    move-wide v6, v2

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius2:F

    .line 124
    :goto_0
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 125
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize2:F

    .line 132
    :goto_1
    return-void

    .line 121
    :cond_0
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxInnerDotsRadius:F

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius2:F

    goto :goto_0

    .line 126
    :cond_1
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    cmpg-double v0, v0, v12

    if-gez v0, :cond_2

    .line 127
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    iget v4, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    float-to-double v6, v4

    const-wide v4, 0x3fd3333333333333L    # 0.3

    iget v8, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    float-to-double v8, v8

    mul-double/2addr v8, v4

    move-wide v4, v12

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize2:F

    goto :goto_1

    .line 129
    :cond_2
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v4, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    mul-float/2addr v0, v10

    float-to-double v10, v0

    move-wide v6, v12

    move-wide v12, v2

    invoke-static/range {v4 .. v13}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize2:F

    goto :goto_1
.end method

.method private updateOuterDotsPosition()V
    .locals 10

    .prologue
    .line 135
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 136
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    const-wide/16 v6, 0x0

    iget v8, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxOuterDotsRadius:F

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius1:F

    .line 141
    :goto_0
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 142
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize1:F

    .line 146
    :goto_1
    return-void

    .line 138
    :cond_0
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const v6, 0x3f4ccccd    # 0.8f

    iget v7, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxOuterDotsRadius:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxOuterDotsRadius:F

    float-to-double v8, v8

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentRadius1:F

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v6, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/util/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentDotSize1:F

    goto :goto_1
.end method


# virtual methods
.method public getCurrentProgress()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/likeanimation/DotsView;->drawOuterDotsFrame(Landroid/graphics/Canvas;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/likeanimation/DotsView;->drawInnerDotsFrame(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 73
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->centerX:I

    .line 74
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->centerY:I

    .line 75
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    .line 76
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxDotSize:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxOuterDotsRadius:F

    .line 77
    const v0, 0x3f4ccccd    # 0.8f

    iget v1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxOuterDotsRadius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->maxInnerDotsRadius:F

    .line 78
    return-void
.end method

.method public setCurrentProgress(F)V
    .locals 0
    .param p1, "currentProgress"    # F

    .prologue
    .line 103
    iput p1, p0, Lcom/dodonew/online/widget/likeanimation/DotsView;->currentProgress:F

    .line 105
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->updateInnerDotsPosition()V

    .line 106
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->updateOuterDotsPosition()V

    .line 107
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->updateDotsPaints()V

    .line 108
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->updateDotsAlpha()V

    .line 110
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/DotsView;->postInvalidate()V

    .line 111
    return-void
.end method
