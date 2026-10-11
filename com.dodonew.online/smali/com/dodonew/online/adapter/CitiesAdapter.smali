.class public Lcom/dodonew/online/adapter/CitiesAdapter;
.super Landroid/widget/BaseAdapter;
.source "CitiesAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;,
        Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field index:Ljava/lang/String;

.field layoutInflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field public mpAlphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field returnPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 105
    const-string v2, ""

    iput-object v2, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->index:Ljava/lang/String;

    .line 106
    iput v4, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->returnPos:I

    .line 31
    iput-object p1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    .line 33
    const-string v2, "layout_inflater"

    .line 34
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->mpAlphaIndexer:Ljava/util/HashMap;

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 37
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/City;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "alphaIndexer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/City;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->getIndexSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_1
    iget-object v2, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->mpAlphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/City;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->mpAlphaIndexer:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 48
    .end local v0    # "alphaIndexer":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "alphaIndexer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/util/Utils;->getIndexSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->index:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    iput-object v0, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->index:Ljava/lang/String;

    .line 118
    iput p1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->returnPos:I

    .line 119
    iget v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->returnPos:I

    int-to-long v2, v1

    .line 121
    :goto_1
    return-wide v2

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    iget v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->returnPos:I

    int-to-long v2, v1

    goto :goto_1
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 84
    if-nez p2, :cond_1

    .line 85
    new-instance v2, Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;

    invoke-direct {v2, p0}, Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;-><init>(Lcom/dodonew/online/adapter/CitiesAdapter;)V

    .line 86
    .local v2, "holder":Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;
    iget-object v3, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030052

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    const v3, 0x7f0d0154

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    .line 93
    .local v1, "city":Lcom/dodonew/online/bean/City;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "alphaIndexer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getIndexSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_1
    iget-object v3, v2, Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v0    # "alphaIndexer":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 90
    .end local v1    # "city":Lcom/dodonew/online/bean/City;
    .end local v2    # "holder":Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;

    .restart local v2    # "holder":Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;
    goto :goto_0

    .line 98
    .restart local v0    # "alphaIndexer":Ljava/lang/String;
    .restart local v1    # "city":Lcom/dodonew/online/bean/City;
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/City;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    if-nez p2, :cond_0

    .line 69
    new-instance v0, Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/CitiesAdapter;)V

    .line 70
    .local v0, "viewHolder":Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;
    iget-object v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    const v1, 0x7f0d0153

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    iget-object v2, v0, Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/CitiesAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2

    .line 74
    .end local v0    # "viewHolder":Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/dodonew/online/adapter/CitiesAdapter$ViewHolder;
    goto :goto_0
.end method
