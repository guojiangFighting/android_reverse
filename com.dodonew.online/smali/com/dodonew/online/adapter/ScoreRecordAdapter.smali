.class public Lcom/dodonew/online/adapter/ScoreRecordAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ScoreRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;",
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
            "Lcom/dodonew/online/bean/ScoreRecord;",
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
            "Lcom/dodonew/online/bean/ScoreRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreRecord;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->list:Ljava/util/List;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/ScoreRecordAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/ScoreRecordAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 57
    iget-object v3, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/ScoreRecord;

    .line 58
    .local v2, "scoreRecord":Lcom/dodonew/online/bean/ScoreRecord;
    iget-object v3, p1, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->tvScoreStrategy:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/ScoreRecord;->getScoreStrategy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2}, Lcom/dodonew/online/bean/ScoreRecord;->getOperaType()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "operaType":Ljava/lang/String;
    iget-object v3, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 61
    .local v0, "color":I
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 62
    iget-object v3, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 64
    :cond_0
    iget-object v3, p1, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->tvOperaType:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p1, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->tvOperaType:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v3, p1, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->tvOperaTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/ScoreRecord;->getOperaTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p1, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/dodonew/online/adapter/ScoreRecordAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/adapter/ScoreRecordAdapter$1;-><init>(Lcom/dodonew/online/adapter/ScoreRecordAdapter;Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/ScoreRecordAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 29
    return-void
.end method
