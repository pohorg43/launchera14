.class public Lcom/android/launcher3/icons/LauncherIcons;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final EXTRA_BADGEPKG:Ljava/lang/String; = "badge_package"

.field private static final TAG:Ljava/lang/String; = "LauncherIcons"

.field private static sPool:Lcom/android/launcher3/icons/LauncherIcons;

.field private static sPoolId:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private final mPoolId:I

.field private next:Lcom/android/launcher3/icons/LauncherIcons;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 6

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/IconShape;->enableShapeDetection()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    iput p4, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/Canvas;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/LauncherIcons;->lambda$createShortcutIcon$0(Landroid/graphics/Bitmap;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/LauncherIcons;->lambda$makeAppIconAndBadgeTogether$1(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static clearPool()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getBadgePackage(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    const v0, 0x7f120546

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "badge_package"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createShortcutIcon$0(Landroid/graphics/Bitmap;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/Canvas;)V
    .registers 6

    if-eqz p1, :cond_c

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_c
    iget-object p1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$makeAppIconAndBadgeTogether$1(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .registers 6

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_8
    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;
    .registers 5

    instance-of v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->newLauncherIcons(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    return-object p0

    :cond_c
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    if-eqz v1, :cond_1c

    iget-object p0, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    sput-object p0, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    monitor-exit v0

    return-object v1

    :cond_1c
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_31

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v2, Lcom/android/launcher3/icons/LauncherIcons;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/launcher3/icons/LauncherIcons;-><init>(Landroid/content/Context;III)V

    return-object v2

    :catchall_31
    move-exception p0

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    return-void
.end method

.method public createAppIconBitmap(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;Lcom/android/launcher3/icons/IconCache;I)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    const-string v5, "for those apps has Themed icon by themself"

    const-string/jumbo v6, "when ux and app don\'t support themed icon both,we use origin icon"

    const-string v7, "for case ux recreate a themed icon"

    const-string v8, " ms. drawable = "

    const-string v9, "[cost]createAppIconBitmap.getIcon: "

    const-string v10, ", info = "

    const-string v11, "Icon"

    const-string v12, "LauncherIcons"

    :try_start_19
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v13
    :try_end_21
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_19 .. :try_end_21} :catch_22

    goto :goto_39

    :catch_22
    move-exception v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getStyleIconSize(), getUxIconConfig e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    :goto_39
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v13

    iget-object v0, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_53
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/oplus/util/PackageCacheUtils;->getActivityInfoWithMeta(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/oplus/util/PackageCacheUtils;->loadIcon(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_d1
    .catchall {:try_start_53 .. :try_end_5f} :catchall_ce

    iget-boolean v4, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v4, :cond_98

    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v4, :cond_98

    iget-object v4, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v4

    if-nez v4, :cond_98

    instance-of v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_84

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_84

    invoke-static {v11, v12, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_84
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->getIconThemeDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_94

    invoke-static {v11, v12, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v17

    goto :goto_a1

    :cond_94
    invoke-static {v11, v12, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_98
    move/from16 v16, v17

    :goto_9a
    const/4 v4, 0x0

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v18

    :goto_a1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_ca

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v5, v14

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v12, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    move-object/from16 p3, v13

    goto/16 :goto_186

    :catchall_ce
    move-exception v0

    goto/16 :goto_241

    :catch_d1
    move-exception v0

    :try_start_d2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v13

    const-string v13, "createAppIconBitmap. exception: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "de.telekom.appstarter"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    iget-object v0, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->getDrawable(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_11b

    :cond_115
    iget v0, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-virtual {v3, v0}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_11b
    .catchall {:try_start_d2 .. :try_end_11b} :catchall_ce

    :goto_11b
    iget-boolean v4, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v4, :cond_154

    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v4, :cond_154

    iget-object v4, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v4

    if-nez v4, :cond_154

    instance-of v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_140

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_140

    invoke-static {v11, v12, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_156

    :cond_140
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->getIconThemeDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_150

    invoke-static {v11, v12, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v17

    goto :goto_15d

    :cond_150
    invoke-static {v11, v12, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15d

    :cond_154
    move/from16 v16, v17

    :goto_156
    const/4 v4, 0x0

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v18

    :goto_15d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_186

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v5, v14

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v12, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_186
    :goto_186
    if-eqz p3, :cond_196

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v5

    if-eqz v5, :cond_196

    if-eqz v0, :cond_196

    move-object/from16 v5, p3

    invoke-static {v2, v5, v0}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->getLocalSpecialDrawable(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_196
    sget-object v2, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v0, :cond_217

    sget-object v5, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    const/4 v5, 0x0

    move/from16 v6, p5

    invoke-static {v0, v6, v6}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_22b

    invoke-static {v7}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iget-boolean v7, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v7, :cond_22b

    sget-boolean v7, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v7, :cond_22b

    iget-object v7, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v7

    if-nez v7, :cond_22b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v17, :cond_1ca

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1e3

    :cond_1ca
    if-eqz v16, :cond_1cd

    goto :goto_1e3

    :cond_1cd
    const-string/jumbo v0, "unsupported themed mono! info="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    :goto_1e3
    if-eqz v4, :cond_1f5

    new-instance v0, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-direct {v0, v4}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXDesignScale()F

    move-result v4

    invoke-virtual {v1, v0, v4, v6}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V

    :cond_1f5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "[cost]createAppIconBitmap.convertThemeMono: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr v4, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, info = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22b

    :cond_217
    const-string v0, "bitmap is null! info = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22b
    :goto_22b
    new-instance v0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v0}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0

    :goto_241
    const/4 v4, 0x0

    iget-boolean v5, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v5, :cond_267

    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v5, :cond_267

    iget-object v1, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v1

    if-nez v1, :cond_267

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->getIconThemeDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_264

    invoke-static {v11, v12, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_267

    :cond_264
    invoke-static {v11, v12, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_267
    :goto_267
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_290

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v1, v14

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v12, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_290
    throw v0
.end method

.method public createShortcutIcon(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/common/util/IconUtils;->showBadgeForShortcutIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createShortcutIcon(Landroid/content/pm/ShortcutInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Z",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;)",
            "Lcom/android/launcher3/icons/BitmapInfo;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    if-eqz v0, :cond_1e

    const/4 p3, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_41

    :cond_1e
    if-eqz p3, :cond_37

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p3, :cond_37

    iget-object p3, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p3, :cond_37

    iget-object v0, p3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_37

    iget p0, p3, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0

    :cond_37
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_41
    invoke-static {p1}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz p3, :cond_60

    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapStyle(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5d

    new-instance p2, Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    invoke-direct {p2, p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p2

    :cond_5d
    sget-object p0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    return-object p0

    :cond_60
    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p3}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_88

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getMaxSizeInFoldScreen(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {p3, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_88

    :cond_82
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-static {p3, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_88
    :goto_88
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p2, :cond_94

    sget-object p2, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z

    move-result p2

    if-eqz p2, :cond_a1

    :cond_94
    if-eqz p3, :cond_a1

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    invoke-static {p3, p0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0

    :cond_a1
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/icons/LauncherIcons;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/icons/IconCache;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p1

    iget-object p2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget p2, p2, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    new-instance v1, Lcom/android/launcher/q0;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/launcher/q0;-><init>(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-static {v0, v0, v1}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/icons/IconCache;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 6

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/LauncherIcons;->getBadgePackage(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    if-nez v1, :cond_3b

    new-instance p0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-object p0

    :cond_3b
    new-instance p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    return-object p1
.end method

.method public getWhiteShadowLayer()Landroid/graphics/Bitmap;
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    goto :goto_26

    :cond_1b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07071f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_26
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v3, "IconSize"

    const-string v4, "isInSuperPowerMode()"

    invoke-static {v3, v1, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Icon"

    const-string v4, "LauncherIcons"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {v0, p0, v2}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->handleIconThemeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {p0, v1, v1}, Lcom/android/common/util/BitmapUtils;->drawable2BitmapForLargeDevice(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_75
    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {p0, v1, v1}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public makeAppIconAndBadgeTogether(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gtz v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1f

    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_23
    new-instance v2, Lcom/android/launcher/q0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher/q0;-><init>(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public recycle()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    iget v2, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    if-eq v1, v2, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    iput-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    sput-object p0, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method
