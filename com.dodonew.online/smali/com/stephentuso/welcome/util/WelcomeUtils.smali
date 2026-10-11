.class public Lcom/stephentuso/welcome/util/WelcomeUtils;
.super Ljava/lang/Object;
.source "WelcomeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyParallaxEffect(Landroid/view/View;ZIFF)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "recursive"    # Z
    .param p2, "offsetPixels"    # I
    .param p3, "startParallaxFactor"    # F
    .param p4, "parallaxInterval"    # F

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p2, p3, p4, v0}, Lcom/stephentuso/welcome/util/WelcomeUtils;->applyParallaxEffectRecursively(Landroid/view/View;IFFI)I

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/stephentuso/welcome/util/WelcomeUtils;->applyParallaxEffectToImmediateChildren(Landroid/view/View;IFF)V

    goto :goto_0
.end method

.method private static applyParallaxEffectRecursively(Landroid/view/View;IFFI)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offsetPixels"    # I
    .param p2, "startParallaxFactor"    # F
    .param p3, "parallaxInterval"    # F
    .param p4, "index"    # I

    .prologue
    .line 93
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 94
    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2, p3, p4}, Lcom/stephentuso/welcome/util/WelcomeUtils;->applyParallaxEffectRecursively(Landroid/view/View;IFFI)I

    move-result p4

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, p4, p1, p2, p3}, Lcom/stephentuso/welcome/util/WelcomeUtils;->translateViewForParallaxEffect(Landroid/view/View;IIFF)V

    .line 100
    add-int/lit8 p4, p4, 0x1

    .line 102
    :cond_1
    return p4
.end method

.method private static applyParallaxEffectToImmediateChildren(Landroid/view/View;IFF)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offsetPixels"    # I
    .param p2, "startParallaxFactor"    # F
    .param p3, "parallaxInterval"    # F

    .prologue
    .line 82
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 83
    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1, p1, p2, p3}, Lcom/stephentuso/welcome/util/WelcomeUtils;->translateViewForParallaxEffect(Landroid/view/View;IIFF)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p2, p3}, Lcom/stephentuso/welcome/util/WelcomeUtils;->translateViewForParallaxEffect(Landroid/view/View;IIFF)V

    .line 90
    :cond_1
    return-void
.end method

.method private static calculateParallaxLayers(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 46
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 47
    check-cast v0, Landroid/view/ViewGroup;

    .line 48
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 50
    .end local v0    # "group":Landroid/view/ViewGroup;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static calculateParallaxLayers(Landroid/view/View;Z)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "recursive"    # Z

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stephentuso/welcome/util/WelcomeUtils;->calculateParallaxLayersRecursively(Landroid/view/View;I)I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/stephentuso/welcome/util/WelcomeUtils;->calculateParallaxLayers(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private static calculateParallaxLayersRecursively(Landroid/view/View;I)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "count"    # I

    .prologue
    .line 54
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/stephentuso/welcome/util/WelcomeUtils;->calculateParallaxLayersRecursively(Landroid/view/View;I)I

    move-result p1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 62
    :cond_1
    return p1
.end method

.method private static calculateParallaxOffsetAmount(IIFF)F
    .locals 2
    .param p0, "index"    # I
    .param p1, "offsetPixels"    # I
    .param p2, "startParallaxFactor"    # F
    .param p3, "parallaxInterval"    # F

    .prologue
    .line 111
    int-to-float v0, p0

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    neg-int v1, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/stephentuso/welcome/ui/WelcomeActivity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/stephentuso/welcome/ui/WelcomeActivity;>;"
    const-string v2, ""

    .line 21
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    const-string v3, "welcomeKey"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-object v2

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typefacePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WelcomeScreen"

    const-string v2, "Error setting typeface"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static translateViewForParallaxEffect(Landroid/view/View;IIFF)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "index"    # I
    .param p2, "offsetPixels"    # I
    .param p3, "startParallaxFactor"    # F
    .param p4, "parallaxInterval"    # F

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 107
    invoke-static {p1, p2, p3, p4}, Lcom/stephentuso/welcome/util/WelcomeUtils;->calculateParallaxOffsetAmount(IIFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 108
    :cond_0
    return-void
.end method
