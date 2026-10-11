.class public Lcom/dodonew/online/adapter/ChoiceMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChoiceMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
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

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

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
            "Lcom/dodonew/online/bean/Menu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->pos:I

    .line 41
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->list:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->context:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x2bc

    iput v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->height:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/ChoiceMenuAdapter;)Lcom/dodonew/online/interfaces/OnViewClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/adapter/ChoiceMenuAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    const v7, 0x7f0200d4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 58
    iget-object v2, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Menu;

    .line 59
    .local v1, "menu":Lcom/dodonew/online/bean/Menu;
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvPrice:Landroid/widget/TextView;

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

    .line 61
    iget-object v2, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->context:Landroid/content/Context;

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

    .line 62
    invoke-virtual {v4}, Lcom/dodonew/online/bean/Store;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/small/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getMenuID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 66
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getAmount()I

    move-result v0

    .line 67
    .local v0, "amount":I
    if-lez v0, :cond_1

    .line 68
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->ibSubtract:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 69
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvNumber:Landroid/widget/TextView;

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

    .line 75
    :goto_0
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->ibAdd:Landroid/widget/ImageButton;

    new-instance v3, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$1;-><init>(Lcom/dodonew/online/adapter/ChoiceMenuAdapter;Lcom/dodonew/online/bean/Menu;Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->ibSubtract:Landroid/widget/ImageButton;

    new-instance v3, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$2;-><init>(Lcom/dodonew/online/adapter/ChoiceMenuAdapter;Lcom/dodonew/online/bean/Menu;Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$3;-><init>(Lcom/dodonew/online/adapter/ChoiceMenuAdapter;Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->ibSubtract:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 73
    iget-object v2, p1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->height:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v1, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/ChoiceMenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 139
    return-void
.end method

.method public setOnViewClickListener(Lcom/dodonew/online/interfaces/OnViewClickListener;)V
    .locals 0
    .param p1, "onViewClickListener"    # Lcom/dodonew/online/interfaces/OnViewClickListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->onViewClickListener:Lcom/dodonew/online/interfaces/OnViewClickListener;

    .line 39
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->pos:I

    .line 143
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method
