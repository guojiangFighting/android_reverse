.class Lcom/dodonew/online/ui/NewsDetailActivity$2;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;


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
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$2;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnProgressChanged(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity$2;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$000(Lcom/dodonew/online/ui/NewsDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 109
    return-void
.end method
