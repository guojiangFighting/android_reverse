.class public Lcom/dodonew/online/adapter/PopAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private choice:Ljava/lang/String;

.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "choice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/PopAdapter;->pos:I

    .line 22
    iput-object p1, p0, Lcom/dodonew/online/adapter/PopAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/dodonew/online/adapter/PopAdapter;->list:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lcom/dodonew/online/adapter/PopAdapter;->choice:Ljava/lang/String;

    .line 25
    const-string v0, "layout_inflater"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/PopAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/adapter/PopAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dodonew/online/adapter/PopAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_1

    .line 47
    new-instance v0, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/PopAdapter;)V

    .line 48
    .local v0, "viewHolder":Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;
    iget-object v1, p0, Lcom/dodonew/online/adapter/PopAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300cc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    const v1, 0x7f0d019e

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/adapter/PopAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    iget-object v2, v0, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/PopAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/dodonew/online/adapter/PopAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/adapter/PopAdapter;->choice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, v0, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/adapter/PopAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    const v1, 0x7f0200e1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 66
    :cond_0
    :goto_1
    return-object p2

    .line 53
    .end local v0    # "viewHolder":Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, v0, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/adapter/PopAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    const v1, 0x7f0200d9

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setChoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "choice"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dodonew/online/adapter/PopAdapter;->choice:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/PopAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method
