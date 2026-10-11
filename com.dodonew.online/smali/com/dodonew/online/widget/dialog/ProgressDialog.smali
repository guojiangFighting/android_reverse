.class public Lcom/dodonew/online/widget/dialog/ProgressDialog;
.super Landroid/app/DialogFragment;
.source "ProgressDialog.java"


# instance fields
.field private circleProgressBar:Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

.field private isShowArrow:Z

.field private isShowProgressBg:Z

.field private progressBg:I

.field private progressSize:I

.field private progressStokeWidth:I

.field private progressTextColor:I

.field private progressValue:I

.field private progressValueMax:I

.field private progress_colors:[I

.field private textType:I

.field private waveColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/dodonew/online/widget/dialog/ProgressDialog;->progressStokeWidth:I

    .line 27
    iput v1, p0, Lcom/dodonew/online/widget/dialog/ProgressDialog;->progressValue:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/dodonew/online/widget/dialog/ProgressDialog;->progressValueMax:I

    .line 28
    iput v1, p0, Lcom/dodonew/online/widget/dialog/ProgressDialog;->textType:I

    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/widget/dialog/ProgressDialog;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/dodonew/online/widget/dialog/ProgressDialog;

    invoke-direct {v0}, Lcom/dodonew/online/widget/dialog/ProgressDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/ProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/ProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const v1, 0x7f0300cd

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method
