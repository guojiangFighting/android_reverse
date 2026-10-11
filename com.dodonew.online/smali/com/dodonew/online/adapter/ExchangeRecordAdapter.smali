.class public Lcom/dodonew/online/adapter/ExchangeRecordAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExchangeRecordAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;,
        Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;",
        ">;",
        "Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter",
        "<",
        "Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;",
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
            "Lcom/dodonew/online/bean/ExchangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field operaTime:Ljava/lang/String;

.field pos:I


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
            "Lcom/dodonew/online/bean/ExchangeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ExchangeRecord;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->pos:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->operaTime:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->list:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/ExchangeRecordAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/ExchangeRecord;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/ExchangeRecord;->getConvTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 75
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->operaTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iput-object v0, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->operaTime:Ljava/lang/String;

    .line 77
    iput p1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->pos:I

    .line 78
    iget v1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->pos:I

    int-to-long v2, v1

    .line 80
    :goto_0
    return-wide v2

    :cond_0
    iget v1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->pos:I

    int-to-long v2, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->onBindHeaderViewHolder(Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/ExchangeRecord;

    .line 94
    .local v0, "exchangeRecord":Lcom/dodonew/online/bean/ExchangeRecord;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/ExchangeRecord;->getConvTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/ExchangeRecord;

    .line 56
    .local v0, "exchangeRecord":Lcom/dodonew/online/bean/ExchangeRecord;
    iget-object v1, p1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;->tvScoreStrategy:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/ExchangeRecord;->getGiftName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;->tvOperaType:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/dodonew/online/bean/ExchangeRecord;->getScorepay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79ef\u5206"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;->tvOperaTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/ExchangeRecord;->getConvTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$1;-><init>(Lcom/dodonew/online/adapter/ExchangeRecordAdapter;Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030063

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;-><init>(Lcom/dodonew/online/adapter/ExchangeRecordAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/ExchangeRecordAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 27
    return-void
.end method
