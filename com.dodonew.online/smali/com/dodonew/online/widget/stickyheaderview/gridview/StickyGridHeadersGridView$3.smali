.class Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

.field final synthetic val$header:Landroid/view/View;

.field final synthetic val$performHeaderClick:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Landroid/view/View;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iput-object p2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    iput-object p3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->val$performHeaderClick:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 417
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iput v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 418
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->access$202(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 419
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iput v2, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mTouchMode:I

    .line 420
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 421
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->setPressed(Z)V

    .line 422
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 423
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    .line 424
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 423
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 425
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$3;->val$performHeaderClick:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    .line 428
    :cond_0
    return-void
.end method
