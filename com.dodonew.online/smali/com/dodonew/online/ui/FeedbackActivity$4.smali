.class Lcom/dodonew/online/ui/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lcom/umeng/fb/SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FeedbackActivity;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FeedbackActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/dodonew/online/ui/FeedbackActivity$4;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveDevReply(Ljava/util/List;)V
    .locals 1
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
    .line 190
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity$4;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FeedbackActivity;->access$400(Lcom/dodonew/online/ui/FeedbackActivity;)V

    .line 191
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
    .line 196
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    return-void
.end method
