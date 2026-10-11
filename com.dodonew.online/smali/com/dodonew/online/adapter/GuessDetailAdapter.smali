.class public Lcom/dodonew/online/adapter/GuessDetailAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GuessDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;,
        Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Lcom/dodonew/online/widget/dialog/VoteDialog;

.field private guessScoreAdapter_:Lcom/dodonew/online/adapter/GuessScoreAdapter;

.field private informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreData;",
            ">;"
        }
    .end annotation
.end field

.field private okPos:I

.field public onConfirmClickListener:Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private pos:I

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onConfirmClickListener"    # Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreData;",
            ">;",
            "Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreData;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->pos:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->okPos:I

    .line 46
    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->list:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->onConfirmClickListener:Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/adapter/GuessScoreAdapter;)Lcom/dodonew/online/adapter/GuessScoreAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;
    .param p1, "x1"    # Lcom/dodonew/online/adapter/GuessScoreAdapter;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->guessScoreAdapter_:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/adapter/GuessDetailAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->okPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Lcom/dodonew/online/widget/dialog/VoteDialog;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->dialog:Lcom/dodonew/online/widget/dialog/VoteDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/widget/dialog/VoteDialog;)Lcom/dodonew/online/widget/dialog/VoteDialog;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;
    .param p1, "x1"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->dialog:Lcom/dodonew/online/widget/dialog/VoteDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dodonew/online/adapter/GuessDetailAdapter;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->sb:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Lcom/dodonew/online/widget/dialog/InformationDialog;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/widget/dialog/InformationDialog;)Lcom/dodonew/online/widget/dialog/InformationDialog;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;
    .param p1, "x1"    # Lcom/dodonew/online/widget/dialog/InformationDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/adapter/GuessDetailAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dodonew/online/bean/ScoreData;

    .line 63
    .local v4, "scoreData":Lcom/dodonew/online/bean/ScoreData;
    iget-object v0, p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/ScoreData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v4}, Lcom/dodonew/online/bean/ScoreData;->getTotalCount()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "totalCount":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->tvTotalConut:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_0
    if-nez p2, :cond_1

    .line 71
    iget-object v0, p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->mgv:Lcom/dodonew/online/widget/MGridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MGridView;->setNumColumns(I)V

    .line 76
    :goto_1
    invoke-virtual {v4}, Lcom/dodonew/online/bean/ScoreData;->getScoreCategories()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "scoreCategorylist":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreCategory;>;"
    new-instance v2, Lcom/dodonew/online/adapter/GuessScoreAdapter;

    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/dodonew/online/adapter/GuessScoreAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 78
    .local v2, "guessScoreAdapter":Lcom/dodonew/online/adapter/GuessScoreAdapter;
    iget-object v0, p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->mgv:Lcom/dodonew/online/widget/MGridView;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/MGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v7, p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->mgv:Lcom/dodonew/online/widget/MGridView;

    new-instance v0, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/adapter/GuessDetailAdapter$1;-><init>(Lcom/dodonew/online/adapter/GuessDetailAdapter;Lcom/dodonew/online/adapter/GuessScoreAdapter;Ljava/util/List;Lcom/dodonew/online/bean/ScoreData;I)V

    invoke-virtual {v7, v0}, Lcom/dodonew/online/widget/MGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    return-void

    .line 68
    .end local v2    # "guessScoreAdapter":Lcom/dodonew/online/adapter/GuessScoreAdapter;
    .end local v3    # "scoreCategorylist":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreCategory;>;"
    :cond_0
    iget-object v0, p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->tvTotalConut:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->mgv:Lcom/dodonew/online/widget/MGridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MGridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030058

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/GuessDetailAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOkPos(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->guessScoreAdapter_:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    iget v1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->okPos:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GuessScoreAdapter;->setPos(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->guessScoreAdapter_:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GuessScoreAdapter;->setPos(I)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 140
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter;->pos:I

    .line 144
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/GuessDetailAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method
