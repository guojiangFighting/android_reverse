.class public Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;
.super Landroid/webkit/WebViewClient;
.source "BaseWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/BaseWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebviewCient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/BaseWebView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/BaseWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/BaseWebView;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    iget-object v0, v0, Lcom/dodonew/online/widget/BaseWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;->this$0:Lcom/dodonew/online/widget/BaseWebView;

    iget-object v0, v0, Lcom/dodonew/online/widget/BaseWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;

    invoke-interface {v0}, Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;->loadFinish()V

    .line 138
    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 144
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    return v0
.end method
