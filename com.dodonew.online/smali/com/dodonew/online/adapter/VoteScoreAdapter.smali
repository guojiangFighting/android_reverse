.class public Lcom/dodonew/online/adapter/VoteScoreAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VoteScoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:[Ljava/lang/String;

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

.field private pos:I

.field private upPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->pos:I

    iput v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->upPos:I

    .line 27
    iput-object p2, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->list:[Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/adapter/VoteScoreAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/adapter/VoteScoreAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->list:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public noneChoose()V
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->pos:I

    iput v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->upPos:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->pos:I

    .line 89
    iget v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->upPos:I

    invoke-virtual {p0, v0}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->notifyItemChanged(I)V

    .line 91
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;
    .param p2, "position"    # I

    .prologue
    .line 40
    iget-object v2, p1, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->list:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v1, 0x7f02005a

    .line 42
    .local v1, "resId":I
    const v0, -0x777778

    .line 43
    .local v0, "color":I
    iget v2, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->pos:I

    if-ne v2, p2, :cond_0

    .line 44
    const v1, 0x7f020059

    .line 45
    const/4 v0, -0x1

    .line 47
    :cond_0
    iget-object v2, p1, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    iget-object v2, p1, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v2, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p1, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/dodonew/online/adapter/VoteScoreAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/dodonew/online/adapter/VoteScoreAdapter$1;-><init>(Lcom/dodonew/online/adapter/VoteScoreAdapter;Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;

    invoke-direct {v1, p0, v0}, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;-><init>(Lcom/dodonew/online/adapter/VoteScoreAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 77
    return-void
.end method

.method public setPos(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->pos:I

    iput v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->upPos:I

    .line 81
    iput p1, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->pos:I

    .line 82
    iget v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->upPos:I

    invoke-virtual {p0, v0}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->notifyItemChanged(I)V

    .line 83
    iget v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter;->pos:I

    invoke-virtual {p0, v0}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->notifyItemChanged(I)V

    .line 84
    return-void
.end method
