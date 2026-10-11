.class public Lcom/dodonew/online/adapter/SearchNetBarAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchNetBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;
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
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/dodonew/online/bean/NetBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->pos:I

    .line 24
    iput-object p1, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->list:Ljava/util/List;

    .line 26
    const-string v0, "layout_inflater"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/SearchNetBarAdapter;)V

    .line 50
    .local v0, "viewHolder":Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;
    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    const v1, 0x7f0d019e

    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0d019f

    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;->tvLabel:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 60
    iget-object v2, v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v1, 0x7f0200d9

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    iget-object v2, v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;->tvLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-object p2

    .line 57
    .end local v0    # "viewHolder":Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/dodonew/online/adapter/SearchNetBarAdapter$ViewHolder;
    goto :goto_0
.end method
