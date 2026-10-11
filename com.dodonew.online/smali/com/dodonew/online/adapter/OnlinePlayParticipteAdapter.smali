.class public Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlinePlayParticipteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;
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
            "Lcom/dodonew/online/bean/Participate;",
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
            "Lcom/dodonew/online/bean/Participate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Participate;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->list:Ljava/util/List;

    .line 28
    const-string v0, "layout_inflater"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f02007a

    .line 50
    if-nez p2, :cond_1

    .line 51
    new-instance v2, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;)V

    .line 52
    .local v2, "viewHolder":Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;
    iget-object v3, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030068

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    const v3, 0x7f0d0195

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Participate;

    .line 60
    .local v0, "participate":Lcom/dodonew/online/bean/Participate;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Participate;->getUserIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "pic":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v2, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 66
    :cond_0
    return-object p2

    .line 56
    .end local v0    # "participate":Lcom/dodonew/online/bean/Participate;
    .end local v1    # "pic":Ljava/lang/String;
    .end local v2    # "viewHolder":Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/dodonew/online/adapter/OnlinePlayParticipteAdapter$ViewHolder;
    goto :goto_0
.end method
