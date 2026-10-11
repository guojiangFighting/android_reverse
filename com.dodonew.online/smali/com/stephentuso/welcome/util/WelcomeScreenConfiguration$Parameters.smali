.class public Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;
.super Ljava/lang/Object;
.source "WelcomeScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field private mAnimateButtons:Z

.field private mBackButtonNavigatesPages:Z

.field private mBackButtonSkips:Z

.field private mCanSkip:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultBackgroundColor:Lcom/stephentuso/welcome/ui/BackgroundColor;

.field private mDoneButtonTypefacePath:Ljava/lang/String;

.field private mExitAnimationResId:I

.field private mPages:Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

.field private mShowActionBarBackButton:Z

.field private mShowNextButton:Z

.field private mShowPrevButton:Z

.field private mSkipButtonTypefacePath:Ljava/lang/String;

.field private mSwipeToDismiss:Z

.field private mThemeResId:I

.field private mUseCustomDoneButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    new-array v1, v2, [Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    invoke-direct {v0, v1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;-><init>([Lcom/stephentuso/welcome/ui/WelcomeScreenPage;)V

    iput-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mPages:Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    .line 156
    iput-boolean v3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mCanSkip:Z

    .line 157
    iput-boolean v3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mBackButtonSkips:Z

    .line 158
    iput-boolean v3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mBackButtonNavigatesPages:Z

    .line 161
    sget-object v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->DARK:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->access$1600(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;)I

    move-result v0

    iput v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mThemeResId:I

    .line 162
    iput-boolean v2, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mSwipeToDismiss:Z

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mExitAnimationResId:I

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mSkipButtonTypefacePath:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mDoneButtonTypefacePath:Ljava/lang/String;

    .line 166
    iput-boolean v3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mAnimateButtons:Z

    .line 167
    iput-boolean v2, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mUseCustomDoneButton:Z

    .line 168
    iput-boolean v3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowNextButton:Z

    .line 169
    iput-boolean v2, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowPrevButton:Z

    .line 170
    iput-boolean v2, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowActionBarBackButton:Z

    .line 173
    iput-object p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mContext:Landroid/content/Context;

    .line 174
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->setDefaultBackgroundColor(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mSwipeToDismiss:Z

    return v0
.end method

.method static synthetic access$002(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mSwipeToDismiss:Z

    return p1
.end method

.method static synthetic access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mPages:Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)I
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mExitAnimationResId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mAnimateButtons:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mUseCustomDoneButton:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowNextButton:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowPrevButton:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowActionBarBackButton:Z

    return v0
.end method

.method static synthetic access$200(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mBackButtonSkips:Z

    return v0
.end method

.method static synthetic access$400(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mBackButtonNavigatesPages:Z

    return v0
.end method

.method static synthetic access$500(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mSkipButtonTypefacePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mDoneButtonTypefacePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mCanSkip:Z

    return v0
.end method

.method static synthetic access$800(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)I
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 153
    iget v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mThemeResId:I

    return v0
.end method

.method private getColor(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/stephentuso/welcome/util/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stephentuso/welcome/R$bool;->isRtl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private setDefaultBackgroundColor(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    sget v2, Lcom/stephentuso/welcome/R$color;->default_background_color:I

    invoke-static {p1, v2}, Lcom/stephentuso/welcome/util/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 179
    .local v1, "standardBackgroundColor":I
    sget v2, Lcom/stephentuso/welcome/R$attr;->colorPrimary:I

    invoke-static {p1, v2, v1}, Lcom/stephentuso/welcome/util/ColorHelper;->resolveColorAttribute(Landroid/content/Context;II)I

    move-result v0

    .line 180
    .local v0, "defaultBackgroundColor":I
    if-ne v0, v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 181
    const v2, 0x1010433

    invoke-static {p1, v2, v0}, Lcom/stephentuso/welcome/util/ColorHelper;->resolveColorAttribute(Landroid/content/Context;II)I

    move-result v0

    .line 182
    :cond_0
    new-instance v2, Lcom/stephentuso/welcome/ui/BackgroundColor;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/stephentuso/welcome/ui/BackgroundColor;-><init>(Ljava/lang/Integer;I)V

    iput-object v2, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mDefaultBackgroundColor:Lcom/stephentuso/welcome/ui/BackgroundColor;

    .line 183
    return-void
.end method


# virtual methods
.method public add(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;I)V
    .locals 4
    .param p1, "fragmentHolder"    # Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 222
    new-instance v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    new-instance v1, Lcom/stephentuso/welcome/ui/BackgroundColor;

    invoke-direct {p0, p2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->getColor(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mDefaultBackgroundColor:Lcom/stephentuso/welcome/ui/BackgroundColor;

    invoke-virtual {v3}, Lcom/stephentuso/welcome/ui/BackgroundColor;->value()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/stephentuso/welcome/ui/BackgroundColor;-><init>(Ljava/lang/Integer;I)V

    invoke-direct {v0, p1, v1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;-><init>(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;Lcom/stephentuso/welcome/ui/BackgroundColor;)V

    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->addPage(Lcom/stephentuso/welcome/ui/WelcomeScreenPage;)V

    .line 223
    return-void
.end method

.method public addPage(Lcom/stephentuso/welcome/ui/WelcomeScreenPage;)V
    .locals 2
    .param p1, "page"    # Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mPages:Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->setIndex(I)V

    .line 231
    invoke-direct {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mPages:Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->add(ILjava/lang/Object;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mPages:Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAnimateButtons(Z)V
    .locals 0
    .param p1, "animateButtons"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mAnimateButtons:Z

    .line 248
    return-void
.end method

.method public setBackButtonNavigatesPages(Z)V
    .locals 0
    .param p1, "navigatesPages"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mBackButtonNavigatesPages:Z

    .line 219
    return-void
.end method

.method public setBackButtonSkips(Z)V
    .locals 0
    .param p1, "backSkips"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mBackButtonSkips:Z

    .line 215
    return-void
.end method

.method public setCanSkip(Z)V
    .locals 0
    .param p1, "canSkip"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mCanSkip:Z

    .line 211
    return-void
.end method

.method public setDefaultBackgroundColor(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 202
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/stephentuso/welcome/util/ColorHelper;->getColor(Landroid/content/Context;I)I

    .line 203
    return-void
.end method

.method public setDefaultBackgroundColor(Lcom/stephentuso/welcome/ui/BackgroundColor;)V
    .locals 0
    .param p1, "color"    # Lcom/stephentuso/welcome/ui/BackgroundColor;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mDefaultBackgroundColor:Lcom/stephentuso/welcome/ui/BackgroundColor;

    .line 207
    return-void
.end method

.method public setDoneButtonTypefacePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mDoneButtonTypefacePath:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setExitAnimation(I)V
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    .prologue
    .line 226
    iput p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mExitAnimationResId:I

    .line 227
    return-void
.end method

.method public setShowActionBarBAckButton(Z)V
    .locals 0
    .param p1, "showBackButton"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowActionBarBackButton:Z

    .line 264
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0
    .param p1, "showNextButton"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowNextButton:Z

    .line 256
    return-void
.end method

.method public setShowPrevButton(Z)V
    .locals 0
    .param p1, "showPrevButton"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mShowPrevButton:Z

    .line 260
    return-void
.end method

.method public setSkipButtonTypefacePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "typefacePath"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mSkipButtonTypefacePath:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setSwipeToDismiss(Z)V
    .locals 0
    .param p1, "swipe"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mSwipeToDismiss:Z

    .line 244
    return-void
.end method

.method public setTheme(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    .prologue
    .line 186
    invoke-static {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->access$1600(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;)I

    move-result v0

    iput v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mThemeResId:I

    .line 187
    return-void
.end method

.method public setThemeResId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mThemeResId:I

    .line 191
    return-void
.end method

.method public setUseCustomDoneButton(Z)V
    .locals 0
    .param p1, "useCustomDoneButton"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->mUseCustomDoneButton:Z

    .line 252
    return-void
.end method
