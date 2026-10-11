.class public Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "BasicWelcomeFragment.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;


# static fields
.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_DESCRIPTION_TYPEFACE_PATH:Ljava/lang/String; = "description_typeface"

.field public static final KEY_DRAWABLE_ID:Ljava/lang/String; = "drawable_id"

.field public static final KEY_HEADER_TYPEFACE_PATH:Ljava/lang/String; = "header_typeface"

.field public static final KEY_SHOW_ANIM:Ljava/lang/String; = "show_anim"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private descriptionView:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private showParallaxAnim:Z

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->imageView:Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->titleView:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->showParallaxAnim:Z

    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;
    .locals 3
    .param p0, "drawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "showParallaxAnim"    # Z
    .param p4, "headerTypefacePath"    # Ljava/lang/String;
    .param p5, "descriptionTypefacePath"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "drawable_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "description"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "show_anim"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    const-string v2, "header_typeface"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "description_typeface"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;

    invoke-direct {v1}, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;-><init>()V

    .line 46
    .local v1, "fragment":Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;
    invoke-virtual {v1, v0}, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
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
    .line 53
    sget v2, Lcom/stephentuso/welcome/R$layout;->fragment_basic:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    sget v2, Lcom/stephentuso/welcome/R$id;->image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->imageView:Landroid/widget/ImageView;

    .line 58
    sget v2, Lcom/stephentuso/welcome/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->titleView:Landroid/widget/TextView;

    .line 59
    sget v2, Lcom/stephentuso/welcome/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    .line 61
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-object v1

    .line 64
    :cond_0
    const-string v2, "show_anim"

    iget-boolean v3, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->showParallaxAnim:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->showParallaxAnim:Z

    .line 66
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->imageView:Landroid/widget/ImageView;

    const-string v3, "drawable_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->titleView:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_1
    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    const-string v3, "description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->titleView:Landroid/widget/TextView;

    const-string v3, "header_typeface"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/stephentuso/welcome/util/WelcomeUtils;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->descriptionView:Landroid/widget/TextView;

    const-string v3, "description_typeface"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/stephentuso/welcome/util/WelcomeUtils;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onWelcomeScreenPageScrollStateChanged(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "state"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onWelcomeScreenPageScrolled(IFI)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->showParallaxAnim:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/fragments/BasicWelcomeFragment;->imageView:Landroid/widget/ImageView;

    neg-int v1, p3

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 85
    :cond_0
    return-void
.end method

.method public onWelcomeScreenPageSelected(II)V
    .locals 0
    .param p1, "pageIndex"    # I
    .param p2, "selectedPageIndex"    # I

    .prologue
    .line 90
    return-void
.end method
