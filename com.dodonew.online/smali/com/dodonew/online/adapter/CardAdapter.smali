.class public Lcom/dodonew/online/adapter/CardAdapter;
.super Landroid/widget/BaseAdapter;
.source "CardAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;
.implements Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

.field private mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;


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
            "Lcom/dodonew/online/bean/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Card;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .line 37
    iput-object p1, p0, Lcom/dodonew/online/adapter/CardAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/dodonew/online/adapter/CardAdapter;->list:Ljava/util/List;

    .line 39
    const-string v0, "layout_inflater"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/CardAdapter;)Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/CardAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    return-object v0
.end method


# virtual methods
.method public closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 125
    return-void
.end method

.method public closeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeItem(I)V

    .line 120
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMode()Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getMode()Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getOpenItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getOpenItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOpenLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getOpenLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeLayoutResourceId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    const v0, 0x7f0d0147

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/CardAdapter;)V

    .line 63
    .local v1, "viewHolder":Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;
    iget-object v2, p0, Lcom/dodonew/online/adapter/CardAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03004f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    const v2, 0x7f0d0147

    .line 65
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .line 66
    const v2, 0x7f0d0148

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->item_right:Landroid/view/View;

    .line 68
    const v2, 0x7f0d014d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->container:Landroid/view/View;

    .line 69
    const v2, 0x7f0d014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 70
    const v2, 0x7f0d014f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0d0150

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->tvAccount:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0d0151

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f0d0152

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->tvBalance:Landroid/widget/TextView;

    .line 74
    iget-object v2, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v2, p2, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->initialize(Landroid/view/View;I)V

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/CardAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Card;

    .line 81
    .local v0, "card":Lcom/dodonew/online/bean/Card;
    iget-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getNetBarName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getNetAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->tvBalance:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uffe5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getNetAccountBalance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    new-instance v3, Lcom/dodonew/online/adapter/CardAdapter$1;

    invoke-direct {v3, p0}, Lcom/dodonew/online/adapter/CardAdapter$1;-><init>(Lcom/dodonew/online/adapter/CardAdapter;)V

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->addSwipeListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;)V

    .line 91
    iget-object v2, v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;->item_right:Landroid/view/View;

    new-instance v3, Lcom/dodonew/online/adapter/CardAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/dodonew/online/adapter/CardAdapter$2;-><init>(Lcom/dodonew/online/adapter/CardAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object p2

    .line 77
    .end local v0    # "card":Lcom/dodonew/online/bean/Card;
    .end local v1    # "viewHolder":Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v2, p2, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->updateConvertView(Landroid/view/View;I)V

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/dodonew/online/adapter/CardAdapter$ViewHolder;
    goto :goto_0
.end method

.method public isOpen(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isOpen(I)Z

    move-result v0

    return v0
.end method

.method public openItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->openItem(I)V

    .line 115
    return-void
.end method

.method public removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 140
    return-void
.end method

.method public setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V

    .line 155
    return-void
.end method

.method public setmListener(Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dodonew/online/adapter/CardAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .line 164
    return-void
.end method
