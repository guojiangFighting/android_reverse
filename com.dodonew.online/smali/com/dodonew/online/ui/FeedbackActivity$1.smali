.class Lcom/dodonew/online/ui/FeedbackActivity$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FeedbackActivity;->setFeedbackAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/FeedbackActivity;

.field final synthetic val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FeedbackActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dodonew/online/ui/FeedbackActivity$1;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/FeedbackActivity$1;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity$1;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->invalidateHeaders()V

    .line 97
    return-void
.end method
