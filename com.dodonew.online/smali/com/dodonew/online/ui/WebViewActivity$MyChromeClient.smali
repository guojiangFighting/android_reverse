.class public Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/ui/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/WebViewActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x8

    .line 223
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/WebViewActivity;->access$100(Lcom/dodonew/online/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 231
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/WebViewActivity;->access$100(Lcom/dodonew/online/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/WebViewActivity;->access$100(Lcom/dodonew/online/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/WebViewActivity;->access$100(Lcom/dodonew/online/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 219
    return-void
.end method
