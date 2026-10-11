.class public Lcom/stephentuso/welcome/ui/fragments/ImageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageFragment.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;


# static fields
.field private static final ARG_DRAWABLE_ID:Ljava/lang/String; = "drawable_id"

.field private static final ARG_SHOW_ANIM:Ljava/lang/String; = "show_anim"


# instance fields
.field private drawableId:I

.field private imageView:Landroid/widget/ImageView;

.field private showParallaxAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->showParallaxAnim:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->imageView:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

.method public static newInstance(IZ)Lcom/stephentuso/welcome/ui/fragments/ImageFragment;
    .locals 3
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1, "showParallaxAnim"    # Z

    .prologue
    .line 39
    new-instance v1, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;

    invoke-direct {v1}, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;-><init>()V

    .line 40
    .local v1, "fragment":Lcom/stephentuso/welcome/ui/fragments/ImageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "drawable_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v2, "show_anim"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    sget v1, Lcom/stephentuso/welcome/R$layout;->fragment_image:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/stephentuso/welcome/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->imageView:Landroid/widget/ImageView;

    .line 55
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v1, "drawable_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->drawableId:I

    .line 68
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->drawableId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    const-string v1, "show_anim"

    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->showParallaxAnim:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->showParallaxAnim:Z

    goto :goto_0
.end method

.method public onWelcomeScreenPageScrollStateChanged(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "state"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onWelcomeScreenPageScrolled(IFI)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->showParallaxAnim:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/ImageFragment;->imageView:Landroid/widget/ImageView;

    neg-int v1, p3

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 77
    :cond_0
    return-void
.end method

.method public onWelcomeScreenPageSelected(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "selectedPageIndex"    # I

    .prologue
    .line 82
    return-void
.end method
