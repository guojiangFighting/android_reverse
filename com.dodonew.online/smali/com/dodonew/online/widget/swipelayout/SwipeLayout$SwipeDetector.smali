.class Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 970
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$800(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 972
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 973
    .local v0, "bottom":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 974
    .local v1, "surface":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 976
    move-object v2, v0

    .line 980
    .local v2, "target":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$800(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    if-ne v2, v1, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v5, v6, v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;->onDoubleClick(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;Z)V

    .line 982
    .end local v0    # "bottom":Landroid/view/ViewGroup;
    .end local v1    # "surface":Landroid/view/ViewGroup;
    .end local v2    # "target":Landroid/view/View;
    :cond_0
    return v4

    .line 978
    .restart local v0    # "bottom":Landroid/view/ViewGroup;
    .restart local v1    # "surface":Landroid/view/ViewGroup;
    :cond_1
    move-object v2, v1

    .restart local v2    # "target":Landroid/view/View;
    goto :goto_0

    .line 980
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 937
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->performLongClick()Z

    .line 966
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 957
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$800(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$900(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;Landroid/view/MotionEvent;)V

    .line 960
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 949
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$800(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DoubleClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeDetector;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    invoke-static {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->access$900(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;Landroid/view/MotionEvent;)V

    .line 952
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
