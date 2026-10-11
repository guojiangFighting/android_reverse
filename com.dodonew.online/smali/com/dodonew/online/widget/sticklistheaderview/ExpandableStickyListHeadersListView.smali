.class public Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;
.super Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;
.source "ExpandableStickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;
    }
.end annotation


# static fields
.field public static final ANIMATION_COLLAPSE:I = 0x1

.field public static final ANIMATION_EXPAND:I


# instance fields
.field mDefaultAnimExecutor:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

.field mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 47
    return-void
.end method

.method private animateView(Landroid/view/View;I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 114
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

    invoke-interface {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;->executeAnim(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public collapse(J)V
    .locals 5
    .param p1, "headerId"    # J

    .prologue
    .line 84
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->isHeaderCollapsed(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->collapse(J)V

    .line 89
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->getItemViewsByHeaderId(J)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "itemViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 94
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->animateView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public expand(J)V
    .locals 5
    .param p1, "headerId"    # J

    .prologue
    .line 69
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->isHeaderCollapsed(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->expand(J)V

    .line 74
    iget-object v2, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->getItemViewsByHeaderId(J)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "itemViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 79
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->animateView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public findItemIdByView(Landroid/view/View;)J
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->findItemIdByView(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public findViewByItemId(J)Landroid/view/View;
    .locals 1
    .param p1, "itemId"    # J

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->findViewByItemId(J)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->getAdapter()Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isHeaderCollapsed(J)Z
    .locals 1
    .param p1, "headerId"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;->isHeaderCollapsed(J)Z

    move-result v0

    return v0
.end method

.method public setAdapter(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;

    .prologue
    .line 56
    new-instance v0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;-><init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    .line 57
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersAdapter;

    invoke-super {p0, v0}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setAdapter(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;)V

    .line 58
    return-void
.end method

.method public setAnimExecutor(Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;)V
    .locals 0
    .param p1, "animExecutor"    # Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 104
    return-void
.end method
