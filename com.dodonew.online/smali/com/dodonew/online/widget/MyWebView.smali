.class public Lcom/dodonew/online/widget/MyWebView;
.super Landroid/webkit/WebView;
.source "MyWebView.java"


# instance fields
.field curP:Landroid/graphics/PointF;

.field downP:Landroid/graphics/PointF;

.field private xDistance:F

.field private xLast:F

.field private yDistance:F

.field private yLast:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/MyWebView;->downP:Landroid/graphics/PointF;

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/MyWebView;->curP:Landroid/graphics/PointF;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/MyWebView;->downP:Landroid/graphics/PointF;

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/MyWebView;->curP:Landroid/graphics/PointF;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/MyWebView;->downP:Landroid/graphics/PointF;

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/MyWebView;->curP:Landroid/graphics/PointF;

    .line 27
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 34
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/dodonew/online/widget/MyWebView;->yDistance:F

    iput v2, p0, Lcom/dodonew/online/widget/MyWebView;->xDistance:F

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/MyWebView;->xLast:F

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/MyWebView;->yLast:F

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 40
    .local v0, "curX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 42
    .local v1, "curY":F
    iget v2, p0, Lcom/dodonew/online/widget/MyWebView;->xDistance:F

    iget v3, p0, Lcom/dodonew/online/widget/MyWebView;->xLast:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/widget/MyWebView;->xDistance:F

    .line 43
    iget v2, p0, Lcom/dodonew/online/widget/MyWebView;->yDistance:F

    iget v3, p0, Lcom/dodonew/online/widget/MyWebView;->yLast:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/widget/MyWebView;->yDistance:F

    .line 44
    iput v0, p0, Lcom/dodonew/online/widget/MyWebView;->xLast:F

    .line 45
    iput v1, p0, Lcom/dodonew/online/widget/MyWebView;->yLast:F

    .line 47
    iget v2, p0, Lcom/dodonew/online/widget/MyWebView;->xDistance:F

    iget v3, p0, Lcom/dodonew/online/widget/MyWebView;->yDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 48
    const/4 v2, 0x0

    goto :goto_1

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 58
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 60
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 62
    return-void
.end method
