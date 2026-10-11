.class public Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;
.super Ljava/lang/Object;
.source "ScrollableViewHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScrollableViewScrollPosition(Landroid/view/View;Z)I
    .locals 10
    .param p1, "scrollableView"    # Landroid/view/View;
    .param p2, "isSlidingUp"    # Z

    .prologue
    const/4 v8, 0x0

    .line 25
    if-nez p1, :cond_0

    move v7, v8

    .line 60
    :goto_0
    return v7

    .line 26
    :cond_0
    instance-of v7, p1, Landroid/widget/ScrollView;

    if-eqz v7, :cond_2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    goto :goto_0

    :cond_1
    move-object v6, p1

    .line 30
    check-cast v6, Landroid/widget/ScrollView;

    .line 31
    .local v6, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    goto :goto_0

    .line 34
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "sv":Landroid/widget/ScrollView;
    :cond_2
    instance-of v7, p1, Landroid/widget/ListView;

    if-eqz v7, :cond_5

    move-object v7, p1

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    move-object v4, p1

    .line 35
    check-cast v4, Landroid/widget/ListView;

    .line 36
    .local v4, "lv":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    if-nez v7, :cond_3

    move v7, v8

    goto :goto_0

    .line 37
    :cond_3
    if-eqz p2, :cond_4

    .line 38
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_0

    .line 42
    .end local v1    # "firstChild":Landroid/view/View;
    :cond_4
    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/widget/ListView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_0

    .line 46
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lv":Landroid/widget/ListView;
    :cond_5
    instance-of v7, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v7, :cond_8

    move-object v7, p1

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_8

    move-object v5, p1

    .line 47
    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    .line 48
    .local v5, "rv":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 49
    .local v3, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v8

    goto/16 :goto_0

    .line 50
    :cond_6
    if-eqz p2, :cond_7

    .line 51
    invoke-virtual {v5, v8}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .restart local v1    # "firstChild":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    goto/16 :goto_0

    .line 55
    .end local v1    # "firstChild":Landroid/view/View;
    :cond_7
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 57
    .restart local v2    # "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    goto/16 :goto_0

    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .end local v5    # "rv":Landroid/support/v7/widget/RecyclerView;
    :cond_8
    move v7, v8

    .line 60
    goto/16 :goto_0
.end method
