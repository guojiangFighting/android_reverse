.class public Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChoiceNetbarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;
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
            "Lcom/dodonew/online/bean/NetBarCaption;",
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
            "Lcom/dodonew/online/bean/NetBarCaption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBarCaption;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->pos:I

    .line 29
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->list:Ljava/util/List;

    .line 31
    const-string v0, "layout_inflater"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->list:Ljava/util/List;

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
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v1, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;)V

    .line 56
    .local v1, "viewHolder":Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;
    iget-object v2, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030050

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v2, 0x7f0d0153

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBarCaption;

    .line 63
    .local v0, "netBarCaption":Lcom/dodonew/online/bean/NetBarCaption;
    iget-object v2, v1, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/NetBarCaption;->getNetBarCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p2

    .line 60
    .end local v0    # "netBarCaption":Lcom/dodonew/online/bean/NetBarCaption;
    .end local v1    # "viewHolder":Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/dodonew/online/adapter/ChoiceNetbarAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 74
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->pos:I

    .line 78
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/ChoiceNetbarAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method
