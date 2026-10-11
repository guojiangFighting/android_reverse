.class public Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;
.super Landroid/view/View;
.source "SimpleViewPagerIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private animated:Z

.field currentPageColor:I

.field mCurrentPage:I

.field mCurrentPageOffset:F

.field mTotalPages:I

.field otherPageColor:I

.field paint:Landroid/graphics/Paint;

.field size:I

.field spacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    sget v0, Lcom/stephentuso/welcome/R$attr;->welcomeIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const v1, 0xffffff

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->currentPageColor:I

    .line 23
    const/high16 v1, 0x22000000

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->otherPageColor:I

    .line 25
    iput v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    .line 26
    iput v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPage:I

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPageOffset:F

    .line 29
    const/16 v1, 0x10

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->spacing:I

    .line 30
    const/4 v1, 0x4

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->size:I

    .line 32
    iput-boolean v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->animated:Z

    .line 45
    sget-object v1, Lcom/stephentuso/welcome/R$styleable;->SimpleViewPagerIndicator:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/stephentuso/welcome/R$styleable;->SimpleViewPagerIndicator_currentPageColor:I

    iget v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->currentPageColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->currentPageColor:I

    .line 48
    sget v1, Lcom/stephentuso/welcome/R$styleable;->SimpleViewPagerIndicator_indicatorColor:I

    iget v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->otherPageColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->otherPageColor:I

    .line 49
    sget v1, Lcom/stephentuso/welcome/R$styleable;->SimpleViewPagerIndicator_animated:I

    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->animated:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->animated:Z

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private getCenter()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getFirstDotPosition(F)F
    .locals 6
    .param p1, "centerX"    # F

    .prologue
    .line 120
    iget v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 121
    .local v0, "centerIndex":F
    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 122
    .local v1, "spacingMult":F
    iget v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 123
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 124
    :cond_0
    iget v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->spacing:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float v2, p1, v2

    return v2

    .line 120
    .end local v0    # "centerIndex":F
    .end local v1    # "spacingMult":F
    :cond_1
    iget v2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->paint:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 61
    .local v0, "density":F
    iget v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->spacing:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->spacing:I

    .line 62
    iget v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->size:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->size:I

    .line 63
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 108
    .local v0, "center":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->getFirstDotPosition(F)F

    move-result v2

    .line 110
    .local v2, "startX":F
    iget-object v3, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->otherPageColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    if-ge v1, v3, :cond_0

    .line 112
    iget v3, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->spacing:I

    mul-int/2addr v3, v1

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->size:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->currentPageColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v3, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->spacing:I

    int-to-float v3, v3

    iget v4, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPage:I

    int-to-float v4, v4

    iget v5, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPageOffset:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->size:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->animated:Z

    if-eqz v0, :cond_1

    .line 69
    iput p1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPage:I

    .line 70
    iget v0, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPage:I

    iget v1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .end local p2    # "positionOffset":F
    :cond_0
    iput p2, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPageOffset:F

    .line 71
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->invalidate()V

    .line 73
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->animated:Z

    if-nez v0, :cond_0

    .line 78
    iput p1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPage:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPageOffset:F

    .line 80
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->invalidate()V

    .line 82
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mCurrentPage:I

    .line 95
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->invalidate()V

    .line 96
    return-void
.end method

.method public setTotalPages(I)V
    .locals 0
    .param p1, "totalPages"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->mTotalPages:I

    .line 100
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;->invalidate()V

    .line 101
    return-void
.end method
