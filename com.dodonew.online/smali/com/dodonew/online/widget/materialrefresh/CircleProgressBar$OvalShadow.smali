.class Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;II)V
    .locals 7
    .param p2, "shadowRadius"    # I
    .param p3, "circleDiameter"    # I

    .prologue
    .line 442
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->this$0:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    .line 443
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 444
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 445
    iput p2, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mShadowRadius:I

    .line 446
    iput p3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    .line 447
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mShadowRadius:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 451
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 452
    return-void

    .line 447
    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 456
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->this$0:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getWidth()I

    move-result v1

    .line 457
    .local v1, "viewWidth":I
    iget-object v2, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->this$0:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->getHeight()I

    move-result v0

    .line 458
    .local v0, "viewHeight":I
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mShadowRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 460
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 461
    return-void
.end method
