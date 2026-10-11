.class public Lcom/dodonew/online/adapter/CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

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
            "Lcom/dodonew/online/bean/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dodonew/online/adapter/CityAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/dodonew/online/adapter/CityAdapter;->list:Ljava/util/List;

    .line 31
    const-string v0, "layout_inflater"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/CityAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/adapter/CityAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/adapter/CityAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/CityAdapter;)V

    .line 55
    .local v0, "viewHolder":Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;
    iget-object v1, p0, Lcom/dodonew/online/adapter/CityAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    const v1, 0x7f0d0153

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v2, v0, Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/adapter/CityAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/City;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object p2

    .line 59
    .end local v0    # "viewHolder":Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/dodonew/online/adapter/CityAdapter$ViewHolder;
    goto :goto_0
.end method
