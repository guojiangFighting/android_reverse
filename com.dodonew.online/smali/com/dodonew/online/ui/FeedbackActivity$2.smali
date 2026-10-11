.class Lcom/dodonew/online/ui/FeedbackActivity$2;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FeedbackActivity;->initEvent()V
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
    .line 119
    iput-object p1, p0, Lcom/dodonew/online/ui/FeedbackActivity$2;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 1
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dodonew/online/ui/FeedbackActivity$2;->this$0:Lcom/dodonew/online/ui/FeedbackActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/FeedbackActivity;->sync()V

    .line 123
    return-void
.end method
