.class public Lcom/dodonew/online/adapter/MyActiveAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyActiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private active:Lcom/dodonew/online/bean/MyActive;

.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyActive;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyActive;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyActive;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->list:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/MyActiveAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MyActiveAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MyActiveAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v11, 0x7f020078

    const/4 v10, 0x0

    .line 64
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dodonew/online/bean/MyActive;

    iput-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    .line 65
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/MyActive;->getPlaytitle()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "title":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/MyActive;->getPlayTitle()Ljava/lang/String;

    move-result-object v4

    .line 69
    :cond_0
    iget-object v5, p1, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v5, p1, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/MyActive;->getNetBarName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const-string v3, ""

    .line 72
    .local v3, "time":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/MyActive;->getEndTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 73
    const-string v3, "\u5df2\u7ed3\u675f"

    .line 83
    :goto_0
    iget-object v5, p1, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/MyActive;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    iget-object v1, v5, Lcom/dodonew/online/bean/MyActive;->picURL:Ljava/lang/String;

    .line 88
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 90
    invoke-virtual {v5, v11}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v11}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p1, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v5, :cond_3

    .line 94
    iget-object v5, p1, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/dodonew/online/adapter/MyActiveAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/dodonew/online/adapter/MyActiveAdapter$1;-><init>(Lcom/dodonew/online/adapter/MyActiveAdapter;Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_3
    return-void

    .line 75
    .end local v1    # "path":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/MyActive;->getStartTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v10

    .line 76
    .local v2, "startTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->active:Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/MyActive;->getEndTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v10

    .line 77
    .local v0, "endTime":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    move-object v3, v2

    goto :goto_0

    .line 80
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u81f3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MyActiveAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v1, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/MyActiveAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/MyActiveAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyActiveAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 31
    return-void
.end method
