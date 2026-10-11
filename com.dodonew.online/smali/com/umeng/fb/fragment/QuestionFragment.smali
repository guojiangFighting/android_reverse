.class public Lcom/umeng/fb/fragment/QuestionFragment;
.super Landroid/support/v4/app/Fragment;
.source "QuestionFragment.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 20
    const-class v0, Lcom/umeng/fb/fragment/QuestionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->a:Ljava/lang/String;

    .line 21
    const-string v0, "http://fb.umeng.com/feedback_sdk_webview/questions.html?appkey="

    iput-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->b:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/umeng/fb/fragment/QuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->c:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://fb.umeng.com/feedback_sdk_webview/questions.html?appkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/fb/fragment/QuestionFragment;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/fb/util/b;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->e:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/res/f;->n(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    iget-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/res/e;->D(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->d:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/umeng/fb/fragment/QuestionFragment;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/umeng/fb/fragment/QuestionFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 37
    return-void
.end method
