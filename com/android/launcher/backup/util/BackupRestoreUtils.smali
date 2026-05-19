.class public final Lcom/android/launcher/backup/util/BackupRestoreUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBackupRestoreUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupRestoreUtils.kt\ncom/android/launcher/backup/util/BackupRestoreUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,713:1\n1#2:714\n*E\n"
    }
.end annotation


# static fields
.field private static final HOTSEAT_SCREEN_ID:I = 0x3e7

.field public static final INSTANCE:Lcom/android/launcher/backup/util/BackupRestoreUtils;

.field private static final OPLUS_60_START_SCREEN_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->INSTANCE:Lcom/android/launcher/backup/util/BackupRestoreUtils;

    const-string v0, "BR-Launcher_BackupRestoreUtils"

    sput-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adjustBackupDataModelItemInfo(Landroid/content/Context;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    packed-switch p1, :pswitch_data_c4

    goto/16 :goto_c2

    :pswitch_f  #0x6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, v4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_c2

    :pswitch_1c  #0x5
    sget-object v2, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v2

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v2

    if-ne v2, v0, :cond_50

    sget-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Backup"

    const-string v3, "Add restore card span: CARD_RESIZE_FOR_2_COL"

    invoke-static {v2, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_c2

    :cond_50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_c2

    :pswitch_5e  #0x4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto :goto_c2

    :pswitch_6b  #0x3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v3

    if-eqz v3, :cond_7a

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v3

    goto :goto_7b

    :cond_7a
    move v3, v0

    :goto_7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v4

    if-eqz v4, :cond_89

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    :cond_89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto :goto_c2

    :pswitch_94  #0x2
    if-eqz p0, :cond_c2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getProfileId(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, v4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto :goto_c2

    :pswitch_a9  #0x1
    if-eqz p0, :cond_c2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Lcom/android/launcher/backup/util/LauncherDBUtils;->getProfileId(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p2

    move-object v3, v4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    :cond_c2
    :goto_c2
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_a9  #00000001
        :pswitch_94  #00000002
        :pswitch_6b  #00000003
        :pswitch_5e  #00000004
        :pswitch_1c  #00000005
        :pswitch_f  #00000006
    .end packed-switch
.end method

.method public static final adjustItemApplicationInfoForRestore(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->parseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_34

    invoke-static {v1, v2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->makeIntentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v4, "adjustItemApplicationInfoForRestore make newIntentDes from pkg: "

    const-string v5, ", cls: "

    const-string v6, " when oldIntentDes is null. appInfo is: "

    invoke-static {v4, v1, v5, v2, v6}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_4b

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v3, :cond_4b

    goto :goto_4c

    :cond_4b
    move v3, v4

    :goto_4c
    if-eqz v3, :cond_a7

    sget-object v3, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->Companion:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;

    invoke-virtual {v3}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;->getInstance()Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;

    move-result-object v4

    const-string/jumbo v5, "pkg"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p0, v1, v2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->getOplusAppCompatComponentName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_68

    invoke-virtual {v3}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;->getInstance()Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->getOplusAppCompatComponentNameOnBackupRestore(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    :cond_68
    if-eqz v4, :cond_a7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->makeIntentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustItemApplicationInfoForRestore make newIntentDes from compact component: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when old cn is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appInfo is: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_cb

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_cb

    sget-object p0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustItemApplicationInfoForRestore make intentDes failed: No intent description for app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Backup"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cb
    invoke-static {p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustScreenIdForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    return-void
.end method

.method public static final adjustItemBaseInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setMapKey(I)V

    packed-switch p1, :pswitch_data_56

    goto :goto_30

    :pswitch_12  #0x6
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    goto :goto_30

    :pswitch_17  #0x5
    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    goto :goto_30

    :pswitch_1d  #0x4
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    goto :goto_30

    :pswitch_22  #0x3
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    goto :goto_30

    :pswitch_27  #0x2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    goto :goto_30

    :pswitch_2c  #0x1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    :cond_30
    :goto_30
    if-eqz p2, :cond_39

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    :cond_39
    if-eqz p3, :cond_42

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    :cond_42
    if-eqz p4, :cond_4b

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setProfileId(J)V

    :cond_4b
    if-eqz p5, :cond_54

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconType(I)V

    :cond_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_27  #00000002
        :pswitch_22  #00000003
        :pswitch_1d  #00000004
        :pswitch_17  #00000005
        :pswitch_12  #00000006
    .end packed-switch
.end method

.method public static final adjustItemWidgetInfoForRestore(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;II)Z
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "widgetInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Backup"

    const/4 v4, 0x0

    if-eqz v2, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_29

    :cond_28
    move-object v5, v4

    :goto_29
    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cn.packageName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "cn.className"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_52

    :cond_3e
    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "widgetInfo.packageName"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "widgetInfo.className"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_52
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5f

    goto :goto_87

    :cond_5f
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustItemWidgetInfoForRestore make appWidgetProvider: Get widget pkg and cls name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :cond_87
    :goto_87
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_c1

    sget-object v5, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v6, "adjustItemWidgetInfoForRestore make appWidgetProvider failed: Get widget pkg and cls name fail! intent: "

    invoke-static {v6, v2, v3, v5}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :cond_95
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_a1

    :cond_a0
    move-object v5, v4

    :goto_a1
    if-eqz v2, :cond_a8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_a9

    :cond_a8
    move-object v2, v4

    :goto_a9
    if-eqz v5, :cond_c1

    if-eqz v2, :cond_c1

    sget-object v6, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->Companion:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;

    invoke-virtual {v6}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;->getInstance()Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->getWidgetClockCompatWeatherOrSaleComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c1

    sget-object v1, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v5, "adjustItemWidgetInfoForRestore make appWidgetProvider: Get clock compat weatherOrSale component: "

    invoke-static {v5, v2, v3, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_c1
    :goto_c1
    if-eqz v1, :cond_c8

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_c9

    :cond_c8
    move-object v2, v4

    :goto_c9
    sget-object v5, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustItemWidgetInfoForRestore componentName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_f7

    if-eqz v2, :cond_f7

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProvidersMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_f8

    :cond_f7
    move-object v2, v4

    :goto_f8
    if-nez v2, :cond_10c

    if-eqz v1, :cond_106

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->Companion:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;

    invoke-virtual {v2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;->getInstance()Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->getCompatibleWidgetProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_106
    const-string p0, "adjustItemWidgetInfoForRestore make appWidgetProvider: Get clock compat smallOPWeather and other component: "

    invoke-static {p0, v4, v3, v5}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    :cond_10c
    if-eqz v1, :cond_111

    invoke-virtual {p1, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetProvider(Ljava/lang/String;)V

    :cond_111
    const-string p0, "adjustItemWidgetInfoForRestore reset widget provider from "

    const-string v1, " to "

    invoke-static {p0, v0, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", widgetInfo is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-eq p2, p0, :cond_177

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result p2

    invoke-static {p1, p3, p4}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreGridCompat;->updateWidgetOrCardSpanForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;II)Z

    move-result p3

    if-eqz p3, :cond_177

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "adjustItemWidgetInfoForRestore reset widget span from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_177
    invoke-static {p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->adjustScreenIdForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static final adjustScreenIdForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_15

    return v3

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v4

    if-gez v4, :cond_1c

    return v3

    :cond_1c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_49

    sget-object v5, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v6, "adjustScreenIdForRestore: appId = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", container = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", screenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", oldScreenId = "

    invoke-static {v6, v2, v7, v4}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Backup"

    invoke-static {v6, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    const/16 v2, -0x65

    if-ne v1, v2, :cond_56

    const/16 v2, 0x3e7

    if-ne v4, v2, :cond_56

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v3

    goto :goto_5d

    :cond_56
    if-lez v1, :cond_59

    goto :goto_5d

    :cond_59
    invoke-static {v4}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToNewScreenIdCompatOplus60(I)I

    move-result v3

    :goto_5d
    invoke-virtual {p0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    sget-object v1, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "adjustScreenIdForRestore reset screenId from "

    const-string v4, " to "

    const-string v5, ", appInfo is: "

    invoke-static {v2, v0, v4, v3, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final convertToNewScreenIdCompatOplus60(I)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_24

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "convert oldScreenId:"

    const-string/jumbo v3, "——>newScreenId:"

    invoke-static {v2, p0, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p0, -0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Backup"

    invoke-static {v3, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    sub-int/2addr p0, v0

    :cond_24
    return p0
.end method

.method public static final convertToOldIdForOplus60(I)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v1, "convert newId:"

    const-string/jumbo v2, "——>oldId:"

    invoke-static {v1, p0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Backup"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final convertToOldScreenIdForOplus60(I)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v1, "convert newScreenId:"

    const-string/jumbo v2, "——>oldScreenId:"

    invoke-static {v1, p0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit16 v2, p0, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Backup"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    add-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static final convertToOldScreenNumForOplus60(I)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v1, "convert newScreenRank:"

    const-string/jumbo v2, "——>oldScreenNum:"

    invoke-static {v1, p0, v2, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Backup"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return p0
.end method

.method public static final deleteInvalidAppsWhenRestore(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/common/util/LauncherModeUtil;->syncDataForLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final filterAutoInstallIconWhenBackup(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static final filterDownloadOrNewInstallingAppWhenBackup(Landroid/content/Context;JIILjava/lang/String;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x40000002  # 2.0000005f

    and-int/2addr p3, v0

    if-eqz p3, :cond_7f

    if-nez p4, :cond_7f

    invoke-static {p5}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->parseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_7f

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    if-eqz p4, :cond_19

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    goto :goto_1d

    :cond_19
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p5

    :goto_1d
    const/4 v0, 0x0

    if-eqz p4, :cond_25

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p4

    goto :goto_26

    :cond_25
    move-object p4, v0

    :goto_26
    if-eqz p5, :cond_7f

    const-string v1, "downloadAppClassName"

    invoke-static {v1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x1

    const-string v2, ", app: "

    const-string v3, "LauncherDBParser"

    if-eqz p4, :cond_50

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Don\'t backup downloadApp, intent: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_50
    if-eqz p0, :cond_5a

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v0

    :cond_5a
    if-eqz v0, :cond_7f

    iget-object p0, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result p0

    if-eqz p0, :cond_7f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Don\'t backup downloading app, intent: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7f
    const/4 p0, 0x0

    return p0
.end method

.method public static final filterNewInstallingAppWhenBackup(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backupItemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->isNewInstallingApp()Z

    move-result p0

    return p0
.end method

.method public static final filterNewInstallingAppWhenBackup(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result p0

    return p0
.end method

.method public static final filterNotInstalledAppWhenRestore(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_16

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_8a

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v2, p0, p1, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    const-string v2, ", item: "

    if-nez p0, :cond_4f

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result p0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq p0, v1, :cond_4f

    sget-object p0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "don\'t restore app which is not installed. package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_4f
    const-string p0, "downloadAppClassName"

    invoke-virtual {p2, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconResource(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setInstallSource(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->value()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setInstallState(I)V

    const p0, 0x40000404  # 2.000245f

    invoke-virtual {p2, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setStatus(I)V

    sget-object p0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restore app and set the downloading app info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    const/4 p0, 0x1

    return p0
.end method

.method public static final generateCellCountCompatOld([I[I)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)",
            "Landroid/util/Pair<",
            "[I[I>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "currentOsCellCount"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newOsCellCountOS8"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start generate current os[currentOsCellCount]:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current os[newOsCellCountOS8] init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Backup"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v4, 0x0

    aget v5, p0, v4

    aput v5, v1, v4

    const/4 v5, 0x1

    aget v6, p0, v5

    aput v6, v1, v5

    aget v6, p0, v4

    const/4 v7, 0x4

    if-ge v6, v7, :cond_4f

    aput v7, v1, v4

    move v6, v5

    goto :goto_50

    :cond_4f
    move v6, v4

    :goto_50
    aget v7, p0, v5

    const/4 v8, 0x6

    if-ge v7, v8, :cond_58

    aput v8, v1, v5

    move v6, v5

    :cond_58
    if-eqz v6, :cond_89

    aget v6, p0, v4

    aput v6, p1, v4

    aget p0, p0, v5

    aput p0, p1, v5

    const-string p0, "end generate old os[oldOsCellCount]:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new os[newOsCellCountOS8]:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_89
    const-string p0, "end generate new&old os[cellCount]:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final getCellCountForNew(IIII)[I
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-lez p2, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    if-lez p3, :cond_9

    move v1, p3

    goto :goto_a

    :cond_9
    move v1, p1

    :goto_a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_61

    sget-object v2, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v6, "get target os[newCellCount]:"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v7, v5, [I

    aput v0, v7, v4

    aput v1, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "toString(this)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", old os[cellCount]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v5, [I

    aput p0, v7, v4

    aput p1, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", new os[cellCountOS8]:"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v5, [I

    aput p2, p0, v4

    aput p3, p0, v3

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Backup"

    invoke-static {p1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    new-array p0, v5, [I

    aput v0, p0, v4

    aput v1, p0, v3

    return-object p0
.end method

.method private static final getDynamicShortcutSupportState(Lcom/android/launcher3/shortcuts/ShortcutKey;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableBRDynamicShortcuts()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x2

    goto :goto_19

    :cond_a
    sget-object v0, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->Companion:Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager$Companion;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->isDynamicShortcutNotSupport(Lcom/android/launcher3/shortcuts/ShortcutKey;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x4

    goto :goto_19

    :cond_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public static final getRestoredIdCompatOplus60(II)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    invoke-static {p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToNewScreenIdCompatOplus60(I)I

    move-result p0

    :cond_7
    return p0
.end method

.method public static final getRestoredScreenRankCompatOplus60(II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1c

    if-eq p1, v0, :cond_6

    move p0, p1

    :cond_6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v1, "convert oldScreenNum:"

    const-string/jumbo v2, "——>newScreenRank:"

    invoke-static {v1, p1, v2, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Backup"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return p0
.end method

.method public static final makeIntentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10200000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    const-string p0, ""

    return-object p0
.end method

.method public static final parseComponent(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->parseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final parseIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_15

    :cond_8
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    sget-object v1, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing Intent, des = "

    invoke-static {v2, p0, v1}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-object v0
.end method

.method public static final resetFolderItemsOldScreenIdWithFolderScreenIdForOplus60(Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderScreenMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "oldScreenIdMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allItemList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_14

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "Backup"

    const-string v5, " itemInfo: "

    if-eqz v3, :cond_90

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setOldScreenId(I)V

    sget-object v2, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOldScreenId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in folder, screen: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_6c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOldScreenId: null oldScreenId in folder, screen: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_90
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setOldScreenId: null screen in folder, container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_b5
    return-void
.end method

.method public static final resetHotseatAndDesktopItemOldScreenIdForOplus60(JIILjava/util/Map;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "oldScreenIdMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " app: "

    const/16 v1, -0x65

    if-ne p2, v1, :cond_35

    const/16 p0, 0x3e7

    invoke-virtual {p5, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setOldScreenId(I)V

    sget-object p0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setOldScreenId:999, container: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dc

    :cond_35
    const/16 v1, -0x64

    const-string v2, "Backup"

    if-ne p2, v1, :cond_93

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_7c

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p5, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setOldScreenId(I)V

    sget-object p0, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOldScreenId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", screenId: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", container: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    :cond_7c
    sget-object p4, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p5, "setOldScreenId: null oldScreenId, screenId: "

    const-string v1, " , container: "

    invoke-static {p5, p3, v1, p2, v0}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_93
    if-lez p2, :cond_b9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_dc

    sget-object p3, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "setOldScreenId in folder delay, container: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    :cond_b9
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_dc

    sget-object p3, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "setOldScreenId, wrong container: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_dc
    :goto_dc
    const/4 p0, 0x1

    return p0
.end method

.method public static final setDrawerAndStandardDeviceInfoCompatOplus32()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[I",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/launcher/backup/util/BackupRestoreUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "when backup from oplus32, set layout to newDrawerAndStandardCellCountX:"

    const/4 v3, 0x4

    const-string v4, " newDrawerAndStandardCellCountY:"

    const/4 v5, 0x6

    const-string/jumbo v6, "newIsCompactLayout:"

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Backup"

    invoke-static {v2, v0, v3, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :array_30
    .array-data 4
        0x4
        0x6
    .end array-data
.end method

.method public static final updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->getShortcutKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v2

    invoke-static {v1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getDynamicShortcutSupportState(Lcom/android/launcher3/shortcuts/ShortcutKey;)I

    move-result v1

    or-int v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setDynamicShortcutSupportState(I)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/util/ShortcutUtils;->isDynamicShortcutSupport(I)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p0, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutIcon([B)V

    :cond_27
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_41

    goto :goto_5c

    :cond_41
    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARSER backup shortcut detail failed, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    return-object v0
.end method

.method public static final updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicShortcutSupportStateStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutInfoStr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutIconStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_16
    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->getShortcutKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getDynamicShortcutSupportState(Lcom/android/launcher3/shortcuts/ShortcutKey;)I

    move-result v0

    or-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setDynamicShortcutSupportState(I)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/util/ShortcutUtils;->isDynamicShortcutSupport(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {p2}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutInfoFromStr(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    invoke-static {p3}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutIconFromStr(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutIcon([B)V

    :cond_3f
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_16 .. :try_end_4c} :catchall_4d

    return-object p0

    :catchall_4d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_59

    goto :goto_74

    :cond_59
    sget-object p1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string p2, "TAG"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PARSER backup shortcut detail failed, e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;[BLandroid/database/Cursor;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "[B",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backupItemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pinnedShortcutsMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->getShortcutKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getDynamicShortcutSupportState(Lcom/android/launcher3/shortcuts/ShortcutKey;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setDynamicShortcutSupportState(I)V

    invoke-static {v1}, Lcom/android/launcher/backup/util/ShortcutUtils;->isDynamicShortcutSupport(I)Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_ac

    const-string v3, "Backup"

    if-eqz v2, :cond_8b

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    :try_start_21
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    goto :goto_29

    :cond_28
    move-object p3, v1

    :goto_29
    if-nez p3, :cond_41

    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD backup shortcutInfo failed, shortcutKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    if-nez p2, :cond_50

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    goto :goto_5f

    :cond_50
    const/16 p1, 0x16

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :cond_5f
    :goto_5f
    if-eqz v1, :cond_69

    array-length p1, v1

    if-nez p1, :cond_66

    const/4 p1, 0x1

    goto :goto_67

    :cond_66
    const/4 p1, 0x0

    :goto_67
    if-eqz p1, :cond_87

    :cond_69
    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD backup shortcutIcon failed, shortcutKey: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", itemCursor="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    invoke-virtual {p0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutIcon([B)V

    goto :goto_a9

    :cond_8b
    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ADD backup dynamicShortcutSupportState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", shortcutKey: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a9
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_ab
    .catchall {:try_start_21 .. :try_end_ab} :catchall_ac

    goto :goto_b1

    :catchall_ac
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_b1
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_b8

    goto :goto_d3

    :cond_b8
    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    const-string p2, "TAG"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ADD backup shortcut detail failed, e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d3
    return-void
.end method
