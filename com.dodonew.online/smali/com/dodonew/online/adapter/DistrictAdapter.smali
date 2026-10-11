.class public Lcom/dodonew/online/adapter/DistrictAdapter;
.super Landroid/widget/BaseAdapter;
.source "DistrictAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;
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
            "Lcom/dodonew/online/bean/District;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

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
            "Lcom/dodonew/online/bean/District;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/District;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->pos:I

    .line 29
    iput-object p1, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->list:Ljava/util/List;

    .line 31
    const-string v0, "layout_inflater"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_1

    .line 55
    new-instance v2, Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/DistrictAdapter;)V

    .line 56
    .local v2, "viewHolder":Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;
    iget-object v3, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030054

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v3, 0x7f0d0155

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/District;

    .line 63
    .local v0, "district":Lcom/dodonew/online/bean/District;
    iget-object v3, v2, Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/District;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v1, 0x7f020102

    .line 65
    .local v1, "res":I
    iget v3, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->pos:I

    if-ne v3, p1, :cond_0

    .line 66
    const v1, 0x7f020101

    .line 68
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    return-object p2

    .line 60
    .end local v0    # "district":Lcom/dodonew/online/bean/District;
    .end local v1    # "res":I
    .end local v2    # "viewHolder":Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/dodonew/online/adapter/DistrictAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 79
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/dodonew/online/adapter/DistrictAdapter;->pos:I

    .line 83
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/DistrictAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method
