.class public Lcom/dodonew/online/adapter/OnlinePlayAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlinePlayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;
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
            "Lcom/dodonew/online/bean/OnlinePlay;",
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
            "Lcom/dodonew/online/bean/OnlinePlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/OnlinePlay;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->list:Ljava/util/List;

    .line 32
    const-string v0, "layout_inflater"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->list:Ljava/util/List;

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
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0200a7

    .line 54
    if-nez p2, :cond_1

    .line 55
    new-instance v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/OnlinePlayAdapter;)V

    .line 56
    .local v2, "viewHolder":Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;
    iget-object v3, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030067

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v3, 0x7f0d0193

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f0d0192

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0d0194

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/OnlinePlay;

    .line 66
    .local v0, "onlinePlay":Lcom/dodonew/online/bean/OnlinePlay;
    iget-object v3, v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OnlinePlay;->getPlayTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OnlinePlay;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v0}, Lcom/dodonew/online/bean/OnlinePlay;->getPicURL()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "pic":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 74
    :cond_0
    return-object p2

    .line 62
    .end local v0    # "onlinePlay":Lcom/dodonew/online/bean/OnlinePlay;
    .end local v1    # "pic":Ljava/lang/String;
    .end local v2    # "viewHolder":Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;
    goto :goto_0
.end method
