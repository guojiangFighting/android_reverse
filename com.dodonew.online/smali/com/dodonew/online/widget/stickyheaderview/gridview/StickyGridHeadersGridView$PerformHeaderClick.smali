.class Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;
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
    name = "PerformHeaderClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$1;

    .prologue
    .line 1103
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-boolean v1, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v2, v2, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    .line 1115
    invoke-virtual {v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1120
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->access$400(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->performHeaderClick(Landroid/view/View;J)Z

    goto :goto_0
.end method
