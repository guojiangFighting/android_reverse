.class Lcom/dodonew/online/ui/GuessMoreActivity$5;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "GuessMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GuessMoreActivity;->setGuessAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

.field final synthetic val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GuessMoreActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/dodonew/online/ui/GuessMoreActivity$5;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/GuessMoreActivity$5;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$5;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->invalidateHeaders()V

    .line 244
    return-void
.end method
