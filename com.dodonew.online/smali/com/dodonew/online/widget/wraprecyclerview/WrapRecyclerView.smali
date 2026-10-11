.class public Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "WrapRecyclerView.java"


# instance fields
.field private mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

.field private shouldAdjustSpanSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the view to add must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->addFooterView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the view to add must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->addHeaderView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->getAdapter()Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    return-object v0
.end method

.method public getFootersCount()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->getFootersCount()I

    move-result v0

    return v0
.end method

.method public getFootersView()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->getFootersView()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->getHeadersCount()I

    move-result v0

    return v0
.end method

.method public getHeadersView()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->getHeadersView()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 34
    instance-of v0, p1, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    iput-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 42
    :goto_0
    iget-boolean v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->shouldAdjustSpanSize:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->adjustSpanSize(Landroid/support/v7/widget/RecyclerView;)V

    .line 45
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    .line 39
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public setFooterVisibility(Z)V
    .locals 2
    .param p1, "shouldShow"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->setFooterVisibility(Z)V

    .line 147
    return-void
.end method

.method public setHeaderVisibility(Z)V
    .locals 2
    .param p1, "shouldShow"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a adapter before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->setHeaderVisibility(Z)V

    .line 160
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 105
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->shouldAdjustSpanSize:Z

    .line 108
    :cond_1
    return-void
.end method
