.class Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;
.super Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
    .param p2, "x1"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;

    .prologue
    .line 1332
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1424
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v0

    .line 1425
    .local v0, "collapsedTop":I
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    .line 1426
    .local v1, "expandedTop":I
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1000(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1427
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1429
    :goto_0
    return v2

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1375
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 1345
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$700(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$602(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)F

    .line 1347
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$800(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)V

    .line 1349
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1352
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$102(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1353
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$102(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1358
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    goto :goto_0

    .line 1360
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 1361
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$102(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1362
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelHidden(Landroid/view/View;)V

    goto :goto_0

    .line 1364
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1366
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$102(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1367
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelAnchored(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0, p3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 1380
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 1381
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1385
    const/4 v1, 0x0

    .line 1388
    .local v1, "target":I
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1000(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v0, p3

    .line 1390
    .local v0, "direction":F
    :goto_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 1392
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    .line 1413
    :goto_1
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1414
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 1415
    return-void

    .end local v0    # "direction":F
    :cond_0
    move v0, p3

    .line 1388
    goto :goto_0

    .line 1393
    .restart local v0    # "direction":F
    :cond_1
    cmpl-float v2, v0, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1395
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    goto :goto_1

    .line 1396
    :cond_2
    cmpg-float v2, v0, v4

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 1398
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    goto :goto_1

    .line 1399
    :cond_3
    cmpg-float v2, v0, v4

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 1401
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2, v4}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    goto :goto_1

    .line 1402
    :cond_4
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 1404
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    goto/16 :goto_1

    .line 1405
    :cond_5
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    div-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 1407
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    goto/16 :goto_1

    .line 1410
    :cond_6
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2, v4}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result v1

    goto/16 :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1336
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
