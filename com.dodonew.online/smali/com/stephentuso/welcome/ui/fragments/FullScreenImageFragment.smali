.class public Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;
.super Landroid/support/v4/app/Fragment;
.source "FullScreenImageFragment.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;


# static fields
.field public static final KEY_END_FACTOR:Ljava/lang/String; = "end_factor"

.field public static final KEY_LAYOUT_ID:Ljava/lang/String; = "drawable_id"

.field public static final KEY_PARALLAX_RECURSIVE:Ljava/lang/String; = "parallax_recursive"

.field public static final KEY_START_FACTOR:Ljava/lang/String; = "start_factor"


# instance fields
.field private endFactor:F

.field private frameLayout:Landroid/widget/FrameLayout;

.field private imageView:Landroid/widget/ImageView;

.field private parallaxInterval:F

.field private parallaxRecursive:Z

.field private startFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 31
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->startFactor:F

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->endFactor:F

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxInterval:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxRecursive:Z

    return-void
.end method

.method public static newInstance(IFFZ)Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;
    .locals 3
    .param p0, "layoutId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1, "startParallaxFactor"    # F
    .param p2, "endParallaxFactor"    # F
    .param p3, "parallaxRecursive"    # Z

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "drawable_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "start_factor"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 41
    const-string v2, "end_factor"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 42
    const-string v2, "parallax_recursive"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    new-instance v1, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;

    invoke-direct {v1}, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;-><init>()V

    .line 44
    .local v1, "fragment":Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;
    invoke-virtual {v1, v0}, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
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
    .line 51
    sget v2, Lcom/stephentuso/welcome/R$layout;->fragment_parallax_full_image_screen:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    sget v2, Lcom/stephentuso/welcome/R$id;->parallax_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 56
    sget v2, Lcom/stephentuso/welcome/R$id;->parallax_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->imageView:Landroid/widget/ImageView;

    .line 57
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const-string v2, "start_factor"

    iget v3, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->startFactor:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->startFactor:F

    .line 60
    const-string v2, "end_factor"

    iget v3, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->endFactor:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->endFactor:F

    .line 61
    const-string v2, "parallax_recursive"

    iget-boolean v3, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxRecursive:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxRecursive:Z

    .line 62
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->imageView:Landroid/widget/ImageView;

    const-string v3, "drawable_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 69
    iget v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->endFactor:F

    iget v1, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->startFactor:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxRecursive:Z

    invoke-static {v1, v2}, Lcom/stephentuso/welcome/util/WelcomeUtils;->calculateParallaxLayers(Landroid/view/View;Z)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxInterval:F

    .line 70
    return-void
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
    .locals 4
    .param p1, "pageIndex"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxRecursive:Z

    iget v2, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->startFactor:F

    iget v3, p0, Lcom/stephentuso/welcome/ui/fragments/FullScreenImageFragment;->parallaxInterval:F

    invoke-static {v0, v1, p3, v2, v3}, Lcom/stephentuso/welcome/util/WelcomeUtils;->applyParallaxEffect(Landroid/view/View;ZIFF)V

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
