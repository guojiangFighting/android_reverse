.class public Lcom/dodonew/online/widget/dialog/InformationDialog;
.super Landroid/app/DialogFragment;
.source "InformationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private isOk:Z

.field private message:Ljava/lang/String;

.field private onOkClickListener:Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;

.field private textView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->isOk:Z

    .line 31
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/InformationDialog;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v1, Lcom/dodonew/online/widget/dialog/InformationDialog;

    invoke-direct {v1}, Lcom/dodonew/online/widget/dialog/InformationDialog;-><init>()V

    .line 38
    .local v1, "informationDialog":Lcom/dodonew/online/widget/dialog/InformationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/dialog/InformationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 73
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->isOk:Z

    .line 74
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/InformationDialog;->dismiss()V

    goto :goto_0

    .line 77
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->isOk:Z

    .line 78
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/InformationDialog;->dismiss()V

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x7f0d00e0 -> :sswitch_0
        0x7f0d01b9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/InformationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->message:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/InformationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/InformationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const v0, 0x7f030080

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->view:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->view:Landroid/view/View;

    const v1, 0x7f0d01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->textView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->view:Landroid/view/View;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->btnCancel:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->view:Landroid/view/View;

    const v1, 0x7f0d01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->btnOk:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-boolean v2, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->isOk:Z

    .line 66
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->onOkClickListener:Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->onOkClickListener:Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;

    iget-boolean v1, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->isOk:Z

    invoke-interface {v0, v1}, Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;->onOk(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public setOnOkClickListener(Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;)V
    .locals 0
    .param p1, "onOkClickListener"    # Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/InformationDialog;->onOkClickListener:Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;

    .line 85
    return-void
.end method
