.class public Lcom/dodonew/online/view/RaceView;
.super Landroid/widget/RelativeLayout;
.source "RaceView.java"


# instance fields
.field private centerView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private ivTeamA:Landroid/widget/ImageView;

.field private ivTeamB:Landroid/widget/ImageView;

.field private leftView:Landroid/view/View;

.field private rightView:Landroid/view/View;

.field private tvRaceScore:Landroid/widget/TextView;

.field private tvRaceState:Landroid/widget/TextView;

.field private tvRaceTitle:Landroid/widget/TextView;

.field private tvTeamAName:Landroid/widget/TextView;

.field private tvTeamBName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/RaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/view/RaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/RaceView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f0d0248

    const v2, 0x7f0d0247

    .line 41
    iput-object p1, p0, Lcom/dodonew/online/view/RaceView;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030057

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f0d015d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/RaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->leftView:Landroid/view/View;

    .line 44
    const v0, 0x7f0d015e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/RaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->centerView:Landroid/view/View;

    .line 45
    const v0, 0x7f0d015f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/RaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->rightView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/dodonew/online/view/RaceView;->leftView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->tvTeamAName:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/dodonew/online/view/RaceView;->leftView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->ivTeamA:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/RaceView;->rightView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->tvTeamBName:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/dodonew/online/view/RaceView;->rightView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->ivTeamB:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/dodonew/online/view/RaceView;->centerView:Landroid/view/View;

    const v1, 0x7f0d023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->tvRaceTitle:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/view/RaceView;->centerView:Landroid/view/View;

    const v1, 0x7f0d0240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->tvRaceScore:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/view/RaceView;->centerView:Landroid/view/View;

    const v1, 0x7f0d0241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/RaceView;->tvRaceState:Landroid/widget/TextView;

    .line 53
    return-void
.end method


# virtual methods
.method public setRace(Lcom/dodonew/online/bean/Race;)V
    .locals 7
    .param p1, "race"    # Lcom/dodonew/online/bean/Race;

    .prologue
    const v6, 0x7f0200d4

    .line 56
    iget-object v3, p0, Lcom/dodonew/online/view/RaceView;->tvTeamAName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, p0, Lcom/dodonew/online/view/RaceView;->tvTeamBName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, p0, Lcom/dodonew/online/view/RaceView;->tvRaceTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getRaceTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, p0, Lcom/dodonew/online/view/RaceView;->tvRaceScore:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getaScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getbScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getPlayTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 62
    .local v0, "playTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MM-dd HH:mm"

    invoke-static {v0, v1, v4}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u622a\u6b62"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "raceState":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/view/RaceView;->tvRaceState:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, p0, Lcom/dodonew/online/view/RaceView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getTeamA()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/RaceView;->ivTeamA:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 71
    iget-object v3, p0, Lcom/dodonew/online/view/RaceView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Race;->getTeamB()Lcom/dodonew/online/bean/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Team;->getTeamImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/RaceView;->ivTeamB:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 74
    return-void

    .line 65
    .end local v2    # "raceState":Ljava/lang/String;
    :cond_0
    const-string v2, "\u5df2\u622a\u6b62"

    .restart local v2    # "raceState":Ljava/lang/String;
    goto :goto_0
.end method
