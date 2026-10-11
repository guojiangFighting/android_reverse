.class public Lcom/dodonew/online/adapter/MallGiftAdapter;
.super Landroid/widget/BaseAdapter;
.source "MallGiftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field private informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Gift;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/dodonew/online/bean/Gift;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Gift;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->list:Ljava/util/List;

    .line 40
    const-string v0, "layout_inflater"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/MallGiftAdapter;)Lcom/dodonew/online/widget/dialog/InformationDialog;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MallGiftAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/adapter/MallGiftAdapter;Lcom/dodonew/online/widget/dialog/InformationDialog;)Lcom/dodonew/online/widget/dialog/InformationDialog;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MallGiftAdapter;
    .param p1, "x1"    # Lcom/dodonew/online/widget/dialog/InformationDialog;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->informationDialog:Lcom/dodonew/online/widget/dialog/InformationDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/adapter/MallGiftAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/MallGiftAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f020079

    .line 62
    if-nez p2, :cond_1

    .line 63
    new-instance v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/MallGiftAdapter;)V

    .line 64
    .local v3, "viewHolder":Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;
    iget-object v4, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03005c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    const v4, 0x7f0d0167

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 66
    const v4, 0x7f0d0169

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 67
    const v4, 0x7f0d016a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 68
    const v4, 0x7f0d0168

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->btnExchange:Landroid/widget/Button;

    .line 69
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Gift;

    .line 74
    .local v0, "gift":Lcom/dodonew/online/bean/Gift;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Gift;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v2, v4, 0x64

    .line 75
    .local v2, "score":I
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Gift;->getGiftImg()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "img":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 79
    invoke-virtual {v4, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 81
    :cond_0
    iget-object v4, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Gift;->getGiftName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->btnExchange:Landroid/widget/Button;

    new-instance v5, Lcom/dodonew/online/adapter/MallGiftAdapter$1;

    invoke-direct {v5, p0, v0, v2, p1}, Lcom/dodonew/online/adapter/MallGiftAdapter$1;-><init>(Lcom/dodonew/online/adapter/MallGiftAdapter;Lcom/dodonew/online/bean/Gift;II)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object p2

    .line 71
    .end local v0    # "gift":Lcom/dodonew/online/bean/Gift;
    .end local v1    # "img":Ljava/lang/String;
    .end local v2    # "score":I
    .end local v3    # "viewHolder":Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 116
    return-void
.end method
