.class public Lcom/dodonew/online/adapter/MyGuessAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyGuessAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;,
        Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;",
        ">;",
        "Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter",
        "<",
        "Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;",
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
            "Lcom/dodonew/online/bean/MyGuessDetail;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field pos:I

.field resultType:Ljava/lang/String;


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
            "Lcom/dodonew/online/bean/MyGuessDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyGuessDetail;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->pos:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->resultType:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->list:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/MyGuessAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MyGuessAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/MyGuessDetail;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/MyGuessDetail;->getType()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->resultType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iput-object v0, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->resultType:Ljava/lang/String;

    .line 110
    iput p1, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->pos:I

    .line 111
    iget v1, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->pos:I

    int-to-long v2, v1

    .line 113
    :goto_0
    return-wide v2

    :cond_0
    iget v1, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->pos:I

    int-to-long v2, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MyGuessAdapter;->onBindHeaderViewHolder(Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 126
    iget-object v3, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/MyGuessDetail;

    .line 127
    .local v0, "myGuessDetail":Lcom/dodonew/online/bean/MyGuessDetail;
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/dodonew/online/bean/MyGuessDetail;->getType()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "type":Ljava/lang/String;
    const-string v1, ""

    .line 130
    .local v1, "text":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    const-string v1, "\u731c\u80dc\u8d1f"

    .line 139
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    return-void

    .line 132
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    const-string v1, "\u731c\u6bd4\u5206(\u5de6\u8fb9\u961f\u4f0d\u5728\u524d)"

    goto :goto_0

    .line 134
    :cond_3
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    const-string v1, "\u731c\u51a0\u519b"

    goto :goto_0

    .line 136
    :cond_4
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v1, "\u731c\u5176\u5b83"

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MyGuessAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v10, 0x7f0c0045

    .line 62
    iget-object v7, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/MyGuessDetail;

    .line 63
    .local v3, "myGuess":Lcom/dodonew/online/bean/MyGuessDetail;
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvGameName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getGameName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvTeamRace:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getaTeam()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  VS  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getbTeam()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvOrderTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getOrderTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getCalculate()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "calculate":Ljava/lang/String;
    move-object v1, v0

    .line 68
    .local v1, "calculatetxt":Ljava/lang/String;
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvMyGuessResult:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getDetail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getBetNum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u79ef\u5206 )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getWinTeam()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "winTeam":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    const-string v6, "\u656c\u8bf7\u671f\u5f85"

    .line 73
    :cond_0
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v3}, Lcom/dodonew/online/bean/MyGuessDetail;->getStatus()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "status":Ljava/lang/String;
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvResultStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v4, 0x7f020129

    .line 77
    .local v4, "res":I
    iget-object v7, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 78
    .local v2, "color":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 79
    const-string v7, "\u8d62"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    const v4, 0x7f02004f

    .line 81
    iget-object v7, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 87
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5206"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_2
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvRaceStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvRaceStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->tvResultStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    iget-object v7, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v7, :cond_3

    .line 93
    iget-object v7, p1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/dodonew/online/adapter/MyGuessAdapter$1;

    invoke-direct {v8, p0, p1}, Lcom/dodonew/online/adapter/MyGuessAdapter$1;-><init>(Lcom/dodonew/online/adapter/MyGuessAdapter;Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_3
    return-void

    .line 82
    :cond_4
    const-string v7, "\u8f93"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    const v4, 0x7f02004d

    .line 84
    iget-object v7, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/dodonew/online/adapter/MyGuessAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030063

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/MyGuessAdapter$HeaderViewHolder;-><init>(Lcom/dodonew/online/adapter/MyGuessAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MyGuessAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030060

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/MyGuessAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/MyGuessAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyGuessAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 30
    return-void
.end method
