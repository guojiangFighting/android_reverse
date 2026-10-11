.class public Lcom/dodonew/online/adapter/MyCollectionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyCollectionAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;
.implements Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;",
        ">;",
        "Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;",
        "Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;"
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
            "Lcom/dodonew/online/bean/Collection;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

.field private mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

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
            "Lcom/dodonew/online/bean/Collection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Collection;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->pos:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .line 41
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->df:Ljava/text/DecimalFormat;

    .line 44
    iput-object p2, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->list:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/MyCollectionAdapter;)Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MyCollectionAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/adapter/MyCollectionAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MyCollectionAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 156
    return-void
.end method

.method public closeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeItem(I)V

    .line 151
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMode()Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getMode()Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getOpenItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getOpenItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOpenLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getOpenLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeLayoutResourceId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 190
    const v0, 0x7f0d0147

    return v0
.end method

.method public isOpen(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isOpen(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0200b8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 58
    iget-object v4, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    iget-object v5, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->initialize(Landroid/view/View;I)V

    .line 59
    iget-object v4, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Collection;

    .line 60
    .local v0, "collection":Lcom/dodonew/online/bean/Collection;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getNetbarPicUrl()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    iget-object v4, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 66
    :cond_0
    iget-object v4, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getNetbarName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getNetbarAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getNetbarMinPrice()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "netbarMinPrice":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getNetbarMaxPrice()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "netbarMaxPrice":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    :cond_1
    const-string v2, "0"

    .line 76
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    :cond_2
    const-string v1, "0"

    .line 81
    :goto_1
    iget-object v4, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvCost:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5143"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvDistance:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Collection;->getNetbarDistance()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u7c73"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    new-instance v5, Lcom/dodonew/online/adapter/MyCollectionAdapter$1;

    invoke-direct {v5, p0}, Lcom/dodonew/online/adapter/MyCollectionAdapter$1;-><init>(Lcom/dodonew/online/adapter/MyCollectionAdapter;)V

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->addSwipeListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;)V

    .line 90
    iget-object v4, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->item_right:Landroid/view/View;

    new-instance v5, Lcom/dodonew/online/adapter/MyCollectionAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/dodonew/online/adapter/MyCollectionAdapter$2;-><init>(Lcom/dodonew/online/adapter/MyCollectionAdapter;Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v4, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v4, :cond_3

    .line 100
    iget-object v4, p1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/dodonew/online/adapter/MyCollectionAdapter$3;

    invoke-direct {v5, p0, p1}, Lcom/dodonew/online/adapter/MyCollectionAdapter$3;-><init>(Lcom/dodonew/online/adapter/MyCollectionAdapter;Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_3
    return-void

    .line 74
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->df:Ljava/text/DecimalFormat;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 79
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->df:Ljava/text/DecimalFormat;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030062

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/MyCollectionAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public openItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->openItem(I)V

    .line 146
    return-void
.end method

.method public removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 171
    return-void
.end method

.method public setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V

    .line 186
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 135
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->pos:I

    .line 139
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public setmListener(Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .line 195
    return-void
.end method
