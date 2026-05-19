.class public final Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusLayoutCompatManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusLayoutCompatManager.kt\ncom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,485:1\n1#2:486\n37#3,2:487\n*S KotlinDebug\n*F\n+ 1 OplusLayoutCompatManager.kt\ncom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager\n*L\n380#1:487,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;

.field private static final LOG_SWITCH_LAYOUT_FOR_OTA:Ljava/lang/String; = "prepare: "

.field private static final LOG_SWITCH_LAYOUT_FOR_RESTORE:Ljava/lang/String; = "onRestoring: "

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutCompatManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;

    invoke-direct {v0}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final generatorSpanOperations(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;IIILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v1, "spanX"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "spanY"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "_id="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final getBackupStandardAndDrawerDbGrid([I[I[I)[I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->isBackupStandardGridEqualsDrawer([I[I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p2

    :goto_8
    return-object p0
.end method

.method private static final isBackupStandardGridEqualsDrawer([I[I)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    aget v2, p0, v1

    aget v3, p1, v1

    if-ne v2, v3, :cond_13

    aget p0, p0, v0

    aget p1, p1, v0

    if-ne p0, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method private static final saveModeAndIdpLayoutToTarget(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[ILcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    const/4 p1, 0x0

    aget v0, p2, p1

    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher/mode/AbsLauncherMode;->setCurrentModeLayoutSetting(II)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    iget v0, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    aput v0, p0, p1

    iget v0, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    aput v0, p0, v1

    aget v0, p0, p1

    aget v2, p2, p1

    if-ne v0, v2, :cond_2d

    aget p0, p0, v1

    aget v0, p2, v1

    if-eq p0, v0, :cond_35

    :cond_2d
    aget p0, p2, p1

    iput p0, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    aget p0, p2, v1

    iput p0, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    :cond_35
    return-void
.end method

.method private static final switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[ZLcom/android/launcher3/InvariantDeviceProfile;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p3}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static/range {p0 .. p5}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[Z)Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-static {p0, p3, p1, p6}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->saveModeAndIdpLayoutToTarget(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[ILcom/android/launcher3/InvariantDeviceProfile;)V

    goto :goto_4e

    :cond_14
    invoke-static {p0, p3, p2, p6}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->saveModeAndIdpLayoutToTarget(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[ILcom/android/launcher3/InvariantDeviceProfile;)V

    goto :goto_4e

    :cond_18
    const-string/jumbo p0, "switchCellsLayout "

    const-string p4, " from "

    invoke-static {p0, p3, p4}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "toString(this)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed! noTable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Backup"

    const-string p2, "BR-Launcher_LayoutCompatManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_4e
    return p4
.end method

.method private static final switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;[ZLjava/util/HashMap;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I[I",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[Z",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[I>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p3}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[Z)Z

    move-result p0

    if-eqz p0, :cond_2a

    if-eqz p5, :cond_2a

    invoke-virtual {p5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    if-eqz p2, :cond_2a

    aget p3, p1, v1

    aput p3, p2, v1

    const/4 p3, 0x1

    aget p1, p1, p3

    aput p1, p2, p3

    :cond_2a
    move v1, p0

    goto :goto_61

    :cond_2c
    const-string/jumbo p0, "switchCellsLayout "

    const-string p4, " from "

    invoke-static {p0, p3, p4}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "toString(this)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed! noTable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Backup"

    const-string p2, "BR-Launcher_LayoutCompatManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    return v1
.end method

.method public static final switchCellsLayoutIfNeededForOta(Lcom/android/launcher3/LauncherAppState;)V
    .registers 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v1, "BR-Launcher_LayoutCompatManager"

    const-string/jumbo v0, "toString(this)"

    const-string v2, "appState"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isCloudRestore()Z

    move-result v2

    if-nez v2, :cond_194

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLayoutRestore()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_194

    :cond_1a
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v2, v4, :cond_27

    return-void

    :cond_27
    :try_start_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v7

    invoke-static {v2}, Lcom/android/launcher/UiConfig;->getCurDrawerAndStandardLayoutSettings(Landroid/content/Context;)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v8, 0x1

    aget v9, v3, v8

    invoke-static {v6, v9}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->getExpandGridForCompatOS12AndRestore(II)[I

    move-result-object v6

    const/4 v9, 0x2

    new-array v9, v9, [I

    iget v10, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    aput v10, v9, v5

    iget v10, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    aput v10, v9, v8

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v10

    new-instance v11, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v11, v2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v4}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v11

    aget v12, v11, v5

    aget v13, v11, v8

    invoke-static {v12, v13}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->getExpandGridForCompatOS12AndRestore(II)[I

    move-result-object v12

    new-instance v13, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v13, v2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    sget-object v14, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v13, v14}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v13

    new-instance v14, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v14, v2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    sget-object v15, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v14, v15}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v14

    aget v5, v3, v5

    aget v8, v3, v8

    invoke-static {v5, v8}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v5

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v15, 0x1

    move-object/from16 p0, v7

    aget v7, v6, v15

    invoke-static {v8, v7}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v7

    const/4 v8, 0x0

    aget v8, v9, v8

    aget v15, v9, v15

    invoke-static {v8, v15}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v8

    if-eqz v5, :cond_ac

    move-object v5, v3

    goto :goto_b5

    :cond_ac
    if-eqz v7, :cond_b0

    move-object v5, v6

    goto :goto_b5

    :cond_b0
    if-eqz v8, :cond_b4

    move-object v5, v9

    goto :goto_b5

    :cond_b4
    move-object v5, v10

    :goto_b5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_152

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "prepare: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "switchCellsLayoutIfNeededForOta:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " currentMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", currentDeviceCellXY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentExpandDeviceCellXY: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", idpDeviceCellXY: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", defaultCellXY: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentDbCellXY: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentExpandDbCellXY: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", standardDbCellXY: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", drawerDbCellXY: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Backup"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_152
    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentMode"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetCellXY"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentDbCellXY"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idp"

    move-object/from16 v7, p0

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v8, v0, [Z

    const/4 v0, 0x0

    aput-boolean v0, v8, v0

    const/4 v0, 0x1

    aput-boolean v0, v8, v0

    move-object v3, v2

    move-object v6, v11

    invoke-static/range {v3 .. v8}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->switchTargetModeLayoutIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I[ILcom/android/launcher3/InvariantDeviceProfile;[Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_181
    .catchall {:try_start_27 .. :try_end_181} :catchall_182

    goto :goto_187

    :catchall_182
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_187
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_18e

    goto :goto_194

    :cond_18e
    const-string/jumbo v2, "prepare: switchCellsLayoutIfNeededForOta failed, e"

    invoke-static {v2, v0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_194
    :goto_194
    return-void
.end method

.method public static final switchCellsLayoutIfNeededForRestore(Landroid/content/Context;Ljava/util/HashMap;[IZZLcom/android/launcher/mode/LauncherMode;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[I>;[IZZ",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p4

    const-string v8, "BR-Launcher_LayoutCompatManager"

    const-string/jumbo v3, "toString(this)"

    const-string v4, "context"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceSettingLayout"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_18
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v10

    sget-object v4, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {v0, v1, v4}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getTargetModeLayout(Landroid/content/Context;Ljava/util/Map;Lcom/android/launcher/mode/LauncherMode;)[I

    move-result-object v5

    sget-object v11, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {v0, v1, v11}, Lcom/android/launcher/backup/util/LayoutRestoreUtils;->getTargetModeLayout(Landroid/content/Context;Ljava/util/Map;Lcom/android/launcher/mode/LauncherMode;)[I

    move-result-object v12

    aget v1, v5, v9

    const/4 v6, 0x1

    aget v13, v5, v6

    invoke-static {v1, v13}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->getExpandGridForCompatOS12AndRestore(II)[I

    move-result-object v1

    aget v13, v12, v9

    aget v14, v12, v6

    invoke-static {v13, v14}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->getExpandGridForCompatOS12AndRestore(II)[I

    move-result-object v13

    invoke-static {v5, v12, v2}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->getBackupStandardAndDrawerDbGrid([I[I[I)[I

    move-result-object v2

    aget v14, v2, v9

    aget v6, v2, v6

    invoke-static {v14, v6}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->getDrawerAndStandardGridForCompatRestore(II)[I

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onRestoring: switchCellsLayoutIfNeededForRestore:"

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " standardDbCellXY: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", drawerDbCellXY: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", standardExpandDbCellXY: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drawerExpandDbCellXY: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", standardAndDrawerDbCellXY: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetCellXY: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentCompactLayout: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNewIsCompactLayout: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRestoreMode: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idp"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v6, v13, [Z

    if-nez v7, :cond_da

    const/4 v1, 0x1

    goto :goto_db

    :cond_da
    move v1, v9

    :goto_db
    aput-boolean v1, v6, v9

    const/4 v1, 0x1

    aput-boolean v9, v6, v1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v14

    move-object v4, v5

    move-object v5, v10

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->switchTargetModeLayoutIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I[ILcom/android/launcher3/InvariantDeviceProfile;[Z)Z

    move-result v1
    :try_end_ea
    .catchall {:try_start_18 .. :try_end_ea} :catchall_111

    :try_start_ea
    new-array v2, v13, [Z

    if-nez v7, :cond_f0

    const/4 v3, 0x1

    goto :goto_f1

    :cond_f0
    move v3, v9

    :goto_f1
    aput-boolean v3, v2, v9

    const/4 v3, 0x1

    aput-boolean v9, v2, v3

    move-object/from16 p1, v11

    move-object/from16 p2, v14

    move-object/from16 p3, v12

    move-object/from16 p4, v10

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->switchTargetModeLayoutIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I[ILcom/android/launcher3/InvariantDeviceProfile;[Z)Z

    move-result v2
    :try_end_104
    .catchall {:try_start_ea .. :try_end_104} :catchall_10a

    :try_start_104
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_106
    .catchall {:try_start_104 .. :try_end_106} :catchall_107

    goto :goto_119

    :catchall_107
    move-exception v0

    move v9, v2

    goto :goto_10b

    :catchall_10a
    move-exception v0

    :goto_10b
    move/from16 v16, v9

    move v9, v1

    move/from16 v1, v16

    goto :goto_113

    :catchall_111
    move-exception v0

    move v1, v9

    :goto_113
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move v2, v1

    move v1, v9

    :goto_119
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_120

    goto :goto_126

    :cond_120
    const-string/jumbo v3, "onRestoring: switchCellsLayoutIfNeededForRestore failed, e"

    invoke-static {v3, v0, v8}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_126
    or-int v0, v1, v2

    return v0
.end method

.method private static final switchTargetModeLayoutIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I[ILcom/android/launcher3/InvariantDeviceProfile;[Z)Z
    .registers 23
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v10, 0x1

    aget-boolean v1, p5, v10

    if-eqz v1, :cond_f

    const-string/jumbo v1, "prepare: "

    goto :goto_12

    :cond_f
    const-string/jumbo v1, "onRestoring: "

    :goto_12
    move-object v11, v1

    aget-boolean v1, p5, v10

    const-string v12, "BR-Launcher_LayoutCompatManager"

    const/4 v13, 0x0

    if-nez v1, :cond_4a

    aget v1, p3, v13

    aget v2, v9, v13

    invoke-static {v1, v2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isOriginalCellNotEqualsTarget(II)Z

    move-result v1

    if-nez v1, :cond_2e

    aget v1, p3, v10

    aget v2, v9, v10

    invoke-static {v1, v2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->isOriginalCellNotEqualsTarget(II)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_2e
    invoke-static/range {p0 .. p3}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->updateWidgetOrCardSpanIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I[I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateWidgetOrCardSpanIfNeeded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :try_start_4a
    aget v1, p3, v13

    aget v2, p3, v10

    aget v3, v9, v13

    aget v4, v9, v10

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher/UiConfig;->isCanExpandXYForRestore(IIII)Z

    move-result v1
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_15c

    const-string/jumbo v14, "when "

    const-string/jumbo v15, "toString(this)"

    if-eqz v1, :cond_af

    :try_start_5e
    invoke-static/range {p0 .. p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6d

    move-object/from16 v7, p4

    invoke-static {v0, v8, v9, v7}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->saveModeAndIdpLayoutToTarget(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[ILcom/android/launcher3/InvariantDeviceProfile;)V

    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can expand to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", no need switchLayout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", just update db and idp layout to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v10

    goto/16 :goto_134

    :cond_af
    move-object/from16 v7, p4

    aget v1, p3, v13

    aget v2, p3, v10

    invoke-static {v1, v2}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v16

    if-eqz v16, :cond_cd

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[ZLcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v1

    goto :goto_de

    :cond_cd
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;Z[ZLcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v1
    :try_end_de
    .catchall {:try_start_5e .. :try_end_de} :catchall_15c

    :goto_de
    :try_start_de
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t expand to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_109

    const-string v3, "Normal"

    goto :goto_10b

    :cond_109
    const-string v3, "S"

    :goto_10b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switchLayout for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", and update db and idp layout to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_125

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    :goto_121
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12a

    :cond_125
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :goto_12a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_134
    aget v2, v9, v13

    aget v3, v9, v10

    invoke-static {v0, v2, v3}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutInfo(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "final update current layout to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_158
    .catchall {:try_start_de .. :try_end_158} :catchall_159

    goto :goto_162

    :catchall_159
    move-exception v0

    move v10, v1

    goto :goto_15d

    :catchall_15c
    move-exception v0

    :goto_15d
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move v1, v10

    :goto_162
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_169

    goto :goto_189

    :cond_169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchTargetModeLayoutIfNeeded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed, e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_189
    return v1
.end method

.method public static final unifyBackupCellsLayoutBeforeRestore(Landroid/content/Context;Ljava/util/HashMap;[I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "[I>;[I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "onRestoring: "

    const-string/jumbo v1, "toString(this)"

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "targetCellXY"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "copyOf(this, size)"

    const/4 v3, 0x0

    const-string v4, "BR-Launcher_LayoutCompatManager"

    if-eqz p1, :cond_2e

    :try_start_18
    sget-object v5, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-eqz v5, :cond_2e

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    :catchall_2b
    move-exception p0

    goto/16 :goto_12e

    :cond_2e
    move-object v5, v3

    :goto_2f
    if-eqz p1, :cond_44

    sget-object v6, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_44

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_45

    :cond_44
    move-object v6, v3

    :goto_45
    if-eqz v5, :cond_125

    if-eqz v6, :cond_125

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "unifyBackupCellsLayoutBeforeRestore:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " standardDbCellXY: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", drawerDbCellXY: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", targetCellXY: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->isBackupStandardGridEqualsDrawer([I[I)Z

    move-result v2

    if-nez v2, :cond_11e

    invoke-static {p2, v5}, Lcom/android/common/util/LauncherModeUtil;->isNeedSwitchDataWhenLayoutNotSame([I[I)Z

    move-result v2

    if-eqz v2, :cond_97

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    goto :goto_98

    :cond_97
    move-object v5, v3

    :goto_98
    invoke-static {p2, v6}, Lcom/android/common/util/LauncherModeUtil;->isNeedSwitchDataWhenLayoutNotSame([I[I)Z

    move-result v2

    if-eqz v2, :cond_a2

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    move-object v2, v6

    goto :goto_a3

    :cond_a2
    move-object v2, v5

    :goto_a3
    if-eqz v2, :cond_12b

    if-eqz v3, :cond_12b

    const/4 v5, 0x2

    new-array v9, v5, [Z

    const/4 v5, 0x0

    aput-boolean v5, v9, v5

    const/4 v6, 0x1

    aput-boolean v5, v9, v6

    move-object v5, p0

    move-object v6, p2

    move-object v7, v2

    move-object v8, v3

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;[ZLjava/util/HashMap;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "when "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " switch to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_e7

    const-string p0, ""

    goto :goto_ea

    :cond_e7
    const-string/jumbo p0, "no "

    :goto_ea
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "need update "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'s "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "backup layout to "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    :cond_11e
    const-string/jumbo p0, "onRestoring: no need unifyCellsLayout, because db standard equals drawer!"

    invoke-static {v4, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    :cond_125
    const-string/jumbo p0, "onRestoring: no need unifyCellsLayout, because backup standard drawer is null!"

    invoke-static {v4, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12b
    :goto_12b
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12d
    .catchall {:try_start_18 .. :try_end_12d} :catchall_2b

    goto :goto_132

    :goto_12e
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_132
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_139

    goto :goto_13f

    :cond_139
    const-string/jumbo p1, "onRestoring: unifyBackupCellsLayoutBeforeRestore failed, e"

    invoke-static {p1, p0, v4}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_13f
    return-void
.end method

.method private static final updateWidgetOrCardSpanIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[I[I)Z
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "5"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "?"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "100"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "itemType in ("

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getSpecialItemInfoDbData(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    aget v3, p3, v1

    const/4 v4, 0x1

    aget v5, p3, v4

    aget v6, p2, v1

    aget v4, p2, v4

    invoke-static {v2, v3, v5, v6, v4}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetOrCardSpanForRestore(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;IIII)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->generatorSpanOperations(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;IIILjava/util/ArrayList;)V

    goto :goto_4f

    :cond_7d
    invoke-static {p0, v8}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method
