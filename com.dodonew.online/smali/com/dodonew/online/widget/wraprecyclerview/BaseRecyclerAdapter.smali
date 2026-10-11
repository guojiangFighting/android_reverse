.class public abstract Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnRecyclerViewListener;,
        Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mItemLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mOnDeleteListener:Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;

.field protected onRecyclerViewListener:Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnRecyclerViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    .local p2, "mItemLists":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public addToFirst(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    .local p1, "listDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "data":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public addToLast(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    .local p1, "listDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public deleteForIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 137
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mOnDeleteListener:Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mOnDeleteListener:Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;

    .line 138
    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;->onDeleteItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public deleteForIndex([I)V
    .locals 2
    .param p1, "indexs"    # [I

    .prologue
    .line 150
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    array-length v1, p1

    if-gtz v1, :cond_1

    .line 157
    :cond_0
    return-void

    .line 153
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 154
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 155
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->deleteForIndex(I)V

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItemArrayLists()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v2, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "mItem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v1    # "mItem":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    return-object v0
.end method

.method public refreshItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    .local p1, "itemLists":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->setItemLists(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public setItemLists(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    .local p1, "itemLists":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    .line 71
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method

.method public setItemLists(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    .local p1, "itemLists":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mItemLists:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setOnDeleteListener(Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;)V
    .locals 0
    .param p1, "onDeleteListener"    # Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;

    .prologue
    .line 165
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->mOnDeleteListener:Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnDeleteListener;

    .line 166
    return-void
.end method

.method public setOnRecyclerViewListener(Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnRecyclerViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnRecyclerViewListener;

    .prologue
    .line 188
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;, "Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter<TT;TVH;>;"
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter;->onRecyclerViewListener:Lcom/dodonew/online/widget/wraprecyclerview/BaseRecyclerAdapter$OnRecyclerViewListener;

    .line 189
    return-void
.end method
