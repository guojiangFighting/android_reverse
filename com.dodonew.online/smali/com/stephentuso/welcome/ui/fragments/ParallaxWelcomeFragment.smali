.class public Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "ParallaxWelcomeFragment.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;


# static fields
.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_DESCRIPTION_TYPEFACE_PATH:Ljava/lang/String; = "description_typeface"

.field public static final KEY_END_FACTOR:Ljava/lang/String; = "end_factor"

.field public static final KEY_HEADER_TYPEFACE_PATH:Ljava/lang/String; = "header_typeface"

.field public static final KEY_LAYOUT_ID:Ljava/lang/String; = "drawable_id"

.field public static final KEY_PARALLAX_RECURSIVE:Ljava/lang/String; = "parallax_recursive"

.field public static final KEY_START_FACTOR:Ljava/lang/String; = "start_factor"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private descriptionView:Landroid/widget/TextView;

.field private endFactor:F

.field private frameLayout:Landroid/widget/FrameLayout;

.field private parallaxInterval:F

.field private parallaxRecursive:Z

.field private startFactor:F

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 33
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->titleView:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    .line 36
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->startFactor:F

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->endFactor:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxInterval:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxRecursive:Z

    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;FFZLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;
    .locals 3
    .param p0, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "startParallaxFactor"    # F
    .param p4, "endParallaxFactor"    # F
    .param p5, "parallaxRecursive"    # Z
    .param p6, "headerTypefacePath"    # Ljava/lang/String;
    .param p7, "descriptionTypefacePath"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "drawable_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "description"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "start_factor"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 48
    const-string v2, "end_factor"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 49
    const-string v2, "parallax_recursive"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v2, "header_typeface"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "description_typeface"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;

    invoke-direct {v1}, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;
    invoke-virtual {v1, v0}, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    sget v2, Lcom/stephentuso/welcome/R$layout;->fragment_parallax:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    sget v2, Lcom/stephentuso/welcome/R$id;->parallax_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 65
    sget v2, Lcom/stephentuso/welcome/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->titleView:Landroid/widget/TextView;

    .line 66
    sget v2, Lcom/stephentuso/welcome/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    .line 68
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-object v1

    .line 71
    :cond_0
    const-string v2, "start_factor"

    iget v3, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->startFactor:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->startFactor:F

    .line 72
    const-string v2, "end_factor"

    iget v3, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->endFactor:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->endFactor:F

    .line 73
    const-string v2, "parallax_recursive"

    iget-boolean v3, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxRecursive:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxRecursive:Z

    .line 75
    const-string v2, "drawable_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->titleView:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    const-string v3, "description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->titleView:Landroid/widget/TextView;

    const-string v3, "header_typeface"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/stephentuso/welcome/util/WelcomeUtils;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    const-string v3, "description_typeface"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/stephentuso/welcome/util/WelcomeUtils;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 92
    iget v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->endFactor:F

    iget v1, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->startFactor:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxRecursive:Z

    invoke-static {v1, v2}, Lcom/stephentuso/welcome/util/WelcomeUtils;->calculateParallaxLayers(Landroid/view/View;Z)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxInterval:F

    .line 93
    return-void
.end method

.method public onWelcomeScreenPageScrollStateChanged(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "state"    # I

    .prologue
    .line 110
    return-void
.end method

.method public onWelcomeScreenPageScrolled(IFI)V
    .locals 4
    .param p1, "pageIndex"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxRecursive:Z

    iget v2, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->startFactor:F

    iget v3, p0, Lcom/stephentuso/welcome/ui/fragments/ParallaxWelcomeFragment;->parallaxInterval:F

    invoke-static {v0, v1, p3, v2, v3}, Lcom/stephentuso/welcome/util/WelcomeUtils;->applyParallaxEffect(Landroid/view/View;ZIFF)V

    .line 100
    :cond_0
    return-void
.end method

.method public onWelcomeScreenPageSelected(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "selectedPageIndex"    # I

    .prologue
    .line 105
    return-void
.end method
