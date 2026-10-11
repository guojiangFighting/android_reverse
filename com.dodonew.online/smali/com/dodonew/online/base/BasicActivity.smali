.class public Lcom/dodonew/online/base/BasicActivity;
.super Lcom/dodonew/online/base/ProgressActivity;
.source "BasicActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/dodonew/online/base/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/base/BasicActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dodonew/online/base/ProgressActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/BasicActivity;->requestWindowFeature(I)Z

    .line 15
    invoke-super {p0, p1}, Lcom/dodonew/online/base/ProgressActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/dodonew/online/base/ProgressActivity;->setContentView(I)V

    .line 20
    return-void
.end method
