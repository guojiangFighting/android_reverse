.class public Lcom/dodonew/online/adapter/GuessMoreAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GuessMoreAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;,
        Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;",
        ">;",
        "Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter",
        "<",
        "Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dateFroamt:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field playTime:Ljava/lang/String;

.field pos:I

.field private race:Lcom/dodonew/online/bean/Race;

.field private weekFormat:Ljava/lang/String;


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
            "Lcom/dodonew/online/bean/Race;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Race;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->pos:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->playTime:Ljava/lang/String;

    .line 139
    const-string v0, "MM\u6708dd\u65e5   EEEE"

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->weekFormat:Ljava/lang/String;

    .line 140
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->dateFroamt:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->list:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/GuessMoreAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessMoreAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Race;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Race;->getPlayTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 109
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->playTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->playTime:Ljava/lang/String;

    .line 111
    iput p1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->pos:I

    .line 112
    iget v1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->pos:I

    int-to-long v2, v1

    .line 114
    :goto_0
    return-wide v2

    :cond_0
    iget v1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->pos:I

    int-to-long v2, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessMoreAdapter;->onBindHeaderViewHolder(Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 127
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Race;

    .line 128
    .local v1, "race":Lcom/dodonew/online/bean/Race;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Race;->getPlayTime()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "playTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->dateFroamt:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->weekFormat:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;->tvHeaderRaceTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0    # "playTime":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessMoreAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f02007f

    .line 76
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/Race;

    iput-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    .line 77
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->tvTeamAName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->tvTeamBName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->tvRaceTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getRaceTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->tvRaceScore:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Race;->getaScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Race;->getbScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v2, ""

    .line 82
    .local v2, "raceState":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Race;->getPlayTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 83
    .local v0, "playTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MM-dd HH:mm"

    invoke-static {v0, v1, v4}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u622a\u6b62"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_0
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->tvRaceState:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->ivTeamA:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 92
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 93
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->ivTeamB:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 95
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/dodonew/online/adapter/GuessMoreAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/adapter/GuessMoreAdapter$1;-><init>(Lcom/dodonew/online/adapter/GuessMoreAdapter;Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_0
    return-void

    .line 86
    :cond_1
    const-string v2, "\u5df2\u622a\u6b62"

    goto :goto_0
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/dodonew/online/adapter/GuessMoreAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;-><init>(Lcom/dodonew/online/adapter/GuessMoreAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessMoreAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v1, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/GuessMoreAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/GuessMoreAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 35
    return-void
.end method
