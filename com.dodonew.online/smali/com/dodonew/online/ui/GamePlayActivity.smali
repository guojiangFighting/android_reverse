.class public Lcom/dodonew/online/ui/GamePlayActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "GamePlayActivity.java"


# instance fields
.field private game:Lcom/dodonew/online/bean/Game;

.field private gameDataView:Lcom/dodonew/online/view/GameDataView;

.field private gameDetail:Lcom/dodonew/online/bean/GameDetail;

.field private headView:Lcom/dodonew/online/view/PlayHeadView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDataView:Lcom/dodonew/online/view/GameDataView;

    iget-object v1, p0, Lcom/dodonew/online/ui/GamePlayActivity;->game:Lcom/dodonew/online/bean/Game;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/GameDataView;->setGame(Lcom/dodonew/online/bean/Game;)V

    .line 67
    iget-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->headView:Lcom/dodonew/online/view/PlayHeadView;

    iget-object v1, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDetail:Lcom/dodonew/online/bean/GameDetail;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/GameDetail;->getChannel()Lcom/dodonew/online/bean/Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDetail:Lcom/dodonew/online/bean/GameDetail;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/GameDetail;->getViewers()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDetail:Lcom/dodonew/online/bean/GameDetail;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/GameDetail;->getPreview()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dodonew/online/view/PlayHeadView;->setChannel(Lcom/dodonew/online/bean/Channel;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/GamePlayActivity;->setNavigationIcon(I)V

    .line 54
    const v0, 0x7f0d022f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GamePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/view/PlayHeadView;

    iput-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->headView:Lcom/dodonew/online/view/PlayHeadView;

    .line 55
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GamePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/view/GameDataView;

    iput-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDataView:Lcom/dodonew/online/view/GameDataView;

    .line 56
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GamePlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gameDetail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/GameDetail;

    iput-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDetail:Lcom/dodonew/online/bean/GameDetail;

    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDetail:Lcom/dodonew/online/bean/GameDetail;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->gameDetail:Lcom/dodonew/online/bean/GameDetail;

    iget-object v0, v0, Lcom/dodonew/online/bean/GameDetail;->game:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Game;

    iput-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->game:Lcom/dodonew/online/bean/Game;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dodonew/online/ui/GamePlayActivity;->game:Lcom/dodonew/online/bean/Game;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Game;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u76f4\u64ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GamePlayActivity;->setTitle(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/ui/GamePlayActivity;->initData()V

    .line 63
    :cond_0
    return-void
.end method

.method private setOptionsOnClick()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/GamePlayActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/dodonew/online/ui/GamePlayActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/GamePlayActivity$1;-><init>(Lcom/dodonew/online/ui/GamePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GamePlayActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/dodonew/online/ui/GamePlayActivity;->initView()V

    .line 40
    invoke-direct {p0}, Lcom/dodonew/online/ui/GamePlayActivity;->setOptionsOnClick()V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GamePlayActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 88
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 81
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 76
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 77
    return-void
.end method
