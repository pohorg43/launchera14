.class public Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXTRA_SHORTCUT_SC_ISSPLITSCREENCOMBINATION:Ljava/lang/String; = "isSplitScreenCombination"

.field public static final EXTRA_SHORTCUT_SC_IS_PS_SPLITSCREENCOMBINATION:Ljava/lang/String; = "isPsSplitScreenCombination"

.field public static final EXTRA_SHORTCUT_SC_KEY_CANVAS_LAYOUT_MAX_ORIENTATION:Ljava/lang/String; = "androidx.flexible.useMaxLayoutArray"

.field public static final EXTRA_SHORTCUT_SC_KEY_CANVAS_LAYOUT_ORIENTATION:Ljava/lang/String; = "androidx.flexible.layoutOrientation"

.field public static final EXTRA_SHORTCUT_SC_PKG_NAME1:Ljava/lang/String; = "pkgName1"

.field public static final EXTRA_SHORTCUT_SC_PKG_NAME2:Ljava/lang/String; = "pkgName2"

.field public static final EXTRA_SHORTCUT_SC_PKG_NAMES:Ljava/lang/String; = "pkgNames"

.field public static final EXTRA_SHORTCUT_SC_TRIPLE_FOCUS_INDEX:Ljava/lang/String; = "focusIndex"

.field public static final EXTRA_SHORTCUT_SC_USERIDS:Ljava/lang/String; = "userIds"

.field public static final EXTRA_SHORTCUT_SC_USER_ID1:Ljava/lang/String; = "userId1"

.field public static final EXTRA_SHORTCUT_SC_USER_ID2:Ljava/lang/String; = "userId2"

.field public static final SHORTCUT_PS_2_ICONS:I = 0x2

.field public static final SHORTCUT_PS_3_ICONS:I = 0x3

.field private static TAG:Ljava/lang/String; = "OplusShortcutKeyInjector"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSSCTitle([Ljava/lang/String;[ILandroid/content/Context;)Ljava/lang/String;
    .registers 16

    const-string v0, "launcherapps"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_16
    array-length v7, p0

    if-ge v6, v7, :cond_119

    aget-object v7, p0, v6

    if-nez v7, :cond_26

    sget-object v7, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    const-string v8, " The package name in the split screen combination is empty."

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_115

    :cond_26
    aget-object v1, p0, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3c

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    :cond_3c
    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v1

    aget v7, p1, v6

    invoke-virtual {v1, v5, v7, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getCustomizeAppTitle(Landroid/content/ComponentName;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f3

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v7

    aget-object v8, p0, v6

    invoke-virtual {v7, v8}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getRenameAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v8

    :try_start_61
    iget-object v9, v8, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v9}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_67
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ce

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    iget-object v12, v10, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_67

    if-eqz v11, :cond_67

    aget-object v12, p0, v6

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    aget v11, p1, v6

    iget-object v12, v10, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    if-ne v11, v12, :cond_67

    iget-object v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v9, p0

    array-length v10, p1

    if-ne v9, v10, :cond_b8

    aget v9, p1, v6

    const/16 v10, 0x3e7

    if-ne v9, v10, :cond_b8

    invoke-static {p2, v1}, Lcom/android/launcher3/util/ShortcutUtil;->isCloneAppName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120419

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v7}, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->getTmpTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b8
    sget-object v7, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSSCTitle tmpTitle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    if-nez v1, :cond_ee

    sget-object v1, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not find items in launcher model. try to get the package label: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, p0, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, p0, v6

    invoke-static {p2, v1}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_ee
    monitor-exit v8

    goto :goto_f3

    :catchall_f0
    move-exception p0

    monitor-exit v8
    :try_end_f2
    .catchall {:try_start_61 .. :try_end_f2} :catchall_f0

    throw p0

    :cond_f3
    :goto_f3
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-eq v7, v6, :cond_10e

    invoke-static {v1}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-static {v1}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_115

    :cond_10e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_115
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    :cond_119
    return-object v1
.end method

.method private static getTmpTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p2
.end method

.method public static injectMakeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;
    .registers 21

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.launcher.DEEP_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shortcut_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "focusIndex"

    const-string v3, "isPsSplitScreenCombination"

    const-string v4, "isSplitScreenCombination"

    const-string/jumbo v5, "userIds"

    const-string/jumbo v6, "pkgNames"

    const-string/jumbo v7, "pkgName2"

    const-string/jumbo v8, "pkgName1"

    const-string v9, "androidx.flexible.layoutOrientation"

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v1, :cond_84

    invoke-virtual {v1, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v6}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v15

    invoke-virtual {v1, v4, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    invoke-virtual {v1, v3, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v1, v2, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual {v1, v9, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    move/from16 p0, v10

    const-string v10, "androidx.flexible.useMaxLayoutArray"

    invoke-virtual {v1, v10}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    move/from16 v10, p0

    move-object/from16 v18, v1

    move/from16 v1, v17

    move-object/from16 v19, v12

    move v12, v11

    move/from16 v11, v16

    move-object/from16 v16, v14

    move-object v14, v13

    move-object/from16 v13, v19

    goto :goto_8d

    :cond_84
    move v1, v10

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v18, v16

    move v12, v11

    :goto_8d
    if-eqz v13, :cond_9c

    if-eqz v14, :cond_9c

    if-eqz v11, :cond_9c

    invoke-virtual {v0, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v7, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9c
    if-eqz v16, :cond_d3

    if-eqz v12, :cond_d3

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ps shortcut package names :"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    :cond_d3
    return-object v0
.end method

.method public static injectMakeTitle(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    if-eqz p0, :cond_8f

    if-nez p1, :cond_8

    goto/16 :goto_8f

    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_87

    sget-object v1, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " injectMakeTitle extras = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pkgNames"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userIds"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v3, "pkgName1"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pkgName2"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userId1"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "userId2"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez v1, :cond_66

    if-eqz v3, :cond_66

    if-eqz v4, :cond_66

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput v5, v1, v6

    aput p0, v1, v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :cond_66
    if-eqz v1, :cond_86

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->getSSCTitle([Ljava/lang/String;[ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6f

    return-object v0

    :cond_6f
    sget-object p1, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " injectMakeTitle splitSCTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_86
    return-object v0

    :cond_87
    sget-object p0, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    const-string p1, "injectMakeTitle extras is null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8f
    :goto_8f
    sget-object p0, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->TAG:Ljava/lang/String;

    const-string p1, "When get the application modified name, the input parameter shortcutInfo or context is empty."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
