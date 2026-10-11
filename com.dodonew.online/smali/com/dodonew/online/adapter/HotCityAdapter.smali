.class public Lcom/dodonew/online/adapter/HotCityAdapter;
.super Landroid/widget/BaseAdapter;
.source "HotCityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field private list:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dodonew/online/adapter/HotCityAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/dodonew/online/adapter/HotCityAdapter;->list:[Ljava/lang/String;

    .line 24
    const-string v0, "layout_inflater"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/HotCityAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/adapter/HotCityAdapter;->list:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dodonew/online/adapter/HotCityAdapter;->list:[Ljava/lang/String;

    aget-object v0, v0, p1

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
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 47
    new-instance v0, Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/HotCityAdapter;)V

    .line 48
    .local v0, "viewHolder":Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;
    iget-object v1, p0, Lcom/dodonew/online/adapter/HotCityAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    const v1, 0x7f0d0153

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    iget-object v1, v0, Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/adapter/HotCityAdapter;->list:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object p2

    .line 52
    .end local v0    # "viewHolder":Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/dodonew/online/adapter/HotCityAdapter$ViewHolder;
    goto :goto_0
.end method
