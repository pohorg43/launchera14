.class public final Lcom/android/launcher3/hotseat/HotseatDividerView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private divider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0116

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/hotseat/HotseatDividerView;->divider:Landroid/view/View;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/hotseat/HotseatDividerView;->divider:Landroid/view/View;

    if-nez p1, :cond_1e

    goto :goto_25

    :cond_1e
    invoke-direct {p0}, Lcom/android/launcher3/hotseat/HotseatDividerView;->getDividerBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    :goto_25
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method private final getDividerBg()Landroid/graphics/drawable/Drawable;
    .registers 2

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0806a6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string/jumbo v0, "{\n            resources.…ght_wallpapaer)\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0806a7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string/jumbo v0, "{\n            resources.…ark_wallpapaer)\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2b
    return-object p0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const-string p0, "Hotseat_expand"

    const-string v0, "HotseatDividerView onDetachedFromWindow"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateDividerBg()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/hotseat/HotseatDividerView;->divider:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_c

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/hotseat/HotseatDividerView;->getDividerBg()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_c
    return-void
.end method
