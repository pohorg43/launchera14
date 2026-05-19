.class public final Lcom/android/launcher3/model/OplusUnionGridCompatHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusUnionGridCompatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusUnionGridCompatHelper.kt\ncom/android/launcher3/model/OplusUnionGridCompatHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n1#2:199\n*E\n"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final INSTANCE:Lcom/android/launcher3/model/OplusUnionGridCompatHelper;

.field private static final PREF_UNION_GRID_COMPACT:Ljava/lang/String; = "union_grid_compact"

.field private static final TAG:Ljava/lang/String; = "OplusUnionGridCompactHelper"

.field private static mGridChanged:Z

.field private static mOriginalGrid:Landroid/graphics/Point;

.field private static mUpdatedGrid:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;

    invoke-direct {v0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->INSTANCE:Lcom/android/launcher3/model/OplusUnionGridCompatHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final doMigrate(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->hasUpdated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->fixUpLegacyData(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->fixCustomizerData(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->updateWidgetInfoIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method private static final fixCustomizerData(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/operators/Customizer;->setHasCustomized(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isCommonCota()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/launcher/layout/LayoutPrefsUtils;->Companion:Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;->setLauncherLayoutVersion(Landroid/content/Context;I)V

    const-string v1, "1"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;->setLauncherLayoutVersionName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private static final fixUpLegacyData(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->fixUpAppData()Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixUpLegacyData cost "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusUnionGridCompactHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final getDrawerAndStandardGridForCompatOS12(II)Landroid/graphics/Point;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x3

    goto :goto_6

    :cond_5
    move v0, p0

    :goto_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_11

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x5

    goto :goto_12

    :cond_11
    move v1, p1

    :goto_12
    const-string v2, "getDrawerAndStandardGridForCompatOS12 from "

    const-string v3, ", "

    const-string v4, " to "

    invoke-static {v2, p0, v3, p1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusUnionGridCompactHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private static final hasUpdated(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "union_grid_compact"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final pinLegacyDeepShortcutIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/shortcuts/DeepShortcutManager;)Landroid/content/pm/ShortcutInfo;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    move v3, v2

    goto :goto_1e

    :cond_1d
    move v3, v1

    :goto_1e
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    or-int/2addr v0, v3

    iget-object v3, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const v4, 0x7f120336

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    or-int/2addr p0, v0

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    return-object v0

    :cond_3f
    const-string p0, "OplusUnionGridCompactHelper"

    const-string/jumbo v3, "pinLegacyDeepShortcutIfNeed legacy shortcut data detected"

    invoke-static {p0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->pinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    iget-object p2, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "shortcut_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "itemInfo.intent.getStrin…cutKey.EXTRA_SHORTCUT_ID)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_77

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "pinLegacyDeepShortcutIfNeed PinnedBackupShortcut, shortcutId is empty! itemInfo = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_77
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v3, p2, v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    const-string/jumbo v3, "shortcutManager.queryFor…ortcutId), itemInfo.user)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result p3

    const-string/jumbo v3, "pinLegacyDeepShortcutIfNeed result = "

    const-string v4, ", intent = "

    invoke-static {v3, p3, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_be

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    return-object p0

    :cond_be
    return-object v0
.end method

.method public static final updateGridIfNeeded(Landroid/content/Context;[I)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->hasUpdated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    aget v0, p1, v1

    aget p1, p1, v3

    invoke-static {v0, p1}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->getDrawerAndStandardGridForCompatOS12(II)Landroid/graphics/Point;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    if-eqz v0, :cond_46

    if-eqz v0, :cond_34

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_34

    move v2, v3

    goto :goto_35

    :cond_34
    move v2, v1

    :goto_35
    if-eqz v2, :cond_44

    if-eqz v0, :cond_41

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_41

    move v0, v3

    goto :goto_42

    :cond_41
    move v0, v1

    :goto_42
    if-nez v0, :cond_46

    :cond_44
    sput-boolean v3, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    :cond_46
    sget-boolean v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    const-string v2, "OplusUnionGridCompactHelper"

    if-eqz v0, :cond_c6

    sput-object p1, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0, p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutInfo(Landroid/content/Context;II)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/launcher/mode/LauncherMode;

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    aput-object v0, p1, v1

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    aput-object v0, p1, v3

    invoke-static {p1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/mode/LauncherMode;

    new-instance v4, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v4, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v4}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-static {v5, v6}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->getDrawerAndStandardGridForCompatOS12(II)Landroid/graphics/Point;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher/mode/AbsLauncherMode;->setCurrentModeLayoutSetting(II)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateGridIfNeeded set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " currentLayoutSetting: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", original: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_c6
    const-string/jumbo p0, "updateGridIfNeeded "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", new grid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", old grid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final updateWidgetInfoIfNeeded(Landroid/content/Context;)V
    .registers 21
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p0

    const-string/jumbo v2, "union_grid_compact"

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string v3, "OplusUnionGridCompactHelper"

    const-string/jumbo v0, "updateWidgetInfoIfNeeded"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    :try_start_15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "new_db_transaction"

    invoke-static {v0, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "value"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.provider.LauncherDbUtils.SQLiteTransaction"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_f8
    .catchall {:try_start_15 .. :try_end_30} :catchall_f6

    :try_start_30
    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_37
    const/4 v9, 0x0

    if-ge v8, v6, :cond_e6

    aget-object v10, v0, v8

    invoke-static {v1, v10}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-nez v11, :cond_5d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateWidgetInfoIfNeeded no table "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e2

    :cond_5d
    new-instance v11, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v11, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v10}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object v14

    sget-boolean v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    if-eqz v11, :cond_e2

    sget-object v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    if-eqz v11, :cond_e2

    sget-object v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    if-eqz v11, :cond_e2

    sget-object v11, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-eq v11, v10, :cond_e2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateWidgetInfoIfNeeded update widget spanX "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "OplusUnionGridCompactHelper"

    invoke-virtual {v5}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string/jumbo v10, "transaction.db"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "tableName"

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "spanX"

    sget-object v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    if-eqz v11, :cond_b8

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_b9

    :cond_b8
    move-object v11, v9

    :goto_b9
    invoke-virtual {v15, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v16, "spanX=? AND itemType=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    sget-object v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    if-eqz v11, :cond_cc

    iget v9, v11, Landroid/graphics/Point;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_cc
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v7

    const-string v9, "5"

    aput-object v9, v10, v4

    const/16 v18, 0x0

    const/4 v9, 0x5

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v17, v10

    invoke-static/range {v12 .. v19}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    :goto_e2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_37

    :cond_e6
    invoke-virtual {v5}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_e9
    .catchall {:try_start_30 .. :try_end_e9} :catchall_ed

    :try_start_e9
    invoke-static {v5, v9}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_f8
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_f6

    goto :goto_10e

    :catchall_ed
    move-exception v0

    move-object v6, v0

    :try_start_ef
    throw v6
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f0

    :catchall_f0
    move-exception v0

    move-object v7, v0

    :try_start_f2
    invoke-static {v5, v6}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f6} :catch_f8
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_f6

    :catchall_f6
    move-exception v0

    goto :goto_112

    :catch_f8
    move-exception v0

    :try_start_f9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWidgetInfoIfNeeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_f9 .. :try_end_10e} :catchall_f6

    :goto_10e
    invoke-static {v1, v2, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :goto_112
    invoke-static {v1, v2, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v0
.end method
