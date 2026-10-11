.class public Lcom/dodonew/online/widget/MWebView$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/MWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyChromeClient"
.end annotation


# instance fields
.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mOriginalOrientation:I

.field final synthetic this$0:Lcom/dodonew/online/widget/MWebView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/MWebView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/widget/MWebView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->mOriginalOrientation:I

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$000(Lcom/dodonew/online/widget/MWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$100(Lcom/dodonew/online/widget/MWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$000(Lcom/dodonew/online/widget/MWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v1}, Lcom/dodonew/online/widget/MWebView;->access$100(Lcom/dodonew/online/widget/MWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/MWebView;->access$102(Lcom/dodonew/online/widget/MWebView;Landroid/view/View;)Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$000(Lcom/dodonew/online/widget/MWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$200(Lcom/dodonew/online/widget/MWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 171
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$000(Lcom/dodonew/online/widget/MWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$100(Lcom/dodonew/online/widget/MWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$000(Lcom/dodonew/online/widget/MWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 144
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/MWebView;->access$000(Lcom/dodonew/online/widget/MWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0, p1}, Lcom/dodonew/online/widget/MWebView;->access$102(Lcom/dodonew/online/widget/MWebView;Landroid/view/View;)Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-static {v0, p2}, Lcom/dodonew/online/widget/MWebView;->access$202(Lcom/dodonew/online/widget/MWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method
