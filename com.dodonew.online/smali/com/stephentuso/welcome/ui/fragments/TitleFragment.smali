.class public Lcom/stephentuso/welcome/ui/fragments/TitleFragment;
.super Landroid/support/v4/app/Fragment;
.source "TitleFragment.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;


# static fields
.field private static final ARG_DRAWABLE_ID:Ljava/lang/String; = "drawable_id"

.field private static final ARG_SHOW_ANIM:Ljava/lang/String; = "show_anim"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field private static final ARG_TYPEFACE_PATH:Ljava/lang/String; = "typeface_path"


# instance fields
.field private drawableId:I

.field private imageView:Landroid/widget/ImageView;

.field private showParallaxAnim:Z

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->title:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->showParallaxAnim:Z

    .line 33
    iput-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->titleView:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->imageView:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method public static newInstance(ILjava/lang/String;ZLjava/lang/String;)Lcom/stephentuso/welcome/ui/fragments/TitleFragment;
    .locals 3
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showParallaxAnim"    # Z
    .param p3, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v1, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;

    invoke-direct {v1}, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;-><init>()V

    .line 45
    .local v1, "fragment":Lcom/stephentuso/welcome/ui/fragments/TitleFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "drawable_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "show_anim"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    const-string v2, "typeface_path"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    sget v1, Lcom/stephentuso/welcome/R$layout;->fragment_title:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/stephentuso/welcome/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->imageView:Landroid/widget/ImageView;

    .line 62
    sget v1, Lcom/stephentuso/welcome/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->titleView:Landroid/widget/TextView;

    .line 63
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v1, "drawable_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->drawableId:I

    .line 76
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->title:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->drawableId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v1, "show_anim"

    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->showParallaxAnim:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->showParallaxAnim:Z

    .line 81
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->titleView:Landroid/widget/TextView;

    const-string v2, "typeface_path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/stephentuso/welcome/util/WelcomeUtils;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onWelcomeScreenPageScrollStateChanged(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "state"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onWelcomeScreenPageScrolled(IFI)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->showParallaxAnim:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/TitleFragment;->imageView:Landroid/widget/ImageView;

    neg-int v1, p3

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 89
    :cond_0
    return-void
.end method

.method public onWelcomeScreenPageSelected(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "selectedPageIndex"    # I

    .prologue
    .line 94
    return-void
.end method
