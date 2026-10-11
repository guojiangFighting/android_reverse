.class Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field replyContent:Landroid/widget/TextView;

.field replyDate:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter$ViewHolder;->this$1:Lcom/dodonew/online/ui/FeedbackActivity$ReplyListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
