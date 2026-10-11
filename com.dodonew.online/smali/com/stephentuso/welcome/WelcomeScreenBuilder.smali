.class public Lcom/stephentuso/welcome/WelcomeScreenBuilder;
.super Ljava/lang/Object;
.source "WelcomeScreenBuilder.java"


# instance fields
.field private defaultDescriptionTypefacePath:Ljava/lang/String;

.field private defaultHeaderTypefacePath:Ljava/lang/String;

.field private defaultTitleTypefacePath:Ljava/lang/String;

.field private mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultTitleTypefacePath:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultHeaderTypefacePath:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultDescriptionTypefacePath:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-direct {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .line 36
    return-void
.end method


# virtual methods
.method public ImagePage(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 336
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->ImagePage(IIZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ImagePage(II)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->ImagePage(IIZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ImagePage(IIZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "showParallaxAnim"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    new-instance v1, Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/stephentuso/welcome/WelcomeScreenBuilder$3;-><init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;IZ)V

    invoke-virtual {v0, v1, p2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V

    .line 394
    return-object p0
.end method

.method public animateButtons(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "animateButtons"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setAnimateButtons(Z)V

    .line 92
    return-object p0
.end method

.method public backButtonNavigatesPages(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "navigatesPages"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setBackButtonNavigatesPages(Z)V

    .line 81
    return-object p0
.end method

.method public backButtonSkips(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "backButtonSkips"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setBackButtonSkips(Z)V

    .line 70
    return-object p0
.end method

.method public basicPage(ILjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "drawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->basicPage(ILjava/lang/String;Ljava/lang/String;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public basicPage(ILjava/lang/String;Ljava/lang/String;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 6
    .param p1, "drawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 280
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->basicPage(ILjava/lang/String;Ljava/lang/String;IZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public basicPage(ILjava/lang/String;Ljava/lang/String;IZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 8
    .param p1, "drawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p5, "showParallaxAnim"    # Z

    .prologue
    .line 294
    iget-object v6, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultHeaderTypefacePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultDescriptionTypefacePath:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->basicPage(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public basicPage(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 9
    .param p1, "drawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p5, "showParallaxAnim"    # Z
    .param p6, "headerTypefacePath"    # Ljava/lang/String;
    .param p7, "descriptionTypefacePath"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v8, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    new-instance v0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/stephentuso/welcome/WelcomeScreenBuilder$1;-><init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0, p4}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V

    .line 315
    return-object p0
.end method

.method public build()Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;
    .locals 2

    .prologue
    .line 562
    new-instance v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    iget-object v1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-direct {v0, v1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;-><init>(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)V

    return-object v0
.end method

.method public canSkip(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "canSkip"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setCanSkip(Z)V

    .line 58
    return-object p0
.end method

.method public defaultBackgroundColor(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 242
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setDefaultBackgroundColor(I)V

    .line 243
    return-object p0
.end method

.method public defaultBackgroundColor(Lcom/stephentuso/welcome/ui/BackgroundColor;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "backgroundColor"    # Lcom/stephentuso/welcome/ui/BackgroundColor;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setDefaultBackgroundColor(Lcom/stephentuso/welcome/ui/BackgroundColor;)V

    .line 255
    return-object p0
.end method

.method public defaultDescriptionTypefacePath(Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 0
    .param p1, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultDescriptionTypefacePath:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public defaultHeaderTypefacePath(Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 0
    .param p1, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultHeaderTypefacePath:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public defaultTitleTypefacePath(Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 0
    .param p1, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultTitleTypefacePath:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public doneButtonTypefacePath(Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setDoneButtonTypefacePath(Ljava/lang/String;)V

    .line 165
    return-object p0
.end method

.method public exitAnimation(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "exitAnimation"    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    .prologue
    .line 208
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setExitAnimation(I)V

    .line 209
    return-object p0
.end method

.method public fullScreenParallaxImagePage(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 486
    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->fullScreenParallaxImagePage(IIFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fullScreenParallaxImagePage(IIFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "startParallaxFactor"    # F
    .param p4, "endParallaxFactor"    # F

    .prologue
    .line 504
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    new-instance v1, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/stephentuso/welcome/WelcomeScreenBuilder$5;-><init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;IFF)V

    invoke-virtual {v0, v1, p2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V

    .line 510
    return-object p0
.end method

.method public fullScreenParallaxPage(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 482
    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->fullScreenParallaxPage(IIFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fullScreenParallaxPage(II)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 499
    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->fullScreenParallaxPage(IIFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fullScreenParallaxPage(IIFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "startParallaxFactor"    # F
    .param p4, "endParallaxFactor"    # F

    .prologue
    .line 526
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    new-instance v1, Lcom/stephentuso/welcome/WelcomeScreenBuilder$6;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/stephentuso/welcome/WelcomeScreenBuilder$6;-><init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;IFF)V

    invoke-virtual {v0, v1, p2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V

    .line 532
    return-object p0
.end method

.method public page(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "fragmentHolder"    # Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->page(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    .line 543
    return-object p0
.end method

.method public page(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "fragmentHolder"    # Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
    .param p2, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 554
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1, p2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V

    .line 555
    return-object p0
.end method

.method public parallaxPage(ILjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->parallaxPage(ILjava/lang/String;Ljava/lang/String;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public parallaxPage(ILjava/lang/String;Ljava/lang/String;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 7
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 423
    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->parallaxPage(ILjava/lang/String;Ljava/lang/String;IFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public parallaxPage(ILjava/lang/String;Ljava/lang/String;IFF)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 9
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p5, "startParallaxFactor"    # F
    .param p6, "endParallaxFactor"    # F

    .prologue
    .line 442
    iget-object v7, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultHeaderTypefacePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultDescriptionTypefacePath:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->parallaxPage(ILjava/lang/String;Ljava/lang/String;IFFLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public parallaxPage(ILjava/lang/String;Ljava/lang/String;IFFLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 10
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p5, "startParallaxFactor"    # F
    .param p6, "endParallaxFactor"    # F
    .param p7, "headerTypefacePath"    # Ljava/lang/String;
    .param p8, "descriptionTypefacePath"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v9, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    new-instance v0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/stephentuso/welcome/WelcomeScreenBuilder$4;-><init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;ILjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0, p4}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V

    .line 469
    return-object p0
.end method

.method public showActionBarBackButton(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "showBackButton"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setShowActionBarBAckButton(Z)V

    .line 143
    return-object p0
.end method

.method public showNextButton(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "showNextButton"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setShowNextButton(Z)V

    .line 116
    return-object p0
.end method

.method public showPrevButton(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "showPrevButton"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setShowPrevButton(Z)V

    .line 129
    return-object p0
.end method

.method public skipButtonTypefacePath(Ljava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setSkipButtonTypefacePath(Ljava/lang/String;)V

    .line 154
    return-object p0
.end method

.method public swipeToDismiss(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "swipeToDismiss"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setSwipeToDismiss(Z)V

    .line 46
    return-object p0
.end method

.method public theme(I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 230
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setThemeResId(I)V

    .line 231
    return-object p0
.end method

.method public theme(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "theme"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setTheme(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;)V

    .line 220
    return-object p0
.end method

.method public titlePage(ILjava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->titlePage(ILjava/lang/String;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public titlePage(ILjava/lang/String;I)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->titlePage(ILjava/lang/String;IZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public titlePage(ILjava/lang/String;IZ)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 6
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p4, "showParallaxAnim"    # Z

    .prologue
    .line 363
    iget-object v5, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->defaultTitleTypefacePath:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->titlePage(ILjava/lang/String;IZLjava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public titlePage(ILjava/lang/String;IZLjava/lang/String;)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 7
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p4, "showParallaxAnim"    # Z
    .param p5, "titleTypefacePath"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v6, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    new-instance v0, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/stephentuso/welcome/WelcomeScreenBuilder$2;-><init>(Lcom/stephentuso/welcome/WelcomeScreenBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v0, p3}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V

    .line 384
    return-object p0
.end method

.method public useCustomDoneButton(Z)Lcom/stephentuso/welcome/WelcomeScreenBuilder;
    .locals 1
    .param p1, "useCustomDoneButton"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/stephentuso/welcome/WelcomeScreenBuilder;->mConfigParams:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setUseCustomDoneButton(Z)V

    .line 105
    return-object p0
.end method
