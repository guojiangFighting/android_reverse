.class public Lcom/dodonew/online/adapter/GuessScoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "GuessScoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field df:Ljava/text/DecimalFormat;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I

.field private upPos:I


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
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreCategory;>;"
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput v0, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->pos:I

    .line 25
    iput v0, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->upPos:I

    .line 26
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->df:Ljava/text/DecimalFormat;

    .line 28
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->list:Ljava/util/List;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, -0x1

    const v10, -0x777778

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/GuessScoreAdapter;)V

    .line 54
    .local v3, "viewHolder":Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;
    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030059

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    const v4, 0x7f0d0163

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 56
    const v4, 0x7f0d0164

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tv_score:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/ScoreCategory;

    .line 62
    .local v2, "scoreCategory":Lcom/dodonew/online/bean/ScoreCategory;
    iget-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/ScoreCategory;->getRaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v2}, Lcom/dodonew/online/bean/ScoreCategory;->getPerOdds()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 64
    .local v0, "perOdds":Ljava/lang/Double;
    iget-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tv_score:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget v4, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->pos:I

    if-ne p1, v4, :cond_1

    .line 67
    const v1, 0x7f020059

    .line 68
    .local v1, "res":I
    iget-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tv_score:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    return-object p2

    .line 59
    .end local v0    # "perOdds":Ljava/lang/Double;
    .end local v1    # "res":I
    .end local v2    # "scoreCategory":Lcom/dodonew/online/bean/ScoreCategory;
    .end local v3    # "viewHolder":Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;
    goto :goto_0

    .line 71
    .restart local v0    # "perOdds":Ljava/lang/Double;
    .restart local v2    # "scoreCategory":Lcom/dodonew/online/bean/ScoreCategory;
    :cond_1
    const v1, 0x7f02005a

    .line 72
    .restart local v1    # "res":I
    iget-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v4, v3, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->tv_score:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter;->pos:I

    .line 85
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/GuessScoreAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method
