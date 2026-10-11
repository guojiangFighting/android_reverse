.class public Lcom/dodonew/online/adapter/GuessAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GuessAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;,
        Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;",
        ">;",
        "Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter",
        "<",
        "Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field array:[Ljava/lang/Integer;

.field category:Lcom/dodonew/online/bean/Category;

.field private context:Landroid/content/Context;

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

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private race:Lcom/dodonew/online/bean/Race;


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
            "Lcom/dodonew/online/bean/Race;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Race;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->list:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Race;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/dodonew/online/bean/Category;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->list:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->map:Ljava/util/Map;

    .line 49
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    .line 50
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/GuessAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    .line 122
    :goto_1
    return-wide v2

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessAdapter;->onBindHeaderViewHolder(Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->map:Ljava/util/Map;

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->map:Ljava/util/Map;

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Category;

    iput-object v2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->category:Lcom/dodonew/online/bean/Category;

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->category:Lcom/dodonew/online/bean/Category;

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/dodonew/online/adapter/GuessAdapter;->category:Lcom/dodonew/online/bean/Category;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;->tvHeaderRaceTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->category:Lcom/dodonew/online/bean/Category;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Category;->getPlayTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v2, p1, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;->tvHeaderMore:Landroid/widget/TextView;

    const-string v3, "\u66f4\u591a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p1, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->category:Lcom/dodonew/online/bean/Category;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f02007f

    .line 86
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/Race;

    iput-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    .line 87
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvTeamAName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvTeamBName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvRaceTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getRaceTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvRaceScore:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Race;->getaScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Race;->getbScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-string v2, ""

    .line 92
    .local v2, "raceState":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Race;->getPlayTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 93
    .local v0, "playTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 94
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

    .line 98
    :goto_0
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvRaceState:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 101
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->ivTeamA:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 102
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessAdapter;->race:Lcom/dodonew/online/bean/Race;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->ivTeamB:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 105
    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/dodonew/online/adapter/GuessAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/adapter/GuessAdapter$1;-><init>(Lcom/dodonew/online/adapter/GuessAdapter;Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    return-void

    .line 96
    :cond_1
    const-string v2, "\u5df2\u622a\u6b62"

    goto :goto_0
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/dodonew/online/adapter/GuessAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;-><init>(Lcom/dodonew/online/adapter/GuessAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/dodonew/online/adapter/GuessAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v1, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/GuessAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setHeaderData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "mp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/dodonew/online/bean/Category;>;"
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessAdapter;->map:Ljava/util/Map;

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter;->array:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 37
    return-void
.end method
