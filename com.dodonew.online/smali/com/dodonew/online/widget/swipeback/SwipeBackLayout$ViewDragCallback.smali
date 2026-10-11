.class Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;
.super Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private mIsScrollOverValid:Z

.field final synthetic this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-direct {p0}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
    .param p2, "x1"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$1;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;-><init>(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    const/4 v2, 0x0

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "ret":I
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "ret":I
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 615
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 617
    :cond_0
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$100(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$100(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 622
    invoke-super {p0, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 623
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;

    .line 625
    .local v0, "listener":Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;->onScrollStateChange(IF)V

    goto :goto_0

    .line 628
    .end local v0    # "listener":Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    const/4 v5, 0x1

    .line 538
    invoke-super/range {p0 .. p5}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 539
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    int-to-float v2, p2

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 541
    invoke-static {v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$600(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$700(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 542
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 540
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$502(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;F)F

    .line 552
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1, p2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1002(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I

    .line 553
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1, p3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1102(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I

    .line 554
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->invalidate()V

    .line 555
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-nez v1, :cond_1

    .line 556
    iput-boolean v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 559
    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 560
    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    iget-boolean v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-eqz v1, :cond_4

    .line 561
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 562
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;

    .line 563
    .local v0, "listener":Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    invoke-interface {v0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;->onScrollOverThreshold()V

    goto :goto_1

    .line 543
    .end local v0    # "listener":Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 544
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    int-to-float v2, p2

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 545
    invoke-static {v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$600(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$800(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 546
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 544
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$502(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;F)F

    goto/16 :goto_0

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    int-to-float v2, p3

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 549
    invoke-static {v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$600(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$900(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 550
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 548
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$502(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;F)F

    goto/16 :goto_0

    .line 567
    :cond_4
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 568
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 569
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 571
    :cond_5
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 576
    .local v1, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 578
    .local v0, "childHeight":I
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .line 579
    .local v3, "top":I
    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v5}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 580
    cmpl-float v5, p2, v6

    if-gtz v5, :cond_0

    cmpl-float v5, p2, v6

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 581
    invoke-static {v5}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v5

    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v6}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 582
    invoke-static {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$700(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, 0xa

    .line 596
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 597
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->invalidate()V

    .line 598
    return-void

    :cond_2
    move v2, v4

    .line 582
    goto :goto_0

    .line 584
    :cond_3
    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v5}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 585
    cmpg-float v5, p2, v6

    if-ltz v5, :cond_4

    cmpl-float v5, p2, v6

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 586
    invoke-static {v5}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v5

    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v6}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 587
    invoke-static {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$700(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0xa

    neg-int v2, v4

    :goto_1
    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    .line 589
    :cond_6
    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v5}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    .line 590
    cmpg-float v5, p3, v6

    if-ltz v5, :cond_7

    cmpl-float v5, p3, v6

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 591
    invoke-static {v5}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v5

    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v6}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$1200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 592
    invoke-static {v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$900(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0xa

    neg-int v3, v4

    :goto_2
    goto :goto_0

    :cond_8
    move v3, v4

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 506
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$100(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v1

    .line 507
    .local v1, "ret":Z
    if-eqz v1, :cond_4

    .line 508
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2, v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$302(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I

    .line 515
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 516
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;

    .line 517
    .local v0, "listener":Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;->onEdgeTouch(I)V

    goto :goto_1

    .line 510
    .end local v0    # "listener":Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v2, v5, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$302(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I

    goto :goto_0

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v2, v6, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-static {v2, v6}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->access$302(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I

    goto :goto_0

    .line 520
    :cond_3
    iput-boolean v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 522
    :cond_4
    return v1
.end method
