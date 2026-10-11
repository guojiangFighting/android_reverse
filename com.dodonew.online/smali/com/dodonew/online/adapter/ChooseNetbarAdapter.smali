.class public Lcom/dodonew/online/adapter/ChooseNetbarAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChooseNetbarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBarCaption;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBarCaption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBarCaption;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->pos:I

    .line 25
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->list:Ljava/util/List;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/ChooseNetbarAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBarCaption;

    .line 38
    .local v0, "netBar":Lcom/dodonew/online/bean/NetBarCaption;
    iget-object v1, p1, Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBarCaption;->getNetBarCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p1, Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/dodonew/online/adapter/ChooseNetbarAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter$1;-><init>(Lcom/dodonew/online/adapter/ChooseNetbarAdapter;Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/ChooseNetbarAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 67
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->pos:I

    .line 71
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method
