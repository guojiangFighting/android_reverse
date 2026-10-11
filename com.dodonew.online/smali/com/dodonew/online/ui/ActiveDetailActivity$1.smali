.class Lcom/dodonew/online/ui/ActiveDetailActivity$1;
.super Ljava/lang/Object;
.source "ActiveDetailActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ActiveDetailActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ActiveDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ActiveDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ActiveDetailActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity$1;->this$0:Lcom/dodonew/online/ui/ActiveDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinish()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity$1;->this$0:Lcom/dodonew/online/ui/ActiveDetailActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->access$000(Lcom/dodonew/online/ui/ActiveDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 61
    return-void
.end method
