.class public Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$StartCurveInterpolator;,
        Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$EndCurveInterpolator;,
        Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;,
        Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x535

.field private static final ARROW_HEIGHT:I = 0x5

.field static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 0.0f

.field private static final ARROW_WIDTH:I = 0xa

.field static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field public static final DEFAULT:I = 0x1

.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimExcutor:Landroid/view/View;

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mShowArrowOnFirstStart:Z

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$EndCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;)V

    sput-object v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;)V

    sput-object v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animExcutor"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 79
    new-array v0, v3, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v2

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->COLORS:[I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 117
    iput-boolean v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    .line 120
    iput-object p2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 123
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->updateSizes(I)V

    .line 127
    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setupAnimators()V

    .line 128
    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;FLcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->applyFinishTranslation(FLcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    .prologue
    .line 42
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    .prologue
    .line 300
    invoke-virtual {p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 302
    .local v2, "targetRotation":F
    invoke-virtual {p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    .line 303
    invoke-virtual {p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v4

    invoke-virtual {p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 304
    .local v1, "startTrim":F
    invoke-virtual {p2, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 305
    invoke-virtual {p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    .line 306
    invoke-virtual {p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 307
    .local v0, "rotation":F
    invoke-virtual {p2, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 308
    return-void
.end method

.method private getRotation()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setupAnimators()V
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    .line 312
    .local v1, "ring":Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;
    new-instance v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;)V

    .line 354
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 355
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 356
    sget-object v2, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    new-instance v2, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$3;

    invoke-direct {v2, p0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$3;-><init>(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 385
    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 386
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 227
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 228
    .local v1, "saveCount":I
    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 229
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 230
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 231
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 240
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 173
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 200
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 245
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 211
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 212
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 193
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRotation:F

    .line 255
    invoke-virtual {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->invalidateSelf()V

    .line 256
    return-void
.end method

.method public setSizeParameters(DDDDFF)V
    .locals 5
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    .line 133
    .local v0, "ring":Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;
    iput-wide p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mWidth:D

    .line 134
    iput-wide p3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mHeight:D

    .line 135
    double-to-float v1, p7

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 136
    invoke-virtual {v0, p5, p6}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 138
    invoke-virtual {v0, p9, p10}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 139
    iget-wide v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mHeight:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 140
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 184
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 166
    return-void
.end method

.method public showArrowOnFirstStart(Z)V
    .locals 0
    .param p1, "showArrowOnFirstStart"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    .line 390
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 271
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 272
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    iget-boolean v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 275
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mFinishing:Z

    .line 277
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 281
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 282
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setRotation(F)V

    .line 291
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 292
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 293
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mRing:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 294
    return-void
.end method

.method public updateSizes(I)V
    .locals 13
    .param p1, "size"    # I
        .annotation build Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x42600000    # 56.0f

    const/high16 v4, 0x42200000    # 40.0f

    .line 149
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 150
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v12, "screenDensity":F
    if-nez p1, :cond_0

    .line 153
    mul-float v1, v5, v12

    float-to-double v2, v1

    mul-float v1, v5, v12

    float-to-double v4, v1

    const/high16 v1, 0x41480000    # 12.5f

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v10, v1, v12

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    mul-float v1, v4, v12

    float-to-double v2, v1

    mul-float v1, v4, v12

    float-to-double v4, v1

    const/high16 v1, 0x410c0000    # 8.75f

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v10, v1, v12

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
