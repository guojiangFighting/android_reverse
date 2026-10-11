.class public Lcom/dodonew/online/widget/stickyheaderview/util/LinearLayoutOrientationProvider;
.super Ljava/lang/Object;
.source "LinearLayoutOrientationProvider.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfNotLinearLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 26
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StickyListHeadersDecoration can only be used with a LinearLayoutManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getOrientation(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 14
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/util/LinearLayoutOrientationProvider;->throwIfNotLinearLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 15
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    return v1
.end method

.method public isReverseLayout(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 21
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/stickyheaderview/util/LinearLayoutOrientationProvider;->throwIfNotLinearLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 22
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v1

    return v1
.end method
