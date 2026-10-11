.class public Lcom/dodonew/online/adapter/GameTitleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GameTitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;",
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
            "Lcom/dodonew/online/bean/Game;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private pos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Game;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Game;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->pos:I

    .line 32
    iput-object p1, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->list:Ljava/util/List;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/GameTitleAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GameTitleAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getColor(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GameTitleAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 54
    iget-object v2, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Game;

    .line 55
    .local v1, "game":Lcom/dodonew/online/bean/Game;
    iget-object v2, p1, Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Game;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v2, 0x7f0c0067

    invoke-virtual {p0, v2}, Lcom/dodonew/online/adapter/GameTitleAdapter;->getColor(I)I

    move-result v0

    .line 57
    .local v0, "color":I
    iget v2, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->pos:I

    if-ne v2, p2, :cond_0

    .line 58
    const v2, 0x7f0c0020

    invoke-virtual {p0, v2}, Lcom/dodonew/online/adapter/GameTitleAdapter;->getColor(I)I

    move-result v0

    .line 60
    :cond_0
    iget-object v2, p1, Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v2, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p1, Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/dodonew/online/adapter/GameTitleAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/dodonew/online/adapter/GameTitleAdapter$1;-><init>(Lcom/dodonew/online/adapter/GameTitleAdapter;Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GameTitleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/GameTitleAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/GameTitleAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 29
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/dodonew/online/adapter/GameTitleAdapter;->pos:I

    .line 82
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/GameTitleAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method
