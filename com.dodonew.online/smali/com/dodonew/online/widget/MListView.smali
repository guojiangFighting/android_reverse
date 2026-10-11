.class public Lcom/dodonew/online/widget/MListView;
.super Landroid/widget/ListView;
.source "MListView.java"


# instance fields
.field private xDistance:F

.field private xLast:F

.field private yDistance:F

.field private yLast:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 51
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 33
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/dodonew/online/widget/MListView;->yDistance:F

    iput v2, p0, Lcom/dodonew/online/widget/MListView;->xDistance:F

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/MListView;->xLast:F

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/MListView;->yLast:F

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 39
    .local v0, "curX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 41
    .local v1, "curY":F
    iget v2, p0, Lcom/dodonew/online/widget/MListView;->xDistance:F

    iget v3, p0, Lcom/dodonew/online/widget/MListView;->xLast:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/widget/MListView;->xDistance:F

    .line 42
    iget v2, p0, Lcom/dodonew/online/widget/MListView;->yDistance:F

    iget v3, p0, Lcom/dodonew/online/widget/MListView;->yLast:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/widget/MListView;->yDistance:F

    .line 43
    iput v0, p0, Lcom/dodonew/online/widget/MListView;->xLast:F

    .line 44
    iput v1, p0, Lcom/dodonew/online/widget/MListView;->yLast:F

    .line 46
    iget v2, p0, Lcom/dodonew/online/widget/MListView;->xDistance:F

    iget v3, p0, Lcom/dodonew/online/widget/MListView;->yDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    goto :goto_1

    .line 31
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
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    .line 62
    return-void
.end method
