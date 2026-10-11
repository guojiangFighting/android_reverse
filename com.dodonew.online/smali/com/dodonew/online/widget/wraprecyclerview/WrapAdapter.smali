.class public Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_FOOTER_VIEW_TYPE:I = -0x800

.field private static final BASE_HEADER_VIEW_TYPE:I = -0x400


# instance fields
.field private isStaggeredGrid:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter",
            "<TT;>.FixedViewInfo;>;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter",
            "<TT;>.FixedViewInfo;>;"
        }
    .end annotation
.end field

.field private final mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isHeaderPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isFooterPosition(I)Z

    move-result v0

    return v0
.end method

.method private createHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 228
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-boolean v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isStaggeredGrid:Z

    if-eqz v1, :cond_0

    .line 229
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 231
    .local v0, "params":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .end local v0    # "params":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    new-instance v1, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$2;-><init>(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method private isFooter(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 198
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    const/16 v0, -0x800

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v0, v0, -0x800

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFooterPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 207
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeader(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 193
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    const/16 v0, -0x400

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v0, v0, -0x400

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    if-nez p1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the view to add must not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    new-instance v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;-><init>(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;)V

    .line 86
    .local v0, "info":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    iput-object p1, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit16 v1, v1, -0x800

    iput v1, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->viewType:I

    .line 88
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    if-nez p1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the view to add must not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    new-instance v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;-><init>(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;)V

    .line 70
    .local v0, "info":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    iput-object p1, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit16 v1, v1, -0x400

    iput v1, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->viewType:I

    .line 72
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public adjustSpanSize(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 127
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 129
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;-><init>(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 141
    .end local v0    # "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isStaggeredGrid:Z

    .line 144
    :cond_1
    return-void
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFootersView()Ljava/util/List;
    .locals 4
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
    .line 113
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->getHeadersCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    .line 115
    .local v0, "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    iget-object v3, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    :cond_0
    return-object v1
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersView()Ljava/util/List;
    .locals 4
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
    .line 99
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->getHeadersCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    .line 101
    .local v0, "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    iget-object v3, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0    # "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    :cond_0
    return-object v1
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 255
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 260
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    iget v0, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->viewType:I

    .line 268
    :goto_0
    return v0

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 265
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    iget v0, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->viewType:I

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 241
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 212
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isHeader(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    add-int/lit16 v4, p2, 0x400

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 214
    .local v3, "whichHeader":I
    iget-object v4, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    iget-object v1, v4, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    .line 215
    .local v1, "headerView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->createHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 223
    .end local v1    # "headerView":Landroid/view/View;
    .end local v3    # "whichHeader":I
    :goto_0
    return-object v4

    .line 217
    :cond_0
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->isFooter(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    add-int/lit16 v4, p2, 0x800

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 219
    .local v2, "whichFooter":I
    iget-object v4, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    iget-object v0, v4, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    .line 220
    .local v0, "footerView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->createHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    goto :goto_0

    .line 223
    .end local v0    # "footerView":Landroid/view/View;
    .end local v2    # "whichFooter":I
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mRealAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    goto :goto_0
.end method

.method public setFooterVisibility(Z)V
    .locals 4
    .param p1, "shouldShow"    # Z

    .prologue
    .line 166
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    .line 167
    .local v0, "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    iget-object v3, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 169
    .end local v0    # "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->notifyDataSetChanged()V

    .line 170
    return-void
.end method

.method public setHeaderVisibility(Z)V
    .locals 4
    .param p1, "shouldShow"    # Z

    .prologue
    .line 153
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>;"
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;

    .line 154
    .local v0, "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    iget-object v3, v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 156
    .end local v0    # "fixedViewInfo":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$FixedViewInfo;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter<TT;>.FixedViewInfo;"
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->notifyDataSetChanged()V

    .line 157
    return-void
.end method
