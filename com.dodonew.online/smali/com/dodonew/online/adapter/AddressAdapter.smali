.class public Lcom/dodonew/online/adapter/AddressAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AddressAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;
.implements Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;",
        ">;",
        "Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;",
        "Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Address;",
            ">;"
        }
    .end annotation
.end field

.field public mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

.field private mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;


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
            "Lcom/dodonew/online/bean/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Address;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .line 38
    iput-object p2, p0, Lcom/dodonew/online/adapter/AddressAdapter;->list:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/dodonew/online/adapter/AddressAdapter;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/AddressAdapter;)Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/AddressAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/adapter/AddressAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/AddressAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 123
    return-void
.end method

.method public closeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeItem(I)V

    .line 118
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMode()Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

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
    .line 127
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

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
    .line 132
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getOpenLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeLayoutResourceId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 157
    const v0, 0x7f0d0147

    return v0
.end method

.method public isOpen(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isOpen(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/AddressAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    iget-object v2, p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->initialize(Landroid/view/View;I)V

    .line 53
    iget-object v1, p0, Lcom/dodonew/online/adapter/AddressAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Address;

    .line 54
    .local v0, "address":Lcom/dodonew/online/bean/Address;
    iget-object v1, p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Address;->getRecivePeson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Address;->getCellPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->tvAddress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Address;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Address;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    new-instance v2, Lcom/dodonew/online/adapter/AddressAdapter$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/adapter/AddressAdapter$1;-><init>(Lcom/dodonew/online/adapter/AddressAdapter;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->addSwipeListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;)V

    .line 64
    iget-object v1, p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->item_right:Landroid/view/View;

    new-instance v2, Lcom/dodonew/online/adapter/AddressAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/dodonew/online/adapter/AddressAdapter$2;-><init>(Lcom/dodonew/online/adapter/AddressAdapter;Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/dodonew/online/adapter/AddressAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/dodonew/online/adapter/AddressAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/dodonew/online/adapter/AddressAdapter$3;-><init>(Lcom/dodonew/online/adapter/AddressAdapter;Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/AddressAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/dodonew/online/adapter/AddressAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0x258

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v1, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/AddressAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public openItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->openItem(I)V

    .line 113
    return-void
.end method

.method public removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 138
    return-void
.end method

.method public setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mItemManger:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V

    .line 153
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/adapter/AddressAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 106
    return-void
.end method

.method public setmListener(Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dodonew/online/adapter/AddressAdapter;->mListener:Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    .line 162
    return-void
.end method
