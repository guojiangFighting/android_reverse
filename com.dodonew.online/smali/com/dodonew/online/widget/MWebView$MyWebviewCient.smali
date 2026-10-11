.class public Lcom/dodonew/online/widget/MWebView$MyWebviewCient;
.super Landroid/webkit/WebViewClient;
.source "MWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/MWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebviewCient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/MWebView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/MWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/MWebView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/dodonew/online/widget/MWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/MWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/MWebView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/MWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/MWebView;

    iget-object v0, v0, Lcom/dodonew/online/widget/MWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/MWebView;

    iget-object v0, v0, Lcom/dodonew/online/widget/MWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;

    invoke-interface {v0}, Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;->loadFinish()V

    .line 121
    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 127
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
