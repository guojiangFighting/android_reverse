.class public Lcom/dodonew/online/adapter/GameAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private height:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/GameDetail;",
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
            "Lcom/dodonew/online/bean/GameDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/GameDetail;>;"
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput v0, p0, Lcom/dodonew/online/adapter/GameAdapter;->pos:I

    .line 32
    iput v0, p0, Lcom/dodonew/online/adapter/GameAdapter;->height:I

    .line 40
    iput-object p1, p0, Lcom/dodonew/online/adapter/GameAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/dodonew/online/adapter/GameAdapter;->list:Ljava/util/List;

    .line 42
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x2bc

    iput v0, p0, Lcom/dodonew/online/adapter/GameAdapter;->height:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/GameAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GameAdapter;

    .prologue
    .line 26
    iget v0, p0, Lcom/dodonew/online/adapter/GameAdapter;->height:I

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/adapter/GameAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GameAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getColor(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GameAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v4, 0x7f02007d

    .line 71
    iget-object v2, p0, Lcom/dodonew/online/adapter/GameAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/GameDetail;

    .line 72
    .local v0, "game":Lcom/dodonew/online/bean/GameDetail;
    iget-object v2, p1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/GameDetail;->getChannel()Lcom/dodonew/online/bean/Channel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Channel;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->tvChannel:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/GameDetail;->getChannel()Lcom/dodonew/online/bean/Channel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Channel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, p1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/GameDetail;->getViewers()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0}, Lcom/dodonew/online/bean/GameDetail;->getPreview()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/dodonew/online/adapter/GameAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/GameAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/dodonew/online/adapter/GameAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/dodonew/online/adapter/GameAdapter$1;-><init>(Lcom/dodonew/online/adapter/GameAdapter;Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030056

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/GameAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dodonew/online/adapter/GameAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 37
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/dodonew/online/adapter/GameAdapter;->pos:I

    .line 103
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/GameAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method
