.class public Lcom/dodonew/online/adapter/MenuTypeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MenuTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;",
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
            "Lcom/dodonew/online/bean/MenuType;",
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
            "Lcom/dodonew/online/bean/MenuType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MenuType;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->pos:I

    .line 29
    iput-object p2, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->list:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/MenuTypeAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MenuTypeAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MenuTypeAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 42
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/MenuType;

    .line 43
    .local v1, "menuType":Lcom/dodonew/online/bean/MenuType;
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/MenuType;->getMenuTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 45
    .local v0, "color":I
    iget v2, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->pos:I

    if-ne v2, p2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 48
    :cond_0
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/dodonew/online/adapter/MenuTypeAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/dodonew/online/adapter/MenuTypeAdapter$1;-><init>(Lcom/dodonew/online/adapter/MenuTypeAdapter;Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MenuTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/MenuTypeAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/MenuTypeAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 77
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/dodonew/online/adapter/MenuTypeAdapter;->pos:I

    .line 81
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/MenuTypeAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method
