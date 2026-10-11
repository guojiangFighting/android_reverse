.class public Lcom/dodonew/online/adapter/NetBarAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NetBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field df:Ljava/text/DecimalFormat;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private pos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->pos:I

    .line 32
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->df:Ljava/text/DecimalFormat;

    .line 34
    iput-object p2, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->list:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/NetBarAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/NetBarAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/NetBarAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;I)V
    .locals 16
    .param p1, "holder"    # Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter;->list:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dodonew/online/bean/NetBar;

    .line 49
    .local v6, "netBar":Lcom/dodonew/online/bean/NetBar;
    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getPicUrl()Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    const v11, 0x7f02007b

    .line 52
    invoke-virtual {v10, v11}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    const v11, 0x7f02007b

    .line 53
    invoke-virtual {v10, v11}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 55
    :cond_0
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvAddress:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getMinPrice()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "netbarMinPrice":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getMaxPrice()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "netbarMaxPrice":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 60
    :cond_1
    const-string v8, "0"

    .line 64
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 65
    :cond_2
    const-string v7, "0"

    .line 70
    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvCost:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u4e0a\u7f51\u8d39\u7387: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5143"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvDistance:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getDistance()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u7c73"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getIsSupportOrderOnline()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "isOrder":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getIsSupportPayByPhone()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "isPay":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getIsSupportSale()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "isCoupon":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getIsSupportWIFI()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "isWifi":Ljava/lang/String;
    const-string v10, "1"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 77
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivOrder:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_2
    const-string v10, "1"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 82
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivPay:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    :goto_3
    const-string v10, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 87
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivCoupon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :goto_4
    const-string v10, "1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 92
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivWifi:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v10, :cond_3

    .line 97
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v11, Lcom/dodonew/online/adapter/NetBarAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/dodonew/online/adapter/NetBarAdapter$1;-><init>(Lcom/dodonew/online/adapter/NetBarAdapter;Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_3
    return-void

    .line 62
    .end local v2    # "isCoupon":Ljava/lang/String;
    .end local v3    # "isOrder":Ljava/lang/String;
    .end local v4    # "isPay":Ljava/lang/String;
    .end local v5    # "isWifi":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/adapter/NetBarAdapter;->df:Ljava/text/DecimalFormat;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 67
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dodonew/online/adapter/NetBarAdapter;->df:Ljava/text/DecimalFormat;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 79
    .restart local v2    # "isCoupon":Ljava/lang/String;
    .restart local v3    # "isOrder":Ljava/lang/String;
    .restart local v4    # "isPay":Ljava/lang/String;
    .restart local v5    # "isWifi":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivOrder:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 84
    :cond_7
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivPay:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 89
    :cond_8
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivCoupon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 94
    :cond_9
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivWifi:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/NetBarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v1, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/NetBarAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 132
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/dodonew/online/adapter/NetBarAdapter;->pos:I

    .line 136
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/NetBarAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method
