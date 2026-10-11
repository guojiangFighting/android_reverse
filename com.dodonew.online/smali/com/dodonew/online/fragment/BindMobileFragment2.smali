.class public Lcom/dodonew/online/fragment/BindMobileFragment2;
.super Landroid/support/v4/app/Fragment;
.source "BindMobileFragment2.java"


# instance fields
.field private etCode:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private mobile:Ljava/lang/String;

.field private onGetCodeListener:Lcom/dodonew/online/interfaces/OnGetCodeListener;

.field private operaType:Ljava/lang/String;

.field private timeCountUtil:Lcom/dodonew/online/util/TimeCountUtil;

.field private tvMobile:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/BindMobileFragment2;)Lcom/dodonew/online/util/TimeCountUtil;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/BindMobileFragment2;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->timeCountUtil:Lcom/dodonew/online/util/TimeCountUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/fragment/BindMobileFragment2;)Lcom/dodonew/online/interfaces/OnGetCodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/BindMobileFragment2;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->onGetCodeListener:Lcom/dodonew/online/interfaces/OnGetCodeListener;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/dodonew/online/fragment/BindMobileFragment2;
    .locals 3
    .param p0, "mobile"    # Ljava/lang/String;
    .param p1, "operaType"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Lcom/dodonew/online/fragment/BindMobileFragment2;

    invoke-direct {v1}, Lcom/dodonew/online/fragment/BindMobileFragment2;-><init>()V

    .line 33
    .local v1, "fragment":Lcom/dodonew/online/fragment/BindMobileFragment2;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "mobile"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "operaType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0}, Lcom/dodonew/online/fragment/BindMobileFragment2;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->etCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 83
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dodonew/online/interfaces/OnGetCodeListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->onGetCodeListener:Lcom/dodonew/online/interfaces/OnGetCodeListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnGetCodeListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/BindMobileFragment2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 45
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->mobile:Ljava/lang/String;

    .line 46
    const-string v1, "operaType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->operaType:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->tvMobile:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0d00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->etCode:Landroid/widget/EditText;

    .line 58
    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->etPwd:Landroid/widget/EditText;

    .line 59
    iget-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->operaType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->etPwd:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->tvMobile:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v1, 0x7f0d00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 64
    .local v3, "btnGetCode":Landroid/widget/Button;
    new-instance v1, Lcom/dodonew/online/fragment/BindMobileFragment2$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/BindMobileFragment2$1;-><init>(Lcom/dodonew/online/fragment/BindMobileFragment2;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v1, Lcom/dodonew/online/util/TimeCountUtil;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/BindMobileFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    invoke-direct/range {v1 .. v7}, Lcom/dodonew/online/util/TimeCountUtil;-><init>(Landroid/content/Context;Landroid/widget/Button;JJ)V

    iput-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->timeCountUtil:Lcom/dodonew/online/util/TimeCountUtil;

    .line 75
    iget-object v1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->timeCountUtil:Lcom/dodonew/online/util/TimeCountUtil;

    invoke-virtual {v1}, Lcom/dodonew/online/util/TimeCountUtil;->start()Landroid/os/CountDownTimer;

    .line 76
    return-object v0
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 1
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->tvMobile:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->mobile:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/fragment/BindMobileFragment2;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
