.class public Lcom/dodonew/online/adapter/FeedbackAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FeedbackAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;,
        Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;",
        ">;",
        "Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter",
        "<",
        "Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->list:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/FeedbackAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/FeedbackAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/FeedbackAdapter;->onBindHeaderViewHolder(Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 98
    iget-object v0, p1, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p1, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;->tvDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3, v1}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/FeedbackAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 60
    iget-object v3, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/fb/model/Reply;

    .line 61
    .local v1, "reply":Lcom/umeng/fb/model/Reply;
    iget-object v2, v1, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    .line 62
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 63
    .local v0, "color":I
    const-string v3, "dev_reply"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 66
    :cond_0
    iget-object v3, p1, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :try_start_0
    iget-object v3, p1, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;->tvDate:Landroid/widget/TextView;

    iget-wide v4, v1, Lcom/umeng/fb/model/Reply;->created_at:J

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v6}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v3, p1, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;->leftView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    iget-object v3, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p1, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/dodonew/online/adapter/FeedbackAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/adapter/FeedbackAdapter$1;-><init>(Lcom/dodonew/online/adapter/FeedbackAdapter;Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_1
    return-void

    .line 69
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/dodonew/online/adapter/FeedbackAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;-><init>(Lcom/dodonew/online/adapter/FeedbackAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/FeedbackAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/FeedbackAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dodonew/online/adapter/FeedbackAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 31
    return-void
.end method
