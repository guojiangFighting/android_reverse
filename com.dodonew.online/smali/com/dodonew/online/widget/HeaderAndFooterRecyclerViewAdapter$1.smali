.class Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "HeaderAndFooterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyItemRangeChanged(II)V

    .line 40
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 45
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 46
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 57
    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    .line 58
    .local v0, "headerViewsCountCount":I
    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    add-int v2, p1, v0

    add-int v3, p2, v0

    add-int/2addr v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyItemRangeChanged(II)V

    .line 59
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;->this$0:Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    .line 52
    return-void
.end method
