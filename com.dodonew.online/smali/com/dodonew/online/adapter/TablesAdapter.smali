.class public Lcom/dodonew/online/adapter/TablesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TablesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;",
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
            "Lcom/dodonew/online/bean/Table;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private pos:I

.field private resources:Landroid/content/res/Resources;


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
            "Lcom/dodonew/online/bean/Table;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Table;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/TablesAdapter;->pos:I

    .line 31
    iput-object p1, p0, Lcom/dodonew/online/adapter/TablesAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/dodonew/online/adapter/TablesAdapter;->list:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/TablesAdapter;->resources:Landroid/content/res/Resources;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/TablesAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/TablesAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/adapter/TablesAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/adapter/TablesAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/TablesAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    const v7, 0x7f0c007e

    const v6, 0x7f0c0055

    .line 46
    iget-object v4, p0, Lcom/dodonew/online/adapter/TablesAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Table;

    .line 47
    .local v2, "table":Lcom/dodonew/online/bean/Table;
    iget-object v4, p1, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Table;->getSeatNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v2}, Lcom/dodonew/online/bean/Table;->getType()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/adapter/TablesAdapter;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 50
    .local v0, "color":I
    const v1, 0x7f02005a

    .line 51
    .local v1, "res":I
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    const v1, 0x7f020058

    .line 53
    iget-object v4, p0, Lcom/dodonew/online/adapter/TablesAdapter;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 61
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    iget-object v4, p1, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v4, p0, Lcom/dodonew/online/adapter/TablesAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v4, :cond_1

    .line 64
    iget-object v4, p1, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/dodonew/online/adapter/TablesAdapter$1;

    invoke-direct {v5, p0, v3, p1}, Lcom/dodonew/online/adapter/TablesAdapter$1;-><init>(Lcom/dodonew/online/adapter/TablesAdapter;Ljava/lang/String;Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_1
    return-void

    .line 54
    :cond_2
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    const v1, 0x7f020059

    .line 56
    iget-object v4, p0, Lcom/dodonew/online/adapter/TablesAdapter;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 57
    :cond_3
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const v1, 0x7f02005c

    .line 59
    iget-object v4, p0, Lcom/dodonew/online/adapter/TablesAdapter;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/TablesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/TablesAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dodonew/online/adapter/TablesAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 91
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/dodonew/online/adapter/TablesAdapter;->pos:I

    .line 95
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/TablesAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
