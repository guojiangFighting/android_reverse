.class Lcom/dodonew/online/ui/ExchangeRecordActivity$5;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "ExchangeRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ExchangeRecordActivity;->setExchangeRecordAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

.field final synthetic val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$5;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$5;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$5;->val$headersDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->invalidateHeaders()V

    .line 183
    return-void
.end method
