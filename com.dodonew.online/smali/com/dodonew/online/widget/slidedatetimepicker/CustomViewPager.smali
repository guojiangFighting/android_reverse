.class public Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CustomViewPager.java"


# instance fields
.field private mDatePicker:Landroid/widget/DatePicker;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTouchSlop:F

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mTouchSlop:F

    .line 46
    return-void
.end method

.method private isScrollingHorizontal(FFFF)Z
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 149
    sub-float v0, p3, p1

    .line 150
    .local v0, "deltaX":F
    sub-float v1, p4, p2

    .line 152
    .local v1, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mTouchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 153
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 156
    const/4 v2, 0x1

    .line 159
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 133
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_2
    return v0

    .line 92
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->x1:F

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->y1:F

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->x2:F

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->y2:F

    .line 101
    iget v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->x1:F

    iget v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->y1:F

    iget v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->x2:F

    iget v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->y2:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->isScrollingHorizontal(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mDatePicker:Landroid/widget/DatePicker;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1}, Landroid/widget/DatePicker;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 115
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 63
    invoke-virtual {p0, v3}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 66
    .local v1, "h":I
    if-le v1, v2, :cond_0

    .line 67
    move v2, v1

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 72
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 74
    const v4, 0x7f0d01c1

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mDatePicker:Landroid/widget/DatePicker;

    .line 75
    const v4, 0x7f0d01d7

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TimePicker;

    iput-object v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->mTimePicker:Landroid/widget/TimePicker;

    .line 76
    return-void
.end method
