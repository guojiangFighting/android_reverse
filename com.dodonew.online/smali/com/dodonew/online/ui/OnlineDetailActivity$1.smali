.class Lcom/dodonew/online/ui/OnlineDetailActivity$1;
.super Ljava/lang/Object;
.source "OnlineDetailActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/OnlineDetailActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OnlineDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OnlineDetailActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$1;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 93
    .local v1, "w":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 96
    .local v0, "h":I
    iget-object v2, p0, Lcom/dodonew/online/ui/OnlineDetailActivity$1;->this$0:Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/OnlineDetailActivity;->access$000(Lcom/dodonew/online/ui/OnlineDetailActivity;)Lcom/dodonew/online/widget/MWebView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dodonew/online/widget/MWebView;->measure(II)V

    .line 97
    return-void
.end method
