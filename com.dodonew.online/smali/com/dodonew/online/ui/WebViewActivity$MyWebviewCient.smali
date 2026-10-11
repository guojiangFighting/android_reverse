.class public Lcom/dodonew/online/ui/WebViewActivity$MyWebviewCient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebviewCient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/ui/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/WebViewActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dodonew/online/ui/WebViewActivity$MyWebviewCient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity$MyWebviewCient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/WebViewActivity;->access$100(Lcom/dodonew/online/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity$MyWebviewCient;->this$0:Lcom/dodonew/online/ui/WebViewActivity;

    invoke-static {v0, p2}, Lcom/dodonew/online/ui/WebViewActivity;->access$002(Lcom/dodonew/online/ui/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 143
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 154
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 155
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
