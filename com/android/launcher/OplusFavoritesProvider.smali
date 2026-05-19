.class public Lcom/android/launcher/OplusFavoritesProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.launcher.OplusFavoritesProvider"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final EXTRAS_LOCATE_ITEMS:Ljava/lang/String; = "EXTRAS_LOCATE_ITEMS"

.field private static final EXTRAS_LOCATE_ITEMS_RESULT:Ljava/lang/String; = "EXTRAS_LOCATE_ITEMS_RESULT"

.field private static final EXTRA_APP_LAUNCH_ANIM_DURATION:Ljava/lang/String; = "app_launch_anim_duration"

.field private static final EXTRA_BACKGROUND_TRANSPARENT:Ljava/lang/String; = "background_transparent"

.field private static final EXTRA_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final EXTRA_LAUNCHER_TABLE:Ljava/lang/String; = "launcher_table"

.field private static final EXTRA_SLIDE_DOWN_TYPE:Ljava/lang/String; = "slide_down_type"

.field public static final IS_LAYOUT_LOCKED:Ljava/lang/String; = "is_layout_locked"

.field private static final METHOD_APP_LAUNCH_ANIM_DURATION_FOR_EVALUATION:Ljava/lang/String; = "app_launch_anim_duration_for_evaluation"

.field private static final METHOD_DRAWER_DIALOG_GLOBAL_IS_AGREE:Ljava/lang/String; = "drawer_dialog_global_is_agree"

.field private static final METHOD_GET_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "getLauncherModeSettings"

.field private static final METHOD_GET_SLIDE_DOWN_TYPE:Ljava/lang/String; = "get_slide_down_type"

.field public static final METHOD_IS_GET:Ljava/lang/String; = "method_is_get"

.field public static final METHOD_IS_LAYOUT_LOCKED:Ljava/lang/String; = "isLayoutLocked"

.field private static final METHOD_NOTIFY_BRANCH_SEARCH_QUIT_WITHOUT_CTA:Ljava/lang/String; = "notify_quit_without_cta"

.field private static final METHOD_NOTIFY_SEARCH_START_DRAG:Ljava/lang/String; = "notify_search_drag"

.field private static final METHOD_QUERY_ITEM_INFO:Ljava/lang/String; = "query_item_info"

.field private static final METHOD_REQUEST_LOCATE_ITEM_INFO:Ljava/lang/String; = "request_locate_item_info"

.field private static final METHOD_REQ_SUBSCRIBED_CARDS:Ljava/lang/String; = "req_subscribed_cards"

.field private static final METHOD_SET_SLIDE_DOWN_TYPE:Ljava/lang/String; = "set_slide_down_type"

.field private static final METHOD_SET_TASKBAR_BACKGROUND:Ljava/lang/String; = "set_taskbar_background"

.field private static final METHOD_UPDATE_DOCKER_EXTRA_ITEM:Ljava/lang/String; = "update_docker_extra_item"

.field private static final METHOD_UPDATE_FOLDER_RECOMMEND_SWITCH:Ljava/lang/String; = "update_folder_recommend_switch"

.field private static final METHOD_UPDATE_RECOMMEND_APPS_INFO:Ljava/lang/String; = "update_folder_recommend_applist"

.field public static final TAG:Ljava/lang/String; = "OplusFavoritesProvider"

