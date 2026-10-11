.class public Lcom/dodonew/online/widget/WheelView;
.super Landroid/widget/ScrollView;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/WheelView$ScrollerTask;,
        Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x32

.field public static final LINE_COLOR:I = -0x7c321a

.field public static final OFF_SET:I = 0x1

.field public static final TEXT_COLOR_FOCUS:I = -0xfc560c

.field public static final TEXT_COLOR_NORMAL:I = -0x444445

.field public static final TEXT_SIZE:I = 0x14


# instance fields
.field private context:Landroid/content/Context;

.field private displayItemCount:I

.field private initialY:I

.field private isUserScroll:Z

.field private itemHeight:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lineColor:I

.field private lineVisible:Z

.field private offset:I

.field private onWheelViewListener:Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;

.field private paint:Landroid/graphics/Paint;

.field private previousY:F

.field private scrollerTask:Ljava/lang/Runnable;

.field private selectedAreaBorder:[I

.field private selectedIndex:I

.field private textColorFocus:I

.field private textColorNormal:I

.field private textSize:I

.field private viewWidth:I

.field private views:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    .line 60
    iput v2, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    .line 64
    iput v2, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    .line 67
    new-instance v0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/WheelView$ScrollerTask;-><init>(Lcom/dodonew/online/widget/WheelView;Lcom/dodonew/online/widget/WheelView$1;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->scrollerTask:Ljava/lang/Runnable;

    .line 68
    iput v3, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textSize:I

    .line 75
    const v0, -0x444445

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textColorNormal:I

    .line 76
    const v0, -0xfc560c

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textColorFocus:I

    .line 77
    const v0, -0x7c321a

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->lineColor:I

    .line 78
    iput-boolean v2, p0, Lcom/dodonew/online/widget/WheelView;->lineVisible:Z

    .line 79
    iput-boolean v3, p0, Lcom/dodonew/online/widget/WheelView;->isUserScroll:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->previousY:F

    .line 89
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/WheelView;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    .line 60
    iput v2, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    .line 64
    iput v2, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    .line 67
    new-instance v0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/WheelView$ScrollerTask;-><init>(Lcom/dodonew/online/widget/WheelView;Lcom/dodonew/online/widget/WheelView$1;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->scrollerTask:Ljava/lang/Runnable;

    .line 68
    iput v3, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textSize:I

    .line 75
    const v0, -0x444445

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textColorNormal:I

    .line 76
    const v0, -0xfc560c

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textColorFocus:I

    .line 77
    const v0, -0x7c321a

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->lineColor:I

    .line 78
    iput-boolean v2, p0, Lcom/dodonew/online/widget/WheelView;->lineVisible:Z

    .line 79
    iput-boolean v3, p0, Lcom/dodonew/online/widget/WheelView;->isUserScroll:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->previousY:F

    .line 100
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/WheelView;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    .line 60
    iput v2, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    .line 64
    iput v2, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    .line 67
    new-instance v0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/WheelView$ScrollerTask;-><init>(Lcom/dodonew/online/widget/WheelView;Lcom/dodonew/online/widget/WheelView$1;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->scrollerTask:Ljava/lang/Runnable;

    .line 68
    iput v3, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textSize:I

    .line 75
    const v0, -0x444445

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textColorNormal:I

    .line 76
    const v0, -0xfc560c

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->textColorFocus:I

    .line 77
    const v0, -0x7c321a

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->lineColor:I

    .line 78
    iput-boolean v2, p0, Lcom/dodonew/online/widget/WheelView;->lineVisible:Z

    .line 79
    iput-boolean v3, p0, Lcom/dodonew/online/widget/WheelView;->isUserScroll:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->previousY:F

    .line 112
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/WheelView;->init(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method private _setItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 321
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    if-ge v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/widget/WheelView;->initData()V

    .line 331
    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/WheelView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dodonew/online/widget/WheelView;->obtainSelectedAreaBorder()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->viewWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/WheelView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/widget/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    return v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dodonew/online/widget/WheelView;->onSelectedCallBack()V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/widget/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->initialY:I

    return v0
.end method

.method static synthetic access$900(Lcom/dodonew/online/widget/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dodonew/online/widget/WheelView;->startScrollerTask()V

    return-void
.end method

.method private createView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 8
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 151
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v2, "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 154
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 155
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget v3, p0, Lcom/dodonew/online/widget/WheelView;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    const/high16 v3, 0x41700000    # 15.0f

    invoke-direct {p0, v3}, Lcom/dodonew/online/widget/WheelView;->dip2px(F)I

    move-result v1

    .line 159
    .local v1, "padding":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    iget v3, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    if-nez v3, :cond_0

    .line 161
    invoke-direct {p0, v2}, Lcom/dodonew/online/widget/WheelView;->getViewMeasuredHeight(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    .line 162
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->displayItemCount:I

    mul-int/2addr v5, v6

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0}, Lcom/dodonew/online/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->displayItemCount:I

    mul-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/dodonew/online/widget/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v2
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 218
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 219
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getViewMeasuredHeight(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 224
    .local v1, "width":I
    const v2, 0x1fffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 225
    .local v0, "expandSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    return v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 116
    iput-object p1, p0, Lcom/dodonew/online/widget/WheelView;->context:Landroid/content/Context;

    .line 119
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/WheelView;->setFadingEdgeLength(I)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 121
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/WheelView;->setOverScrollMode(I)V

    .line 124
    :cond_0
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/WheelView;->setVerticalScrollBarEnabled(Z)V

    .line 126
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/WheelView;->addView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 137
    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dodonew/online/widget/WheelView;->displayItemCount:I

    .line 140
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 142
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "item":Ljava/lang/String;
    iget-object v2, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/WheelView;->createView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 147
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    iget v2, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    iget v3, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/WheelView;->refreshItemView(I)V

    .line 148
    return-void
.end method

.method private obtainSelectedAreaBorder()[I
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->selectedAreaBorder:[I

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->selectedAreaBorder:[I

    .line 201
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->selectedAreaBorder:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    iget v3, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 202
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->selectedAreaBorder:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    iget v3, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->selectedAreaBorder:[I

    return-object v0
.end method

.method private onSelectedCallBack()V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->onWheelViewListener:Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->onWheelViewListener:Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;

    iget-boolean v2, p0, Lcom/dodonew/online/widget/WheelView;->isUserScroll:Z

    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    iget v3, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    sub-int v3, v0, v3

    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    iget v4, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;->onSelected(ZILjava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method private refreshItemView(I)V
    .locals 8
    .param p1, "y"    # I

    .prologue
    .line 171
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    div-int v6, p1, v6

    iget v7, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    add-int v4, v6, v7

    .line 172
    .local v4, "position":I
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    rem-int v5, p1, v6

    .line 173
    .local v5, "remainder":I
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    div-int v1, p1, v6

    .line 175
    .local v1, "divided":I
    if-nez v5, :cond_2

    .line 176
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    add-int v4, v1, v6

    .line 183
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 184
    .local v0, "childSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 185
    iget-object v6, p0, Lcom/dodonew/online/widget/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 186
    .local v3, "itemView":Landroid/widget/TextView;
    if-nez v3, :cond_3

    .line 196
    .end local v3    # "itemView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 178
    .end local v0    # "childSize":I
    .end local v2    # "i":I
    :cond_2
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->itemHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 179
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    add-int/2addr v6, v1

    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 190
    .restart local v0    # "childSize":I
    .restart local v2    # "i":I
    .restart local v3    # "itemView":Landroid/widget/TextView;
    :cond_3
    if-ne v4, v2, :cond_4

    .line 191
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->textColorFocus:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_4
    iget v6, p0, Lcom/dodonew/online/widget/WheelView;->textColorNormal:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method private setSelectedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/WheelView;->isUserScroll:Z

    .line 477
    new-instance v0, Lcom/dodonew/online/widget/WheelView$2;

    invoke-direct {v0, p0, p1}, Lcom/dodonew/online/widget/WheelView$2;-><init>(Lcom/dodonew/online/widget/WheelView;I)V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    .line 487
    return-void
.end method

.method private startScrollerTask()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/dodonew/online/widget/WheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->initialY:I

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->scrollerTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/dodonew/online/widget/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 293
    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    .line 294
    return-void
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->lineColor:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSeletedIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/dodonew/online/widget/WheelView;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSeletedItem()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/dodonew/online/widget/WheelView;->getSelectedItem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->textColorFocus:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->textSize:I

    return v0
.end method

.method public isLineVisible()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/dodonew/online/widget/WheelView;->lineVisible:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 281
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/WheelView;->refreshItemView(I)V

    .line 282
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 287
    iput p1, p0, Lcom/dodonew/online/widget/WheelView;->viewWidth:I

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 316
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 300
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/WheelView;->previousY:F

    goto :goto_0

    .line 303
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/WheelView;->previousY:F

    sub-float v0, v1, v2

    .line 304
    .local v0, "delta":F
    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    iget v2, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    if-ne v1, v2, :cond_0

    cmpl-float v1, v0, v4

    if-lez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/WheelView;->setSelectedIndex(I)V

    goto :goto_0

    .line 307
    :cond_0
    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->selectedIndex:I

    iget-object v2, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    .line 309
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/WheelView;->setSelectedIndex(I)V

    goto :goto_0

    .line 311
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/WheelView;->isUserScroll:Z

    .line 312
    invoke-direct {p0}, Lcom/dodonew/online/widget/WheelView;->startScrollerTask()V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 237
    iget v0, p0, Lcom/dodonew/online/widget/WheelView;->viewWidth:I

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/WheelView;->viewWidth:I

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/dodonew/online/widget/WheelView;->lineVisible:Z

    if-nez v0, :cond_1

    .line 276
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/WheelView;->paint:Landroid/graphics/Paint;

    .line 248
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/WheelView;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 252
    :cond_2
    new-instance p1, Lcom/dodonew/online/widget/WheelView$1;

    .end local p1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0}, Lcom/dodonew/online/widget/WheelView$1;-><init>(Lcom/dodonew/online/widget/WheelView;)V

    .line 275
    .restart local p1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/WheelView;->_setItems(Ljava/util/List;)V

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/WheelView;->setSelectedIndex(I)V

    .line 342
    return-void
.end method

.method public setItems(Ljava/util/List;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/WheelView;->_setItems(Ljava/util/List;)V

    .line 352
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/WheelView;->setSelectedIndex(I)V

    .line 353
    return-void
.end method

.method public setItems(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/WheelView;->_setItems(Ljava/util/List;)V

    .line 363
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/WheelView;->setSelectedItem(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 446
    iput p1, p0, Lcom/dodonew/online/widget/WheelView;->lineColor:I

    .line 447
    return-void
.end method

.method public setLineVisible(Z)V
    .locals 0
    .param p1, "lineVisible"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/dodonew/online/widget/WheelView;->lineVisible:Z

    .line 429
    return-void
.end method

.method public setOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 464
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset must between 1 and 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_1
    iput p1, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    .line 468
    return-void
.end method

.method public setOnWheelViewListener(Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;)V
    .locals 0
    .param p1, "onWheelViewListener"    # Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/dodonew/online/widget/WheelView;->onWheelViewListener:Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;

    .line 545
    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/dodonew/online/widget/WheelView;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    iget v1, p0, Lcom/dodonew/online/widget/WheelView;->offset:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/WheelView;->setSelectedIndex(I)V

    .line 502
    :cond_0
    return-void

    .line 495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 410
    iput p1, p0, Lcom/dodonew/online/widget/WheelView;->textColorFocus:I

    .line 411
    return-void
.end method

.method public setTextColor(II)V
    .locals 0
    .param p1, "textColorNormal"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "textColorFocus"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 400
    iput p1, p0, Lcom/dodonew/online/widget/WheelView;->textColorNormal:I

    .line 401
    iput p2, p0, Lcom/dodonew/online/widget/WheelView;->textColorFocus:I

    .line 402
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 381
    iput p1, p0, Lcom/dodonew/online/widget/WheelView;->textSize:I

    .line 382
    return-void
.end method
