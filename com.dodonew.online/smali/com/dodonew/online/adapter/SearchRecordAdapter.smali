.class public Lcom/dodonew/online/adapter/SearchRecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private flag:I

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

.field private list_city:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field


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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->flag:I

    .line 25
    iput-object p1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list:Ljava/util/List;

    .line 27
    const-string v0, "layout_inflater"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->flag:I

    .line 33
    iput-object p1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list_city:Ljava/util/List;

    .line 35
    iput p3, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->flag:I

    .line 36
    const-string v0, "layout_inflater"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list_city:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list_city:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    if-nez p2, :cond_1

    .line 59
    new-instance v0, Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/SearchRecordAdapter;)V

    .line 60
    .local v0, "viewHolder":Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;
    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v1, 0x7f0d01f5

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;->tv_txt:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget v1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->flag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 69
    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list_city:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    iget-object v2, v0, Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;->tv_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list_city:Ljava/util/List;

    .line 71
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    :goto_1
    return-object p2

    .line 65
    .end local v0    # "viewHolder":Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;
    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    iget-object v2, v0, Lcom/dodonew/online/adapter/SearchRecordAdapter$ViewHolder;->tv_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/SearchRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
