.class Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;
.super Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$WindowRunnable;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForHeaderLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;

    .prologue
    .line 1081
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1084
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget v5, v5, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1085
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1086
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget v5, v5, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-static {v4, v5}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->access$400(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;I)J

    move-result-wide v2

    .line 1088
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 1089
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-boolean v4, v4, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v4, :cond_0

    .line 1090
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v4, v0, v2, v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->performHeaderLongPress(Landroid/view/View;J)Z

    move-result v1

    .line 1092
    :cond_0
    if-eqz v1, :cond_2

    .line 1093
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    const/4 v5, -0x2

    iput v5, v4, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 1094
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v4, v6}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1095
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1100
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    :cond_1
    :goto_0
    return-void

    .line 1097
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    :cond_2
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    const/4 v5, 0x2

    iput v5, v4, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
