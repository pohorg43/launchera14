.class public final Lcom/oplus/quickstep/utils/OplusTaskUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskUtils.kt\ncom/oplus/quickstep/utils/OplusTaskUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1855#2,2:231\n1#3:233\n*S KotlinDebug\n*F\n+ 1 OplusTaskUtils.kt\ncom/oplus/quickstep/utils/OplusTaskUtils\n*L\n68#1:231,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CLICK_SLOP_TIME:J = 0xc8L

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

.field private static final TAG:Ljava/lang/String; = "OplusTaskUtils"

.field private static final WECHAT_APPLETS_CLASS_NAME:Ljava/lang/String; = "plugin.appbrand.ui.AppBrandUI"

.field private static final WECHAT_APPLETS_CLASS_NAME2:Ljava/lang/String; = "plugin.appbrand.ui.AppBrandUI2"

.field private static mCloneStr:Ljava/lang/String;

.field private static mLastClickTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertDpToPixel(Landroid/content/res/Resources;I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static final convertIconByTheme(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "OplusTaskUtils"

    const-string v2, "QuickStep"

    if-nez p0, :cond_12

    const-string p0, "convertIconByTheme(), ctx null."

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_12
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_53

    :cond_1b
    sget-object p2, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {p2}, Lcom/android/common/config/FeatureOption;->isSupportIconStyle()Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p2

    if-eqz p2, :cond_52

    const-string p2, "convertIconByTheme(), getUxIconDrawable"

    invoke-static {v2, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    invoke-static {p2, v0, v3, p0}, Lcom/oplus/compat/content/pm/PackageManagerNative;->getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_52

    const-string p1, "convertIconByTheme(), getUxIconDrawable, success."

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p1, p0}, Lcom/android/common/util/BitmapUtils;->convertByDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_52
    return-object p1

    :cond_53
    :goto_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertIconByTheme(), src invalid: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", task="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final convertIconByThemeSafely(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertIconByTheme(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_2f

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertIconByTheme(), e="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusTaskUtils"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_2f
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final getDockIconSize(Landroid/content/res/Resources;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f070d9b

    goto :goto_12

    :cond_f
    const v0, 0x7f070d9a

    :goto_12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static final getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v1, "OplusTaskUtils"

    const-string v2, "QuickStep"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTitle(), label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_36

    move v5, v4

    goto :goto_37

    :cond_36
    move v5, v3

    :goto_37
    if-eqz v5, :cond_3a

    return-object v0

    :cond_3a
    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type android.content.pm.LauncherApps"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6b

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_6c

    :cond_6b
    const/4 v5, 0x0

    :goto_6c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_9e

    const-string v6, "launcherInfos"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7b
    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_7b

    :cond_9e
    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v0

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v5, v6, p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getCustomizeAppTitle(Landroid/content/ComponentName;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_b5

    goto :goto_b7

    :cond_b5
    move v6, v3

    goto :goto_b8

    :cond_b7
    :goto_b7
    move v6, v4

    :goto_b8
    if-nez v6, :cond_e8

    iget p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    or-int/2addr p0, v4

    iput p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTitle(), launcherComponent="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", userId="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", title="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e8
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_12b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_11f

    move v3, v4

    :cond_11f
    if-eqz v3, :cond_122

    goto :goto_12a

    :cond_122
    invoke-static {p0, p1}, Lcom/android/quickstep/TaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12a
    return-object v0

    :cond_12b
    invoke-static {p0, p1}, Lcom/android/quickstep/TaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isMultiSearchTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.heytap.quicksearchbox"

    const-string v2, "com.heytap.quicksearchbox.multisearch.MultiSearchResultActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isPairTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "PairPkg"

    const-string v2, "PairCls"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_16

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isQuickClick(J)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mLastClickTime:J

    sub-long v2, v0, v2

    cmp-long p0, v2, p0

    if-lez p0, :cond_10

    sput-wide v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mLastClickTime:J

    const/4 p0, 0x0

    return p0

    :cond_10
    sput-wide v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mLastClickTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public static final isThumbnailNotFullScreen(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    iget v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_10

    const/4 v2, 0x6

    if-ne v1, v2, :cond_12

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isInGrounp:Z

    if-nez p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    move v0, p0

    :cond_12
    return v0
.end method

.method private final labelFromPm(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_4
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_18

    goto :goto_1d

    :catchall_18
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1d
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_24

    goto :goto_3e

    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "labelFromPm, e="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusTaskUtils"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_3e
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_45

    check-cast p0, Ljava/lang/String;

    goto :goto_46

    :cond_45
    const/4 p0, 0x0

    :goto_46
    if-nez p0, :cond_4a

    const-string p0, ""

    :cond_4a
    return-object p0
.end method

.method private final uniformBlank(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    if-eqz p0, :cond_1b

    const-string p0, "\t|\n\n"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    return-object p1
.end method


# virtual methods
.method public final isQucikClick()Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long p0, v2, v4

    if-lez p0, :cond_12

    sput-wide v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mLastClickTime:J

    const/4 p0, 0x0

    return p0

    :cond_12
    sput-wide v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mLastClickTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public final isUseMultiAppletsTitle(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 7

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "plugin.appbrand.ui.AppBrandUI"

    const/4 v4, 0x2

    invoke-static {v1, v3, v0, v4}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "plugin.appbrand.ui.AppBrandUI2"

    invoke-static {p0, v1, v0, v4}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_31

    :cond_2f
    move p0, v0

    goto :goto_32

    :cond_31
    :goto_31
    move p0, p1

    :goto_32
    if-ne p0, p1, :cond_35

    goto :goto_36

    :cond_35
    move p1, v0

    :goto_36
    return p1
.end method

.method public final replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3e7

    if-ne v0, v3, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    :cond_27
    move-object v4, v5

    :goto_28
    if-nez v4, :cond_2c

    const-string v4, ""

    :cond_2c
    invoke-virtual {v3, v4}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isRedundantTask(Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v4

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3e

    :cond_3d
    move-object v6, v5

    :goto_3e
    invoke-virtual {v4, v6}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getRenameAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mCloneStr:Ljava/lang/String;

    if-nez v6, :cond_53

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120419

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mCloneStr:Ljava/lang/String;

    :cond_53
    if-eqz v0, :cond_82

    if-nez v3, :cond_82

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isUseMultiAppletsTitle(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    if-nez p0, :cond_7e

    iget p0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_63

    goto :goto_7e

    :cond_63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_ed

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mCloneStr:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_ed

    :cond_7e
    :goto_7e
    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto/16 :goto_ed

    :cond_82
    const-string v6, " - "

    if-nez v0, :cond_a9

    if-eqz v3, :cond_a6

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->labelFromPm(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_93

    move v1, v2

    :cond_93
    if-eqz v1, :cond_98

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_de

    :cond_98
    invoke-static {p0, v6}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_de

    :cond_a6
    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_ed

    :cond_a9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->labelFromPm(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_ba

    move v1, v2

    :cond_ba
    if-eqz v1, :cond_c9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mCloneStr:Ljava/lang/String;

    goto :goto_d7

    :cond_c9
    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mCloneStr:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    :goto_d7
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_de
    move-object v4, p0

    goto :goto_ed

    :cond_e0
    invoke-static {v4, v6}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_ed
    :goto_ed
    if-eqz v4, :cond_10d

    const-string p0, "replaceTitleIfNeeded(), isMultiApp="

    const-string p2, "isModified="

    invoke-static {p0, v0, p2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    const-string p2, ", isRedundant="

    const-string v0, ", title="

    invoke-static {p0, p1, p2, v3, v0}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    const-string p1, "QuickStep"

    const-string p2, "OplusTaskUtils"

    invoke-static {p0, v4, p1, p2}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-direct {p0, v4}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->uniformBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_10d
    return-object v5
.end method

.method public final resetClickTime()V
    .registers 3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->mLastClickTime:J

    return-void
.end method
