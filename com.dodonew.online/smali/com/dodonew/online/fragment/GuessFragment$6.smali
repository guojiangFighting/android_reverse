.class Lcom/dodonew/online/fragment/GuessFragment$6;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "GuessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/GuessFragment;->setGuessAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/GuessFragment;

.field final synthetic val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/GuessFragment;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dodonew/online/fragment/GuessFragment$6;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    iput-object p2, p0, Lcom/dodonew/online/fragment/GuessFragment$6;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$6;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->invalidateHeaders()V

    .line 224
    return-void
.end method
