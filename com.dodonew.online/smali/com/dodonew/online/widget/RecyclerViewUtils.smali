.class public Lcom/dodonew/online/widget/RecyclerViewUtils;
.super Ljava/lang/Object;
.source "RecyclerViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapterPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 118
    .local v1, "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    if-eqz v2, :cond_0

    .line 120
    check-cast v1, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .end local v1    # "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    .line 121
    .local v0, "headerViewCounter":I
    if-lez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 126
    .end local v0    # "headerViewCounter":I
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    goto :goto_0
.end method

.method public static getLayoutPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 98
    .local v1, "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    if-eqz v2, :cond_0

    .line 100
    check-cast v1, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .end local v1    # "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    .line 101
    .local v0, "headerViewCounter":I
    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 106
    .end local v0    # "headerViewCounter":I
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    goto :goto_0
.end method

.method public static removeFooterView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 60
    .local v2, "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 62
    check-cast v3, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getFooterViewsCount()I

    move-result v1

    .line 63
    .local v1, "footerViewCounter":I
    if-lez v1, :cond_0

    move-object v3, v2

    .line 64
    check-cast v3, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getFooterView()Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "footerView":Landroid/view/View;
    check-cast v2, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .end local v2    # "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {v2, v0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->removeFooterView(Landroid/view/View;)V

    .line 68
    .end local v0    # "footerView":Landroid/view/View;
    .end local v1    # "footerViewCounter":I
    :cond_0
    return-void
.end method

.method public static removeHeaderView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 79
    .local v2, "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 81
    check-cast v3, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v1

    .line 82
    .local v1, "headerViewCounter":I
    if-lez v1, :cond_0

    move-object v3, v2

    .line 83
    check-cast v3, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderView()Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "headerView":Landroid/view/View;
    check-cast v2, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .end local v2    # "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {v2, v0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->removeFooterView(Landroid/view/View;)V

    .line 87
    .end local v0    # "headerView":Landroid/view/View;
    .end local v1    # "headerViewCounter":I
    :cond_0
    return-void
.end method

.method public static setFooterView(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 41
    .local v1, "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 45
    check-cast v0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .line 46
    .local v0, "headerAndFooterAdapter":Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;
    invoke-virtual {v0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static setHeaderView(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 22
    .local v1, "outerAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    if-nez v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 26
    check-cast v0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;

    .line 27
    .local v0, "headerAndFooterAdapter":Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;
    invoke-virtual {v0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method
