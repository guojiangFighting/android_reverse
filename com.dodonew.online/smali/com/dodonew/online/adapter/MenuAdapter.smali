.class public Lcom/dodonew/online/adapter/MenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MenuAdapter.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;,
        Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;",
        ">;",
        "Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter",
        "<",
        "Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field array:[Ljava/lang/Integer;

.field private context:Landroid/content/Context;

.field private height:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

.field private pos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/MenuType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/dodonew/online/bean/MenuType;>;"
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput v1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->pos:I

    .line 50
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->list:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/dodonew/online/adapter/MenuAdapter;->map:Ljava/util/Map;

    .line 53
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    .line 54
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 55
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x2bc

    iput v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->height:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/MenuAdapter;)Lcom/dodonew/online/interfaces/OnViewClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MenuAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/adapter/MenuAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MenuAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    .line 132
    :goto_1
    return-wide v2

    .line 127
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MenuAdapter;->onBindHeaderViewHolder(Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "menuType":Lcom/dodonew/online/bean/MenuType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->map:Ljava/util/Map;

    iget-object v3, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->map:Ljava/util/Map;

    iget-object v3, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "menuType":Lcom/dodonew/online/bean/MenuType;
    check-cast v1, Lcom/dodonew/online/bean/MenuType;

    .line 154
    .restart local v1    # "menuType":Lcom/dodonew/online/bean/MenuType;
    :cond_0
    if-eqz v1, :cond_1

    .line 155
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/MenuType;->getMenuTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    return-void

    .line 145
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MenuAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v7, 0x7f0200d4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 69
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Menu;

    .line 70
    .local v1, "menu":Lcom/dodonew/online/bean/Menu;
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uffe5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getMenuPrice1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->store:Lcom/dodonew/online/bean/Store;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Store;->getFileServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "f?f=teashop_pic/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dodonew/online/DodonewOnlineApplication;->store:Lcom/dodonew/online/bean/Store;

    .line 73
    invoke-virtual {v4}, Lcom/dodonew/online/bean/Store;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/small/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getMenuID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 77
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getAmount()I

    move-result v0

    .line 78
    .local v0, "amount":I
    if-lez v0, :cond_1

    .line 79
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->ibSubtract:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 80
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvNumber:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getAmount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->ibAdd:Landroid/widget/ImageButton;

    new-instance v3, Lcom/dodonew/online/adapter/MenuAdapter$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/dodonew/online/adapter/MenuAdapter$1;-><init>(Lcom/dodonew/online/adapter/MenuAdapter;Lcom/dodonew/online/bean/Menu;Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->ibSubtract:Landroid/widget/ImageButton;

    new-instance v3, Lcom/dodonew/online/adapter/MenuAdapter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/dodonew/online/adapter/MenuAdapter$2;-><init>(Lcom/dodonew/online/adapter/MenuAdapter;Lcom/dodonew/online/bean/Menu;Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/dodonew/online/adapter/MenuAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/dodonew/online/adapter/MenuAdapter$3;-><init>(Lcom/dodonew/online/adapter/MenuAdapter;Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->ibSubtract:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 84
    iget-object v2, p1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/dodonew/online/adapter/MenuAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;-><init>(Lcom/dodonew/online/adapter/MenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/dodonew/online/adapter/MenuAdapter;->height:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/MenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setHeaderData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/MenuType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "mp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/dodonew/online/bean/MenuType;>;"
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->map:Ljava/util/Map;

    .line 194
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    .line 195
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter;->array:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 42
    return-void
.end method

.method public setOnViewClickListener(Lcom/dodonew/online/interfaces/OnViewClickListener;)V
    .locals 0
    .param p1, "onViewClickListener"    # Lcom/dodonew/online/interfaces/OnViewClickListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter;->onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

    .line 46
    return-void
.end method
