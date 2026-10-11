.class public Lcom/dodonew/online/widget/dialog/VoteDialog;
.super Landroid/app/DialogFragment;
.source "VoteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;
    }
.end annotation


# instance fields
.field private btnVote:Landroid/widget/Button;

.field private canChoose:Z

.field private df:Ljava/text/DecimalFormat;

.field private editText:Landroid/widget/EditText;

.field private isClick:Z

.field private list:[Ljava/lang/String;

.field private onVoteClickListener:Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;

.field private totalScore:Ljava/lang/String;

.field private tvGetScore:Landroid/widget/TextView;

.field private tvScore:Landroid/widget/TextView;

.field private voteScoreAdapter:Lcom/dodonew/online/adapter/VoteScoreAdapter;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10"

    aput-object v1, v0, v3

    const-string v1, "20"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "200"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->list:[Ljava/lang/String;

    .line 42
    iput-boolean v4, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->canChoose:Z

    .line 44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->df:Ljava/text/DecimalFormat;

    .line 46
    iput-boolean v3, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->isClick:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/dialog/VoteDialog;)Lcom/dodonew/online/adapter/VoteScoreAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->voteScoreAdapter:Lcom/dodonew/online/adapter/VoteScoreAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/dialog/VoteDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->btnVote:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/dialog/VoteDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->canChoose:Z

    return v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/widget/dialog/VoteDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->canChoose:Z

    return p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/dialog/VoteDialog;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/dialog/VoteDialog;->getCanGetScore(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/dialog/VoteDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->tvGetScore:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/dialog/VoteDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->checkInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/dodonew/online/widget/dialog/VoteDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->isClick:Z

    return p1
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/dialog/VoteDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/widget/dialog/VoteDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/VoteDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkInput()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 144
    const-string v0, ""

    .line 145
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->canChoose:Z

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->totalScore:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 147
    const-string v0, "\u5269\u4f59\u79ef\u5206\u4e0d\u8db3"

    .line 152
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const/4 v1, 0x1

    .line 157
    :goto_1
    return v1

    .line 150
    :cond_1
    const-string v0, "\u6295\u6ce8\u79ef\u5206\u4e0d\u80fd\u4e3a\u7a7a."

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getCanGetScore(Ljava/lang/String;)I
    .locals 6
    .param p1, "socre"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/ScoreCategory;->getPerOdds()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v0, v1, v2

    .line 99
    .local v0, "rate":F
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method private initEvent()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/dodonew/online/widget/dialog/VoteDialog$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/dialog/VoteDialog$1;-><init>(Lcom/dodonew/online/widget/dialog/VoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->list:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->btnVote:Landroid/widget/Button;

    new-instance v1, Lcom/dodonew/online/widget/dialog/VoteDialog$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/dialog/VoteDialog$2;-><init>(Lcom/dodonew/online/widget/dialog/VoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    const v0, 0x7f0d01ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->editText:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f0d01bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 86
    const v0, 0x7f0d01bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->tvGetScore:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0d01bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->tvScore:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0d01be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->btnVote:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->tvScore:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->totalScore:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->isClick:Z

    .line 94
    return-void
.end method

.method public static newInstance(Lcom/dodonew/online/bean/ScoreCategory;Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/VoteDialog;
    .locals 3
    .param p0, "scoreCategory"    # Lcom/dodonew/online/bean/ScoreCategory;
    .param p1, "totalScore"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/dodonew/online/widget/dialog/VoteDialog;

    invoke-direct {v1}, Lcom/dodonew/online/widget/dialog/VoteDialog;-><init>()V

    .line 54
    .local v1, "voteDialog":Lcom/dodonew/online/widget/dialog/VoteDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "scoreCategory"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    const-string v2, "totalScore"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->voteScoreAdapter:Lcom/dodonew/online/adapter/VoteScoreAdapter;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/dodonew/online/adapter/VoteScoreAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->list:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/VoteScoreAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->voteScoreAdapter:Lcom/dodonew/online/adapter/VoteScoreAdapter;

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->voteScoreAdapter:Lcom/dodonew/online/adapter/VoteScoreAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->voteScoreAdapter:Lcom/dodonew/online/adapter/VoteScoreAdapter;

    new-instance v1, Lcom/dodonew/online/widget/dialog/VoteDialog$3;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/dialog/VoteDialog$3;-><init>(Lcom/dodonew/online/widget/dialog/VoteDialog;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->voteScoreAdapter:Lcom/dodonew/online/adapter/VoteScoreAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/VoteScoreAdapter;->notifyDataSetChanged()V

    .line 173
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "scoreCategory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/ScoreCategory;

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;

    .line 67
    const-string v1, "totalScore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->totalScore:Ljava/lang/String;

    .line 69
    :cond_0
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
    .line 74
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 76
    const v1, 0x7f030081

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->initView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->initEvent()V

    .line 79
    invoke-direct {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->setAdapter()V

    .line 80
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->onVoteClickListener:Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->onVoteClickListener:Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->isClick:Z

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;->vote(Ljava/lang/String;Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public setData(Lcom/dodonew/online/bean/ScoreCategory;Ljava/lang/String;)V
    .locals 0
    .param p1, "scoreCategory"    # Lcom/dodonew/online/bean/ScoreCategory;
    .param p2, "totalScore"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->scoreCategory:Lcom/dodonew/online/bean/ScoreCategory;

    .line 177
    iput-object p2, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->totalScore:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Lcom/dodonew/online/widget/dialog/VoteDialog;->setAdapter()V

    .line 179
    return-void
.end method

.method public setOnVoteClickListener(Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;)V
    .locals 0
    .param p1, "onVoteClickListener"    # Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/VoteDialog;->onVoteClickListener:Lcom/dodonew/online/widget/dialog/VoteDialog$OnVoteClickListener;

    .line 183
    return-void
.end method
