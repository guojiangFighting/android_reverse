.class public Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BaseWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/BaseWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyChromeClient"
.end annotation


# instance fields
.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mOriginalOrientation:I

.field final synthetic this$0:Lcom/dodonew/online/widget/BaseWebView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/BaseWebView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/widget/BaseWebView;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->mOriginalOrientation:I

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$000(Lcom/dodonew/online/widget/BaseWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$100(Lcom/dodonew/online/widget/BaseWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$000(Lcom/dodonew/online/widget/BaseWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v1}, Lcom/dodonew/online/widget/BaseWebView;->access$100(Lcom/dodonew/online/widget/BaseWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/BaseWebView;->access$102(Lcom/dodonew/online/widget/BaseWebView;Landroid/view/View;)Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$000(Lcom/dodonew/online/widget/BaseWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$200(Lcom/dodonew/online/widget/BaseWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 188
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$300(Lcom/dodonew/online/widget/BaseWebView;)Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$300(Lcom/dodonew/online/widget/BaseWebView;)Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;->OnProgressChanged(I)V

    .line 191
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$000(Lcom/dodonew/online/widget/BaseWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$100(Lcom/dodonew/online/widget/BaseWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$000(Lcom/dodonew/online/widget/BaseWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0}, Lcom/dodonew/online/widget/BaseWebView;->access$000(Lcom/dodonew/online/widget/BaseWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0, p1}, Lcom/dodonew/online/widget/BaseWebView;->access$102(Lcom/dodonew/online/widget/BaseWebView;Landroid/view/View;)Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-static {v0, p2}, Lcom/dodonew/online/widget/BaseWebView;->access$202(Lcom/dodonew/online/widget/BaseWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method
