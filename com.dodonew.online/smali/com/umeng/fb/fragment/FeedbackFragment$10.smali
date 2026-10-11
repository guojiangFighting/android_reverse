.class Lcom/umeng/fb/fragment/FeedbackFragment$10;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Lcom/umeng/fb/SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/fragment/FeedbackFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/fragment/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/umeng/fb/fragment/FeedbackFragment;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/umeng/fb/fragment/FeedbackFragment$10;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveDevReply(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/umeng/fb/fragment/FeedbackFragment$10;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-static {v0}, Lcom/umeng/fb/fragment/FeedbackFragment;->o(Lcom/umeng/fb/fragment/FeedbackFragment;)Lcom/umeng/fb/widget/InterceptTouchSwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/fb/widget/InterceptTouchSwipeRefreshLayout;->setRefreshing(Z)V

    .line 461
    iget-object v0, p0, Lcom/umeng/fb/fragment/FeedbackFragment$10;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-virtual {v0}, Lcom/umeng/fb/fragment/FeedbackFragment;->a()V

    .line 462
    return-void
.end method

.method public onSendUserReply(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    return-void
.end method
