.class public Lcom/dodonew/online/adapter/TicketAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TicketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private height:I

.field private hideGet:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

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
            "Lcom/dodonew/online/bean/Ticket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/dodonew/online/adapter/TicketAdapter;->hideGet:Z

    .line 31
    iput v0, p0, Lcom/dodonew/online/adapter/TicketAdapter;->pos:I

    .line 42
    iput-object p1, p0, Lcom/dodonew/online/adapter/TicketAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/dodonew/online/adapter/TicketAdapter;->list:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/dodonew/online/adapter/TicketAdapter;->context:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x2bc

    iput v0, p0, Lcom/dodonew/online/adapter/TicketAdapter;->height:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/TicketAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/TicketAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/adapter/TicketAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/TicketAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/TicketAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;I)V
    .locals 16
    .param p1, "holder"    # Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter;->list:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dodonew/online/bean/Ticket;

    .line 60
    .local v10, "ticket":Lcom/dodonew/online/bean/Ticket;
    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getPresentAmount()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    div-int/lit8 v5, v11, 0x64

    .line 61
    .local v5, "money":I
    const v8, 0x7f020122

    .line 62
    .local v8, "res":I
    const-string v9, ""

    .line 63
    .local v9, "status":Ljava/lang/String;
    const/16 v11, 0x32

    if-lt v5, v11, :cond_0

    .line 64
    const v8, 0x7f020123

    .line 66
    :cond_0
    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 67
    const v8, 0x7f020124

    .line 70
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getEndTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-lez v11, :cond_5

    .line 71
    const-string v9, "\u5df2\u8fc7\u671f"

    .line 92
    :cond_2
    :goto_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvMoney:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvNetbar:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getNetBarName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvTime:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6709\u6548\u671f\u81f3: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getEndTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 96
    const v8, 0x7f020124

    .line 98
    :cond_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->contanier:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 101
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v11, :cond_4

    .line 102
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v12, Lcom/dodonew/online/adapter/TicketAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/dodonew/online/adapter/TicketAdapter$1;-><init>(Lcom/dodonew/online/adapter/TicketAdapter;Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_4
    :goto_1
    return-void

    .line 73
    :cond_5
    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getIsAlreadyGet()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "isGet":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getIsAlreadUsed()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "isUser":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getQuantity()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "quantity":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/dodonew/online/bean/Ticket;->getUsergetCount()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "get":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 78
    const-string v11, "1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 79
    const-string v9, "\u5df2\u9886\u53d6"

    .line 82
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 83
    const-string v11, "1"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 84
    const-string v9, "\u5df2\u4f7f\u7528"

    .line 87
    :cond_7
    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->parseStringToInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7}, Lcom/dodonew/online/util/Utils;->parseStringToInt(Ljava/lang/String;)I

    move-result v12

    if-lt v11, v12, :cond_2

    .line 88
    const-string v9, "\u5df2\u9886\u5b8c"

    .line 89
    const v8, 0x7f020124

    goto/16 :goto_0

    .line 110
    .end local v2    # "get":Ljava/lang/String;
    .end local v3    # "isGet":Ljava/lang/String;
    .end local v4    # "isUser":Ljava/lang/String;
    .end local v7    # "quantity":Ljava/lang/String;
    :cond_8
    move-object v6, v9

    .line 111
    .local v6, "msg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v12, Lcom/dodonew/online/adapter/TicketAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6}, Lcom/dodonew/online/adapter/TicketAdapter$2;-><init>(Lcom/dodonew/online/adapter/TicketAdapter;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/TicketAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/TicketAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setHideGet()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dodonew/online/adapter/TicketAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 142
    return-void
.end method

.method public setOnViewClickListener(Lcom/dodonew/online/interfaces/OnViewClickListener;)V
    .locals 0
    .param p1, "onViewClickListener"    # Lcom/dodonew/online/interfaces/OnViewClickListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/adapter/TicketAdapter;->onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

    .line 39
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/dodonew/online/adapter/TicketAdapter;->pos:I

    .line 146
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/TicketAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method
