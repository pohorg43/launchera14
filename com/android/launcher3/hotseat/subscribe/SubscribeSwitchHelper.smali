.class public final Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubscribeSwitchHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscribeSwitchHelper.kt\ncom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,506:1\n37#2,2:507\n*S KotlinDebug\n*F\n+ 1 SubscribeSwitchHelper.kt\ncom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper\n*L\n142#1:507,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

.field private static final TAG:Ljava/lang/String; = "SubscribeSwitchHelper"

.field private static final settingKeyItemTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final subscribeTypePositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static switchChangedDuringIdpNotMatchFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    const/4 v0, 0x3

    new-array v1, v0, [Lh4/j;

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "enable_launcher_tools_allapps_entry"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lh4/j;

    const-string v7, "enable_launcher_tools_globalsearch_entry"

    invoke-direct {v6, v7, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v6, v1, v5

    const/16 v6, 0xce

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lh4/j;

    const-string v9, "enable_launcher_tools_filemanager_entry"

    invoke-direct {v8, v9, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x2

    aput-object v8, v1, v7

    invoke-static {v1}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->settingKeyItemTypeMap:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v1, v1, [Lh4/j;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lh4/j;

    invoke-direct {v9, v2, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v7

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v0

    invoke-static {v1}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->subscribeTypePositionMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addSubscribeDividerIfNecessary(Lcom/android/launcher/Launcher;I)Z
    .registers 6

    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    const-string v1, "addSubscribeDividerIfNecessary,hasSubscribeDividerInBgData:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerInBgData()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasSubscribeDividerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",targetCellX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",isFoldScreenFolded:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Taskbar"

    const-string v2, "SubscribeSwitchHelper"

    invoke-static {v1, v0, p2, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerInBgData()Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    :cond_40
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataNormalAndExpandItemCount()I

    move-result v0

    if-ge v0, p2, :cond_47

    return v1

    :cond_47
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_8d

    :cond_55
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v0

    if-eqz v0, :cond_5c

    return v1

    :cond_5c
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->hasExceptSubscribeItemInRightArea()Z

    move-result v0

    if-nez v0, :cond_63

    return v1

    :cond_63
    new-instance v0, Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/HotseatDividerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusHotseat;->updateCountXForItemAdded()V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :goto_8d
    return p2
.end method

.method private final getInsertCellX(ILjava/util/ArrayList;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v5, 0xcc

    if-ne v4, v5, :cond_1c

    move v2, v0

    goto :goto_8

    :cond_1c
    const/16 v5, 0xce

    if-ne v4, v5, :cond_8

    move v3, v0

    goto :goto_8

    :cond_22
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_3b

    packed-switch p1, :pswitch_data_46

    goto :goto_45

    :pswitch_34  #0xcd
    move v1, v3

    goto :goto_45

    :pswitch_36  #0xcc
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_45

    :cond_3b
    packed-switch p1, :pswitch_data_50

    goto :goto_45

    :pswitch_3f  #0xce
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_45

    :pswitch_44  #0xcd
    move v1, v2

    :goto_45
    :pswitch_45  #0xce, 0xcc
    return v1

    :pswitch_data_46
    .packed-switch 0xcc
        :pswitch_36  #000000cc
        :pswitch_34  #000000cd
        :pswitch_45  #000000ce
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0xcc
        :pswitch_45  #000000cc
        :pswitch_44  #000000cd
        :pswitch_3f  #000000ce
    .end packed-switch
.end method

.method private final getOriginalViews(Lcom/android/launcher/Launcher;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-nez p1, :cond_14

    return-object p0

    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_25

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_25
    return-object p0
.end method

.method public static final getSwitchOffSubscribeItemTypeList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v3

    if-nez v3, :cond_24

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_24
    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v3

    if-nez v3, :cond_38

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_38
    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v1

    if-nez v1, :cond_4b

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static final getSwitchOnSubscribeItemList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable()Z

    move-result v3

    const-string v4, "context"

    if-eqz v3, :cond_33

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v3

    if-eqz v3, :cond_33

    const/16 v3, 0xcc

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->createSubscribeItemInfo(II)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_59

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v3

    if-eqz v3, :cond_59

    const/16 v3, 0xcd

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->createSubscribeItemInfo(II)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable()Z

    move-result v2

    if-eqz v2, :cond_7f

    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v1

    if-eqz v1, :cond_7f

    const/16 v1, 0xce

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->createSubscribeItemInfo(II)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    return-object v0
.end method

.method private final onSubscribeItemDisable(I)V
    .registers 11

    invoke-static {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->bgDataHasThisSubscribeItem(I)Z

    move-result v0

    const-string/jumbo v1, "onSubscribeItemDisable,itemType:"

    const-string v2, "SubscribeSwitchHelper"

    const-string v3, "Taskbar"

    if-nez v0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",no target item disable,return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isFoldScreenFolded:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_9a

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isLauncherMatchFoldingMode()Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_9a

    :cond_59
    invoke-static {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatSubscribeItemView(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_66

    const-string/jumbo p0, "onSubscribeItemDisable,removeView is null,return"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_66
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v6, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    sub-int/2addr v1, v6

    if-gtz v1, :cond_90

    invoke-direct {p0, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->removeSubscribeDivider(Lcom/android/launcher/Launcher;)V

    :cond_90
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p0

    if-eqz p0, :cond_bf

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->refreshExpandNotShowCellX(Lcom/android/launcher3/Launcher;)V

    goto :goto_bf

    :cond_9a
    :goto_9a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeItem(Ljava/lang/Integer;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_a5

    return-void

    :cond_a5
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v6, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    sub-int/2addr v1, v6

    if-gtz v1, :cond_bc

    invoke-direct {p0, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->removeSubscribeDivider(Lcom/android/launcher/Launcher;)V

    :cond_bc
    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->updateBgDataSubscribeAndExpandItemCellX()V

    :cond_bf
    :goto_bf
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->updateAllChildLayoutParams(Lcom/android/launcher3/OplusHotseat;)V

    return-void
.end method

.method private final onSubscribeItemEnable(I)V
    .registers 11

    invoke-static {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->bgDataHasThisSubscribeItem(I)Z

    move-result v0

    const-string/jumbo v1, "onSubscribeItemEnable,itemType:"

    const-string v2, "SubscribeSwitchHelper"

    const-string v3, "Taskbar"

    if-eqz v0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",no need repeat add,return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->getInsertCellX(ILjava/util/ArrayList;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->createSubscribeItemInfo(II)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v6

    const-string v7, ",insertCellX:"

    const-string v8, ",isFoldScreenFolded:"

    invoke-static {v1, p1, v7, v4, v8}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, v6, v3, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-nez v6, :cond_d0

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isLauncherMatchFoldingMode()Z

    move-result v1

    if-nez v1, :cond_52

    goto/16 :goto_d0

    :cond_52
    invoke-direct {p0, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->getOriginalViews(Lcom/android/launcher/Launcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v5}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->createSubscribeItemView(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/OplusHotseat;->updateCountXForItemAdded()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v7

    invoke-interface {v7, v6, v5}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v5, p1}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v0, v6}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->addSubscribeDividerIfNecessary(Lcom/android/launcher/Launcher;I)Z

    move-result v7

    if-eqz v7, :cond_93

    const/4 p1, 0x2

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v4

    if-eqz v4, :cond_92

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    move v4, v6

    :cond_93
    const-string/jumbo v6, "onSubscribeItemEnable,insertCellX:"

    const-string v7, ",insertCount:"

    const-string v8, ",originalViews.size:"

    invoke-static {v6, v4, v7, p1, v8}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",targetViews.size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v4, p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->updateCellXStateAfterInsert(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;II)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    invoke-interface {v5, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/OplusHotseat;->updateGridSize([Landroid/view/View;I)V

    goto :goto_e4

    :cond_d0
    :goto_d0
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v5, p1}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    add-int/2addr v4, p1

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->addSubscribeDividerIfNecessary(Lcom/android/launcher/Launcher;I)Z

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->updateBgDataSubscribeAndExpandItemCellX()V

    :goto_e4
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->updateAllChildLayoutParams(Lcom/android/launcher3/OplusHotseat;)V

    return-void
.end method

.method public static final onSubscribeItemStateChange(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "settingsKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    sget-object v1, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->settingKeyItemTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0xcd

    if-ne p0, v1, :cond_1b

    return-void

    :cond_1b
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isLauncherMatchFoldingMode()Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->switchChangedDuringIdpNotMatchFlag:Z

    const-string p0, "Taskbar"

    const-string p1, "SubscribeSwitchHelper"

    const-string/jumbo v0, "onSubscribeItemStateChange !isLauncherMatchFoldingMode return"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    if-eqz p1, :cond_35

    invoke-direct {v0, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemEnable(I)V

    goto :goto_38

    :cond_35
    invoke-direct {v0, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemDisable(I)V

    :goto_38
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandChangeIsUpdate(Z)V

    :cond_42
    return-void
.end method

.method private final removeSubscribeDivider(Lcom/android/launcher/Launcher;)V
    .registers 8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_21

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerInBgData()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    if-nez p0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-array v1, v1, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p0, v1, v0

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_4b

    :cond_21
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object p0

    if-nez p0, :cond_28

    return-void

    :cond_28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2f

    return-void

    :cond_2f
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-array v1, v1, [Lcom/android/launcher3/model/data/ItemInfo;

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v1, v0

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    move-object p0, v2

    :goto_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeSubscribeDivider,subscribeDividerInfo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string v0, "SubscribeSwitchHelper"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    return-void
.end method

.method public static final subscribeItemSwitchOffAndRemoveDirtyData(Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getAppContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeAllAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v1

    goto :goto_51

    :cond_20
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeGlobalSearchItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v1

    goto :goto_51

    :cond_2b
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeFileManagerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v1

    goto :goto_51

    :cond_36
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v1

    if-eqz v1, :cond_50

    :cond_4e
    move v1, v4

    goto :goto_51

    :cond_50
    move v1, v3

    :goto_51
    const/4 v2, 0x0

    if-nez v1, :cond_77

    if-eqz p1, :cond_77

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_6d

    iget-object p1, p1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p1, :cond_6d

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-array v5, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p0, v5, v3

    invoke-virtual {p1, v0, v5}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_6d
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_ac

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_ac

    :cond_77
    if-eqz v1, :cond_ac

    if-eqz p1, :cond_ac

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_ac

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataNormalItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v5

    if-nez p1, :cond_ac

    if-nez v5, :cond_ac

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_a8

    iget-object p1, p1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p1, :cond_a8

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p0, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_a8
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    return v4

    :cond_ac
    :goto_ac
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public static final updateBgDataSubscribeAndExpandItemCellX()V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExpandAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v5, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->subscribeTypePositionMap:Ljava/util/Map;

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    goto :goto_1b

    :cond_43
    new-instance v3, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    invoke-direct {v3}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v1, v3}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBgDataSubscribeAndExpandItemCellX,subscribeAndDividerItems.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",expandAndDividerItems.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",normalItemCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Taskbar"

    const-string v5, "SubscribeSwitchHelper"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update subscribeAndDividerItems:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :cond_ac
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_b1
    if-ge v3, v6, :cond_f9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v8, v0

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const-string/jumbo v7, "update expandAndDividerItems:"

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :cond_f9
    return-void
.end method

.method private final updateCellXStateAfterInsert(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/lit8 v2, p4, -0x1

    add-int/2addr v2, v1

    if-lt v2, p3, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v0, p4

    invoke-virtual {v1, p2, v0}, Lcom/android/launcher3/OplusHotseat;->updateItemCellXState(Landroid/view/View;I)V

    goto :goto_4

    :cond_2e
    return-void
.end method

.method public static final updateSubscribeItemIfNecessary()V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    const-string v1, "SubscribeSwitchHelper"

    const-string v2, "Taskbar"

    if-eqz v0, :cond_16

    const-string/jumbo v3, "updateSubscribeItemIfNecessary:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->switchChangedDuringIdpNotMatchFlag:Z

    invoke-static {v3, v4, v2, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_16
    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_1cf

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v4

    if-eqz v4, :cond_1cf

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto/16 :goto_1cf

    :cond_2c
    sget-boolean v3, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->switchChangedDuringIdpNotMatchFlag:Z

    if-nez v3, :cond_37

    const-string/jumbo v0, "no need updateSubscribeItem,return"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->switchChangedDuringIdpNotMatchFlag:Z

    sget-object v4, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getAppContext()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Integer;

    move v7, v3

    :goto_4d
    if-ge v7, v5, :cond_58

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_58
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_73

    sget-object v7, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v7}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    move v7, v8

    goto :goto_74

    :cond_73
    move v7, v3

    :goto_74
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v9

    if-eqz v9, :cond_8d

    sget-object v9, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v9}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    move v7, v8

    :cond_8d
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v4

    const/4 v9, 0x2

    if-eqz v4, :cond_a7

    sget-object v4, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v9

    move v7, v8

    :cond_a7
    new-array v4, v5, [Ljava/lang/Integer;

    move v10, v3

    :goto_aa
    if-ge v10, v5, :cond_b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_aa

    :cond_b5
    const/16 v5, 0xcc

    invoke-static {v5}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->bgDataHasThisSubscribeItem(I)Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v3

    :cond_c3
    const/16 v10, 0xcd

    invoke-static {v10}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->bgDataHasThisSubscribeItem(I)Z

    move-result v11

    if-eqz v11, :cond_d1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v8

    :cond_d1
    const/16 v11, 0xce

    invoke-static {v11}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->bgDataHasThisSubscribeItem(I)Z

    move-result v12

    if-eqz v12, :cond_df

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v9

    :cond_df
    if-eqz v0, :cond_143

    const-string/jumbo v0, "updateSubscribeItemIfNecessary,subscribeSettingState[0]:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v12, v6, v3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",subscribeSettingState[1]:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",subscribeSettingState[2]:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",subscribeBgDataState[0]:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",subscribeBgDataState[1]:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",subscribeBgDataState[2]:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_143
    aget-object v0, v6, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_16a

    aget-object v0, v6, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_165

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v0, v5}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemEnable(I)V

    goto :goto_16a

    :cond_165
    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v0, v5}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemDisable(I)V

    :cond_16a
    :goto_16a
    aget-object v0, v6, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v4, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_191

    aget-object v0, v6, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v4, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_18c

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v0, v10}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemEnable(I)V

    goto :goto_191

    :cond_18c
    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v0, v10}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemDisable(I)V

    :cond_191
    :goto_191
    aget-object v0, v6, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v4, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1b8

    aget-object v0, v6, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v4, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1b3

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v0, v11}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemEnable(I)V

    goto :goto_1b8

    :cond_1b3
    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v0, v11}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemDisable(I)V

    :cond_1b8
    :goto_1b8
    if-nez v7, :cond_1cf

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerInBgData()Z

    move-result v0

    if-eqz v0, :cond_1cf

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1c7

    return-void

    :cond_1c7
    sget-object v1, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-direct {v1, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->removeSubscribeDivider(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->updateBgDataSubscribeAndExpandItemCellX()V

    :cond_1cf
    :goto_1cf
    return-void
.end method


# virtual methods
.method public final getSettingKeyItemTypeMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->settingKeyItemTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSubscribeTypePositionMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->subscribeTypePositionMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSwitchChangedDuringIdpNotMatchFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->switchChangedDuringIdpNotMatchFlag:Z

    return p0
.end method

.method public final setSwitchChangedDuringIdpNotMatchFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->switchChangedDuringIdpNotMatchFlag:Z

    return-void
.end method
