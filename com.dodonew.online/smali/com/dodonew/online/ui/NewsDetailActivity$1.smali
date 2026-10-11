.class Lcom/dodonew/online/ui/NewsDetailActivity$1;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/NewsDetailActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/NewsDetailActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinish()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$000(Lcom/dodonew/online/ui/NewsDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$100(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 103
    return-void
.end method
