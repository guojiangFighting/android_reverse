.class public Lcom/dodonew/online/adapter/ActiveAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ActiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private active:Lcom/dodonew/online/bean/Active;

.field private context:Landroid/content/Context;

.field private defaultRes:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Active;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;


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
            "Lcom/dodonew/online/bean/Active;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Active;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const v0, 0x7f020078

    iput v0, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->defaultRes:I

    .line 37
    iput-object p1, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->list:Ljava/util/List;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/ActiveAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/ActiveAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ActiveAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 67
    iget-object v4, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dodonew/online/bean/Active;

    iput-object v4, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    .line 68
    iget-object v4, p1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Active;->getActiTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Active;->getNetBarName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const-string v3, ""

    .line 71
    .local v3, "time":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/Active;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 72
    const-string v3, "\u5df2\u7ed3\u675f"

    .line 82
    :goto_0
    iget-object v4, p1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Active;->getPicURL()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 85
    iget-object v4, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Active;->getPicURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget v5, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->defaultRes:I

    .line 86
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget v5, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->defaultRes:I

    .line 87
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 91
    :goto_1
    iget-object v4, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/dodonew/online/adapter/ActiveAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/dodonew/online/adapter/ActiveAdapter$1;-><init>(Lcom/dodonew/online/adapter/ActiveAdapter;Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    return-void

    .line 74
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Active;->getStartTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v8

    .line 75
    .local v2, "startTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->active:Lcom/dodonew/online/bean/Active;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Active;->getEndTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v8

    .line 76
    .local v0, "endTime":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    move-object v3, v2

    goto :goto_0

    .line 79
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u81f3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 89
    .end local v0    # "endTime":Ljava/lang/String;
    .end local v2    # "startTime":Ljava/lang/String;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_3
    iget-object v4, p1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->defaultRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ActiveAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v1, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/ActiveAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setDefaultRes(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->defaultRes:I

    .line 111
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dodonew/online/adapter/ActiveAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 34
    return-void
.end method
