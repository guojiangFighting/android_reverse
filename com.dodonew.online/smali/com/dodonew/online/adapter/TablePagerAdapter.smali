.class public Lcom/dodonew/online/adapter/TablePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TablePagerAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field private count:I

.field private domianId:Ljava/lang/String;

.field public hpItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dodonew/online/view/TableView;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/TableArea;",
            ">;"
        }
    .end annotation
.end field

.field private netBarId:Ljava/lang/String;

.field private onOrderTableListener:Lcom/dodonew/online/interfaces/OnOrderTableListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/dodonew/online/interfaces/OnOrderTableListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "netBarId"    # Ljava/lang/String;
    .param p4, "domianId"    # Ljava/lang/String;
    .param p5, "onOrderTableListener"    # Lcom/dodonew/online/interfaces/OnOrderTableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/TableArea;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dodonew/online/interfaces/OnOrderTableListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/TableArea;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->hpItemHashMap:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->count:I

    .line 36
    iput-object p1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->list:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->netBarId:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->domianId:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->onOrderTableListener:Lcom/dodonew/online/interfaces/OnOrderTableListener;

    .line 42
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget v0, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->count:I

    if-lez v0, :cond_0

    .line 98
    iget v0, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->count:I

    .line 99
    const/4 v0, -0x2

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v2, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/TableArea;

    .line 82
    .local v1, "tableArea":Lcom/dodonew/online/bean/TableArea;
    invoke-virtual {v1}, Lcom/dodonew/online/bean/TableArea;->getDeductionAmount()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "amount":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v0, "0"

    .line 86
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/dodonew/online/bean/TableArea;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143/\u5c0f\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, -0x1

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "itemView":Lcom/dodonew/online/view/TableView;
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/TableArea;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/TableArea;->getId()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->hpItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->hpItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "itemView":Lcom/dodonew/online/view/TableView;
    check-cast v0, Lcom/dodonew/online/view/TableView;

    .line 50
    .restart local v0    # "itemView":Lcom/dodonew/online/view/TableView;
    if-nez v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->hpItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/dodonew/online/view/TableView;

    .end local v0    # "itemView":Lcom/dodonew/online/view/TableView;
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->netBarId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->domianId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->onOrderTableListener:Lcom/dodonew/online/interfaces/OnOrderTableListener;

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/view/TableView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dodonew/online/interfaces/OnOrderTableListener;)V

    .line 53
    .restart local v0    # "itemView":Lcom/dodonew/online/view/TableView;
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .local v6, "softView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/dodonew/online/view/TableView;>;"
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->hpItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v6    # "softView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/dodonew/online/view/TableView;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 62
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/dodonew/online/view/TableView;

    .end local v0    # "itemView":Lcom/dodonew/online/view/TableView;
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->netBarId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->domianId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->onOrderTableListener:Lcom/dodonew/online/interfaces/OnOrderTableListener;

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/view/TableView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dodonew/online/interfaces/OnOrderTableListener;)V

    .line 58
    .restart local v0    # "itemView":Lcom/dodonew/online/view/TableView;
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .restart local v6    # "softView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/dodonew/online/view/TableView;>;"
    iget-object v1, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->hpItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 75
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/TablePagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/adapter/TablePagerAdapter;->count:I

    .line 92
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method
