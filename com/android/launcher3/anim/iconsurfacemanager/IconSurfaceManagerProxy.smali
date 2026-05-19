.class public final Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

.field private static final INVALID_ANIM_ID:I = -0x2

.field private static final INVALID_SURFACE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "IconSurfaceManagerProxy"


# instance fields
.field private final iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-direct {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    return-void
.end method

.method private final isAppClone(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_d

    :cond_c
    move-object p0, v0

    :goto_d
    if-eqz p0, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p0, :cond_19

    iget p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_19
    const/4 p0, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_25

    const/4 p0, 0x1

    :cond_25
    return p0
.end method

.method private final isAppWidget(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_b

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    const/4 p1, 0x0

    if-eqz p0, :cond_15

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_15

    const/4 p1, 0x1

    :cond_15
    return p1
.end method

.method private final isDeepShortCutView(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_17

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p0, v0, :cond_17

    move p0, v0

    goto :goto_18

    :cond_17
    move p0, v2

    :goto_18
    if-nez p0, :cond_33

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_25

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_25
    if-eqz v1, :cond_2e

    iget p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_2e

    move p0, v0

    goto :goto_2f

    :cond_2e
    move p0, v2

    :goto_2f
    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    :cond_33
    :goto_33
    return v0
.end method

.method private final isDeepShortcutViewGroup(Landroid/view/View;)Z
    .registers 2

    instance-of p0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    return p0
.end method

.method private final isHotSeatExpand(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_b

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    const/4 p1, 0x0

    if-eqz p0, :cond_16

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xca

    if-ne p0, v0, :cond_16

    const/4 p1, 0x1

    :cond_16
    return p1
.end method

.method private final isSystemShortcut(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/popup/SystemShortcut;

    return p0
.end method

.method private final isTabletCardView(Landroid/view/View;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_c

    instance-of p0, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private final isUSCard(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_d

    :cond_c
    move-object p0, v0

    :goto_d
    if-eqz p0, :cond_15

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_15
    const/4 p0, 0x3

    if-nez v0, :cond_19

    goto :goto_1f

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p0, :cond_2c

    :goto_1f
    const/4 p0, 0x2

    if-nez v0, :cond_23

    goto :goto_2a

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_2a

    goto :goto_2c

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public endWindowAnim(Landroid/view/View;ZZI)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->endWindowAnim(Landroid/view/View;ZZI)V

    return-void
.end method

.method public forceReleaseIconSurface()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->forceReleaseIconSurface(Z)V

    return-void
.end method

.method public forceReleaseIconSurface(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseIconSurface(Z)V

    return-void
.end method

.method public forceReleaseIconSurfaceSafely(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseIconSurfaceSafely(Landroid/view/View;)V

    return-void
.end method

.method public forceReleaseLastIconSurfaceSafely(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseLastIconSurfaceSafely(Landroid/view/View;)V

    return-void
.end method

.method public getCurrentRunningAnim(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isViewSupportAsync(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, -0x2

    goto :goto_e

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentRunningAnim()I

    move-result p0

    :goto_e
    return p0
.end method

.method public getCurrentSurfaceId(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isViewSupportAsync(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, -0x1

    goto :goto_e

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result p0

    :goto_e
    return p0
.end method

.method public getIconSurfaceIfPossible(Landroid/view/View;Landroid/view/SurfaceView;ZZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;ZZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object p0

    return-object p0
.end method

.method public getLauncherCardBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    instance-of v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_19

    :cond_18
    move-object v0, p0

    :goto_19
    if-eqz v0, :cond_22

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, p0

    :goto_23
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v2, :cond_2e

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_2f

    :cond_2e
    move-object v1, p0

    :goto_2f
    if-eqz v1, :cond_38

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_39

    :cond_38
    move-object v1, p0

    :goto_39
    const/4 v2, 0x3

    if-nez v0, :cond_3d

    goto :goto_43

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_5e

    :goto_43
    const/4 v2, 0x2

    if-nez v0, :cond_47

    goto :goto_4e

    :cond_47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4e

    goto :goto_5e

    :cond_4e
    :goto_4e
    instance-of v0, p1, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v0, :cond_55

    check-cast p1, Lcom/android/launcher3/card/CommonCardView;

    goto :goto_56

    :cond_55
    move-object p1, p0

    :goto_56
    if-eqz p1, :cond_5d

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Lcom/android/launcher3/card/CommonCardView;->getViewScreenshot(ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_5d
    return-object p0

    :cond_5e
    :goto_5e
    const/16 v0, 0x64

    if-nez v1, :cond_63

    goto :goto_6a

    :cond_63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6a

    return-object p0

    :cond_6a
    :goto_6a
    instance-of v0, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_c4

    instance-of p0, p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    const/4 v0, 0x1

    if-eqz p0, :cond_82

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v1, v0, :cond_8c

    :goto_80
    move v1, v0

    goto :goto_8c

    :cond_82
    move-object v1, p1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v1

    if-ge v1, v0, :cond_8c

    goto :goto_80

    :cond_8c
    :goto_8c
    if-eqz p0, :cond_9e

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v2, v0, :cond_9c

    goto :goto_a7

    :cond_9c
    move v0, v2

    goto :goto_a7

    :cond_9e
    move-object v2, p1

    check-cast v2, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v2

    if-ge v2, v0, :cond_9c

    :goto_a7
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p0, :cond_be

    check-cast p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c3

    :cond_be
    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    :goto_c3
    return-object v0

    :cond_c4
    return-object p0
.end method

.method public getViewId(Landroid/view/View;)I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public hideIconSurface()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideIconSurface()V

    return-void
.end method

.method public isAllAppsIcon(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isAllAppsIcon(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isAnimRunning(Landroid/view/View;Z)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isViewSupportAsync(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isAnimRunning(Z)Z

    move-result p0

    :goto_e
    return p0
.end method

.method public isClickedViewSeedlingCard(Landroid/view/View;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    :cond_f
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    :cond_15
    instance-of p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p1, :cond_1b

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentIconSurfaceValid(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isIconSurfaceValid()Z

    move-result p0

    return p0
.end method

.method public isIconSurfaceAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isIconSurfaceAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isViewAnimRunning(Landroid/view/View;Z)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isViewAnimRunning(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public isViewInterruptEnable(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isViewInterruptEnable(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isViewSupportAsync(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    sget-object v1, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->supportAsyncTransition()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isDeepShortCutView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isUSCard(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isAppClone(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isHotSeatExpand(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isSystemShortcut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isDeepShortcutViewGroup(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isTabletCardView(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_36

    const/4 v0, 0x1

    :cond_36
    return v0
.end method

.method public releaseIconSurface(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/View;)V

    return-void
.end method

.method public releaseLastIconSurface(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseLastIconSurface(Landroid/view/View;)V

    return-void
.end method

.method public reparentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->reparentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setLastClickedViewId(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->setLastClickedViewId(Landroid/view/View;)V

    return-void
.end method

.method public setRemoteInterrupt(Landroid/view/View;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interruptWindowAnim(Landroid/view/View;Z)V

    return-void
.end method

.method public startWindowAnim(Landroid/view/View;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->startWindowAnim(Landroid/view/View;Z)V

    return-void
.end method

.method public transferViewToSurface(Landroid/view/View;Landroid/view/View;Landroid/view/ViewRootImpl;Landroid/view/SurfaceView;Ljava/lang/String;IILcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
    .registers 25

    const-string/jumbo v0, "name"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawableSize"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->transferViewToSurface(Landroid/view/View;Landroid/view/View;Landroid/view/ViewRootImpl;Landroid/view/SurfaceView;Ljava/lang/String;IILcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v0

    return-object v0
.end method

.method public trySetIconSurfaceProp(Landroid/view/View;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;)V
    .registers 6

    const-string/jumbo v0, "sc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transaction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconSurfaceParam"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->trySetIconSurfaceProp(Landroid/view/View;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;)V

    return-void
.end method
