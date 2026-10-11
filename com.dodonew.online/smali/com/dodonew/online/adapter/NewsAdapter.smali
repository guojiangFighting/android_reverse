.class public Lcom/dodonew/online/adapter/NewsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;,
        Lcom/dodonew/online/adapter/NewsAdapter$Viewholder2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private format:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/News;",
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
            "Lcom/dodonew/online/bean/News;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/News;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/NewsAdapter;->pos:I

    .line 33
    const-string v0, "MM\u6708dd\u65e5 HH:mm"

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter;->format:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/dodonew/online/adapter/NewsAdapter;->list:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/dodonew/online/adapter/NewsAdapter;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/NewsAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/NewsAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/dodonew/online/adapter/NewsAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/News;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/News;->getImgs()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "imgs":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return v3

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/NewsAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;I)V
    .locals 11
    .param p1, "holder"    # Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x7f02007d

    .line 59
    iget-object v4, p0, Lcom/dodonew/online/adapter/NewsAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/News;

    .line 60
    .local v2, "news":Lcom/dodonew/online/bean/News;
    iget-object v4, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/News;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v2}, Lcom/dodonew/online/bean/News;->getNewtime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/dodonew/online/adapter/NewsAdapter;->format:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/News;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v2}, Lcom/dodonew/online/bean/News;->getImgs()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "imgs":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "imgsStr":[Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/adapter/NewsAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    aget-object v5, v1, v8

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 70
    array-length v4, v1

    if-le v4, v9, :cond_0

    .line 71
    iget-object v4, p0, Lcom/dodonew/online/adapter/NewsAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    aget-object v5, v1, v9

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 73
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 74
    array-length v4, v1

    if-le v4, v10, :cond_2

    .line 75
    iget-object v4, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v4, p0, Lcom/dodonew/online/adapter/NewsAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    aget-object v5, v1, v10

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 84
    .end local v1    # "imgsStr":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/adapter/NewsAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/dodonew/online/adapter/NewsAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/dodonew/online/adapter/NewsAdapter$1;-><init>(Lcom/dodonew/online/adapter/NewsAdapter;Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_1
    return-void

    .line 80
    .restart local v1    # "imgsStr":[Ljava/lang/String;
    :cond_2
    iget-object v4, p1, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView3:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/NewsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "height":I
    if-nez p2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/dodonew/online/adapter/NewsAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v0, v2, 0x258

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030065

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v2, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;

    invoke-direct {v2, p0, v1, p2}, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/NewsAdapter;Landroid/view/View;I)V

    return-object v2

    .line 49
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/NewsAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v0, v2, 0x190

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030066

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dodonew/online/adapter/NewsAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 133
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/dodonew/online/adapter/NewsAdapter;->pos:I

    .line 137
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method
