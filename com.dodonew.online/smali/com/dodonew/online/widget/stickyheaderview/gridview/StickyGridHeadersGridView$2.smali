.class Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;
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

.field final synthetic val$headerHolder:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    iput-object p2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;->val$headerHolder:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;->val$headerHolder:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;->val$headerHolder:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$2;->val$headerHolder:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 315
    return-void
.end method