.field private static final UPDATE_DOCKER_IS_SUCCESS:Ljava/lang/String; = "update_docker_is_success"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.launcher.OplusFavoritesProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/OplusFavoritesProvider;->lambda$call$0(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$call$0(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 12

    new-instance v7, Lcom/android/launcher3/dragndrop/SearchItemDragListener;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/dragndrop/SearchItemDragListener;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0, v7}, Lcom/android/launcher3/util/ActivityTracker;->registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    const-string p0, "OplusFavoritesProvider"

    const-string p1, "call: METHOD_NOTIFY_SEARCH_START_DRAG- return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFavoritesProvider"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string/jumbo v2, "request_locate_item_info"

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_4f0

    goto/16 :goto_132

    :sswitch_2a
    const-string/jumbo v0, "query_launcher_theme_card_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_132

    :cond_35
    const/16 v6, 0x13

    goto/16 :goto_132

    :sswitch_39
    const-string/jumbo v0, "notify_quit_without_cta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_132

    :cond_44
    const/16 v6, 0x12

    goto/16 :goto_132

    :sswitch_48
    const-string/jumbo v0, "update_docker_extra_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_132

    :cond_53
    const/16 v6, 0x11

    goto/16 :goto_132

    :sswitch_57
    const-string/jumbo v0, "set_taskbar_background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_132

    :cond_62
    const/16 v6, 0x10

    goto/16 :goto_132

    :sswitch_66
    const-string/jumbo v0, "update_folder_recommend_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_132

    :cond_71
    const/16 v6, 0xf

    goto/16 :goto_132

    :sswitch_75
    const-string/jumbo v0, "set_slide_down_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_132

    :cond_80
    const/16 v6, 0xe

    goto/16 :goto_132

    :sswitch_84
    const-string v0, "app_launch_anim_duration_for_evaluation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_132

    :cond_8e
    const/16 v6, 0xd

    goto/16 :goto_132

    :sswitch_92
    const-string v0, "establish_remote_animation_connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_132

    :cond_9c
    const/16 v6, 0xc

    goto/16 :goto_132

    :sswitch_a0
    const-string/jumbo v0, "setLaunchViewInfoForWindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_132

    :cond_ab
    const/16 v6, 0xb

    goto/16 :goto_132

    :sswitch_af
    const-string v0, "isLayoutLocked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto/16 :goto_132

    :cond_b9
    const/16 v6, 0xa

    goto/16 :goto_132

    :sswitch_bd
    const-string v0, "getLauncherModeSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto/16 :goto_132

    :cond_c7
    const/16 v6, 0x9

    goto/16 :goto_132

    :sswitch_cb
    const-string/jumbo v0, "notify_search_drag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto/16 :goto_132

    :cond_d6
    move v6, v3

    goto/16 :goto_132

    :sswitch_d9
    const-string/jumbo v0, "query_item_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    goto :goto_132

    :cond_e3
    const/4 v6, 0x7

    goto :goto_132

    :sswitch_e5
    const-string v0, "add_themecard_to_launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto :goto_132

    :cond_ee
    const/4 v6, 0x6

    goto :goto_132

    :sswitch_f0
    const-string v0, "drawer_dialog_global_is_agree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    goto :goto_132

    :cond_f9
    const/4 v6, 0x5

    goto :goto_132

    :sswitch_fb
    const-string v0, "get_slide_down_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_104

    goto :goto_132

    :cond_104
    const/4 v6, 0x4

    goto :goto_132

    :sswitch_106
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    goto :goto_132

    :cond_10d
    const/4 v6, 0x3

    goto :goto_132

    :sswitch_10f
    const-string/jumbo v0, "update_folder_recommend_applist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_119

    goto :goto_132

    :cond_119
    const/4 v6, 0x2

    goto :goto_132

    :sswitch_11b
    const-string/jumbo v0, "replace_launcher_card_and_widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_125

    goto :goto_132

    :cond_125
    move v6, v4

    goto :goto_132

    :sswitch_127
    const-string/jumbo v0, "req_subscribed_cards"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    goto :goto_132

    :cond_131
    move v6, v5

    :goto_132
    const-string v0, "EXTRAS_LOCATE_ITEMS"

    const-string/jumbo v7, "slide_down_type"

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_542

    goto/16 :goto_4d4

    :pswitch_13d  #0x13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "METHOD_QUERY_THEME_CARD_LIST, arg:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object p1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_16b

    invoke-static {p1}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->queryThemeCardList(Lcom/android/launcher/Launcher;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "themeCardList"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_170

    :cond_16b
    const-string p1, "METHOD_QUERY_THEME_CARD_LIST faild, for launcher is null"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_170
    return-object p0

    :pswitch_171  #0x12
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->handleBranchSearchPermissionDenied(Landroid/content/Context;)V

    return-object v8

    :pswitch_179  #0x11
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "METHOD_UPDATE_DOCKER_EXTRA_ITEM, caller:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",arg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hotseat_expand"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p2}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->isAvailableCallingHotseatExpand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "update_docker_is_success"

    if-nez v0, :cond_1b3

    invoke-static {p0, p2}, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->isAvailableCalling(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b3

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_1b3
    invoke-static {p0, p2, p3}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->assembleHotseatExpandDataFromArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_1bb  #0x10
    if-eqz p3, :cond_1e1

    const-string p0, "background_transparent"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e1

    invoke-virtual {p3, p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isInParallelWindow: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->setInParallelWindow(Z)V

    :cond_1e1
    return-object v8

    :pswitch_1e2  #0xf
    const-string v0, "METHOD_UPDATE_FOLDER_RECOMMEND_SWITCH: arg = "

    invoke-static {v0, p2, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4d4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_4d4

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d4

    sget-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v0, p2}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->updateFolderRecommendSwitch(Ljava/lang/String;)V

    goto/16 :goto_4d4

    :pswitch_202  #0xe
    if-eqz p3, :cond_215

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_215

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V

    :cond_215
    return-object v8

    :pswitch_216  #0xd
    const-wide/16 p1, -0x1

    const-string v0, "app_launch_anim_duration"

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Evaluation duration: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p3, "key_evaluation_duration"

    invoke-static {p0, p3, p1, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    sput-wide p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    return-object v8

    :pswitch_23e  #0xc
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;->establishRemoteAnimationConnection(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_247  #0xb
    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->updateStartTimeMillis()V

    invoke-static {p3}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->parseData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_24f  #0xa
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p2, "method_is_get"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "is_layout_locked"

    if-eqz p2, :cond_26d

    sget-object p2, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_28e

    :cond_26d
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sget-object p3, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setLauncherLayoutLocked(Landroid/content/Context;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call METHOD_IS_LAYOUT_LOCKED ,isLayoutLocked:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28e
    return-object p1

    :pswitch_28f  #0x9
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherModeForString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "launcher_mode"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object p0

    const-string p2, "launcher_table"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result p0

    const-string p2, "launcher_mode_vaule"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_2b8  #0x8
    const-string p1, "call: METHOD_NOTIFY_SEARCH_START_DRAG"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2cf

    const-string p0, "Launcher is Locked"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_2cf
    if-nez p3, :cond_2d7

    const-string p0, "call: extras is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_2d7
    const-class p1, Landroid/content/Intent;

    const-string p2, "intent"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_2e9

    const-string p0, "call: intent is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_2e9
    const-string/jumbo p2, "title"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_2ff
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_307
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2ff .. :try_end_307} :catch_307

    :catch_307
    invoke-static {v8}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p3, v5, v5, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/common/debug/c;

    invoke-direct {v2, p3, p0, p1, p2}, Lcom/android/common/debug/c;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :try_start_323
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_326
    .catch Ljava/lang/InterruptedException; {:try_start_323 .. :try_end_326} :catch_33d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_323 .. :try_end_326} :catch_327

    goto :goto_352

    :catch_327
    move-exception p0

    const-string p1, "ExecutionException:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_352

    :catch_33d
    move-exception p0

    const-string p1, "InterruptedException:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_352
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "key_ready"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_35d  #0x7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isFeatureItemLocateDisable()Z

    move-result p2

    if-nez p2, :cond_3b6

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "query_item_info: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/android/launcher/OplusFavoritesProvider$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/OplusFavoritesProvider$1;-><init>(Lcom/android/launcher/OplusFavoritesProvider;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->getSearchAppList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "EXTRAS_LOCATE_ITEMS_RESULT"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    new-instance p2, Lcom/android/exceptionmonitor/LauncherExceptionEvent;

    invoke-direct {p2, v3, v5, v5}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;-><init>(IZZ)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    return-object p1

    :cond_3b6
    return-object v8

    :pswitch_3b7  #0x6
    const-string p0, "METHOD_ADD_THEME_CARD_TO_LAUNCHER, arg:"

    invoke-static {p0, p2, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_3d4

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetEditViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    move-result-object p1

    if-eqz p1, :cond_3d4

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetEditViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->requestAdd(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3d9

    :cond_3d4
    const-string p0, "METHOD_ADD_THEME_CARD_TO_LAUNCHER faild, for launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d9
    return-object v8

    :pswitch_3da  #0x5
    const-string/jumbo p1, "selectDisagree"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p2

    new-instance p3, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;

    const-string v0, "authorize"

    invoke-direct {p3, v0}, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isSelectDisagree:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/common/util/LauncherSharedPrefs;->setSelectDisagree(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstDrawerSearchGlobal(Landroid/content/Context;Z)V

    if-eqz p1, :cond_428

    sget-object p1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setDrawerAppGlobalSearch(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statSearchDenyAuthorizationClickCount()V

    goto :goto_42f

    :cond_428
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startGlobSearch(Landroid/content/Context;)V

    :goto_42f
    return-object v8

    :pswitch_430  #0x4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getOldSlideDownTypeForBreeno(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v7, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_441  #0x3
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFeatureItemLocateDisable()Z

    move-result p1

    if-nez p1, :cond_48e

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    new-instance p2, Lcom/android/launcher/locateaction/LocateEvent;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Lcom/android/launcher/locateaction/LocateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    new-instance p1, Lcom/android/exceptionmonitor/LauncherExceptionEvent;

    invoke-direct {p1, v3, v5, v4}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;-><init>(IZZ)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_48e
    return-object v8

    :pswitch_48f  #0x2
    const-string v0, "METHOD_UPDATE_RECOMMEND_APPS_INFO: arg = "

    invoke-static {v0, p2, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4d4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_4d4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_4d4

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_4d4

    invoke-virtual {v0, p2}, Lcom/android/launcher3/OplusLauncherModel;->onMarketRecommendDataAdd(Ljava/lang/String;)V

    goto :goto_4d4

    :pswitch_4ac  #0x1
    const-string p0, "METHOD_TRANSFORM_BETWEEN_CARD_AND_WIDGET, arg:"

    invoke-static {p0, p2, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_4c9

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object p1

    if-eqz p1, :cond_4c9

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->requestTransform(Ljava/lang/String;)V

    goto :goto_4ce

    :cond_4c9
    const-string p0, "METHOD_TRANSFORM_BETWEEN_CARD_AND_WIDGET faild, for launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4ce
    return-object v8

    :pswitch_4cf  #0x0
    invoke-static {p3}, Lcom/android/launcher3/card/LauncherCardUtil;->requestSubscribedCards(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4d4
    :goto_4d4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v1

    :try_start_4e0
    const-string v2, "com.android.launcher.settings"

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_4e6
    .catchall {:try_start_4e0 .. :try_end_4e6} :catchall_4ea

    invoke-virtual {p0, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-object p1

    :catchall_4ea
    move-exception p1

    invoke-virtual {p0, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    throw p1

    nop

    :sswitch_data_4f0
    .sparse-switch
        -0x7756db41 -> :sswitch_127
        -0x74a08939 -> :sswitch_11b
        -0x6babed1f -> :sswitch_10f
        -0x5cd8dea3 -> :sswitch_106
        -0x41813f40 -> :sswitch_fb
        -0x2cca6576 -> :sswitch_f0
        -0x22461320 -> :sswitch_e5
        -0xd46b05d -> :sswitch_d9
        -0x984e68b -> :sswitch_cb
        0x755b71c -> :sswitch_bd
        0x36d2851e -> :sswitch_af
        0x37ea0831 -> :sswitch_a0
        0x4c15f6cc -> :sswitch_92
        0x6062043d -> :sswitch_84
        0x627b55cc -> :sswitch_75
        0x65f03a52 -> :sswitch_66
        0x68cdb89c -> :sswitch_57
        0x6cad5f6b -> :sswitch_48
        0x73beb65f -> :sswitch_39
        0x7616726f -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_542
    .packed-switch 0x0
        :pswitch_4cf  #00000000
        :pswitch_4ac  #00000001
        :pswitch_48f  #00000002
        :pswitch_441  #00000003
        :pswitch_430  #00000004
        :pswitch_3da  #00000005
        :pswitch_3b7  #00000006
        :pswitch_35d  #00000007
        :pswitch_2b8  #00000008
        :pswitch_28f  #00000009
        :pswitch_24f  #0000000a
        :pswitch_247  #0000000b
        :pswitch_23e  #0000000c
        :pswitch_216  #0000000d
        :pswitch_202  #0000000e
        :pswitch_1e2  #0000000f
        :pswitch_1bb  #00000010
        :pswitch_179  #00000011
        :pswitch_171  #00000012
        :pswitch_13d  #00000013
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 2

    const-string p0, "OplusFavoritesProvider"

    const-string/jumbo v0, "onCreate"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentAppEditTable()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/launcher3/LauncherSettings$Favorites;->getAppEditContentUri()Landroid/net/Uri;

    move-result-object v1

    :cond_16
    move-object v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", targetUri:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusFavoritesProvider"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method
