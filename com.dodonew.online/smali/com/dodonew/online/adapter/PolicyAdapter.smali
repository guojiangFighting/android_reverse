.class public Lcom/dodonew/online/adapter/PolicyAdapter;
.super Landroid/widget/BaseAdapter;
.source "PolicyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;
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
            "Lcom/dodonew/online/bean/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "textWatcher"    # Landroid/text/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Policy;",
            ">;",
            "Landroid/text/TextWatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Policy;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->pos:I

    .line 31
    iput-object p1, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->list:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->textWatcher:Landroid/text/TextWatcher;

    .line 34
    const-string v0, "layout_inflater"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->pos:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x8

    .line 56
    if-nez p2, :cond_3

    .line 57
    new-instance v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;-><init>(Lcom/dodonew/online/adapter/PolicyAdapter;)V

    .line 58
    .local v6, "viewHolder":Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;
    iget-object v7, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030069

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    const v7, 0x7f0d0196

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 60
    const v7, 0x7f0d0197

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->editText:Landroid/widget/EditText;

    .line 61
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v7, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_4

    .line 66
    iget-object v7, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dodonew/online/bean/Policy;

    .line 67
    .local v4, "policy":Lcom/dodonew/online/bean/Policy;
    invoke-virtual {v4}, Lcom/dodonew/online/bean/Policy;->getCreditAmount()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "creditAmount":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/dodonew/online/bean/Policy;->getCreditPresent()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "creditPresent":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5143"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "amount":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u9001"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5143"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    const v5, 0x7f02005a

    .line 74
    .local v5, "resId":I
    iget-object v7, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 75
    .local v1, "color":I
    iget v7, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->pos:I

    if-ne v7, p1, :cond_1

    .line 76
    const v5, 0x7f020059

    .line 77
    const/4 v1, -0x1

    .line 79
    :cond_1
    iget-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    iget-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 91
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "color":I
    .end local v2    # "creditAmount":Ljava/lang/String;
    .end local v3    # "creditPresent":Ljava/lang/String;
    .end local v4    # "policy":Lcom/dodonew/online/bean/Policy;
    .end local v5    # "resId":I
    :cond_2
    :goto_1
    return-object p2

    .line 63
    .end local v6    # "viewHolder":Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;

    .restart local v6    # "viewHolder":Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;
    goto/16 :goto_0

    .line 84
    :cond_4
    iget-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->editText:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 86
    iget-object v7, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v7, :cond_2

    .line 87
    iget-object v7, v6, Lcom/dodonew/online/adapter/PolicyAdapter$ViewHolder;->editText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->pos:I

    .line 101
    invoke-virtual {p0}, Lcom/dodonew/online/adapter/PolicyAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dodonew/online/adapter/PolicyAdapter;->textWatcher:Landroid/text/TextWatcher;

    .line 110
    return-void
.end method
