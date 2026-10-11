.class public Lcom/dodonew/online/adapter/OrderRechargedapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OrderRechargedapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;",
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
            "Lcom/dodonew/online/bean/OrderRecharge;",
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
            "Lcom/dodonew/online/bean/OrderRecharge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/OrderRecharge;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->pos:I

    .line 29
    iput-object p2, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->list:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/OrderRechargedapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/OrderRechargedapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/OrderRechargedapter;->onBindViewHolder(Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/OrderRecharge;

    .line 43
    .local v0, "orderRecharge":Lcom/dodonew/online/bean/OrderRecharge;
    iget-object v1, p1, Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;->tvNetBar:Landroid/widget/TextView;

    const-string v2, "\u561f\u561f\u725b\u4e0a\u7f51\u8d39"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p1, Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OrderRecharge;->getOrderTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p1, Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;->tvPay:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OrderRecharge;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p1, Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/dodonew/online/adapter/OrderRechargedapter$1;

    invoke-direct {v2, p0, p1}, Lcom/dodonew/online/adapter/OrderRechargedapter$1;-><init>(Lcom/dodonew/online/adapter/OrderRechargedapter;Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/OrderRechargedapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/OrderRechargedapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/OrderRechargedapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 77
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/dodonew/online/adapter/OrderRechargedapter;->pos:I

    .line 81
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/OrderRechargedapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method
