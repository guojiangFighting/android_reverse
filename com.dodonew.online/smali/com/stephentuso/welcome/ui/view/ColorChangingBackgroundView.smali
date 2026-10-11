.class public Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;
.super Landroid/view/View;
.source "ColorChangingBackgroundView.java"


# instance fields
.field mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

.field mCurrentPosition:I

.field mOffset:F

.field mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-array v0, v1, [Lcom/stephentuso/welcome/ui/BackgroundColor;

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    .line 19
    iput v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mCurrentPosition:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mOffset:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mRect:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-array v0, v1, [Lcom/stephentuso/welcome/ui/BackgroundColor;

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    .line 19
    iput v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mCurrentPosition:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mOffset:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mRect:Landroid/graphics/Rect;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-array v0, v1, [Lcom/stephentuso/welcome/ui/BackgroundColor;

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    .line 19
    iput v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mCurrentPosition:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mOffset:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 57
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    iget v2, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mCurrentPosition:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/stephentuso/welcome/ui/BackgroundColor;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    iget v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mCurrentPosition:I

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    iget v2, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/stephentuso/welcome/ui/BackgroundColor;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mOffset:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setColors([Lcom/stephentuso/welcome/ui/BackgroundColor;)V
    .locals 0
    .param p1, "colors"    # [Lcom/stephentuso/welcome/ui/BackgroundColor;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mColors:[Lcom/stephentuso/welcome/ui/BackgroundColor;

    .line 45
    return-void
.end method

.method public setPosition(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offset"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mCurrentPosition:I

    .line 39
    iput p2, p0, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->mOffset:F

    .line 40
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;->invalidate()V

    .line 41
    return-void
.end method
