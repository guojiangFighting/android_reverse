.class public Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "PlayVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/PlayVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/PlayVideoActivity;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/ui/PlayVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/PlayVideoActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$200(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$300(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$200(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$202(Lcom/dodonew/online/ui/PlayVideoActivity;Landroid/view/View;)Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$300(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$500(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 265
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$400(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x8

    .line 230
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$100(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 238
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$100(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$100(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$100(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$200(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$300(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 252
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$300(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0, p1}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$202(Lcom/dodonew/online/ui/PlayVideoActivity;Landroid/view/View;)Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;->this$0:Lcom/dodonew/online/ui/PlayVideoActivity;

    invoke-static {v0, p2}, Lcom/dodonew/online/ui/PlayVideoActivity;->access$402(Lcom/dodonew/online/ui/PlayVideoActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method
