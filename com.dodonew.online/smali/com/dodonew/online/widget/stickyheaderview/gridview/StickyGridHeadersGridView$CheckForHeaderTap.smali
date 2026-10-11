.class final Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForHeaderTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1146
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget v3, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v3, :cond_1

    .line 1147
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iput v5, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 1148
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget v4, v4, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-nez v3, :cond_1

    .line 1150
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v3, :cond_3

    .line 1151
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1152
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v3, v5}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1153
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->refreshDrawableState()V

    .line 1155
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 1156
    .local v2, "longPressTimeout":I
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v1

    .line 1158
    .local v1, "longClickable":Z
    if-eqz v1, :cond_2

    .line 1159
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

    if-nez v3, :cond_0

    .line 1160
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    new-instance v4, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;)V

    iput-object v4, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

    .line 1162
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;->rememberWindowAttachCount()V

    .line 1163
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v4, v4, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderLongPress;

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1172
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_1
    :goto_0
    return-void

    .line 1165
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "longClickable":Z
    .restart local v2    # "longPressTimeout":I
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iput v6, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0

    .line 1168
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_3
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iput v6, v3, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
