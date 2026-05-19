.class public final Lcom/android/launcher3/hotseat/expand/ExpandDataParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EXPAND_KEY_CLICK_INTENT_KEY:Ljava/lang/String; = "click_intent_key"

.field private static final EXPAND_KEY_DATA:Ljava/lang/String; = "data"

.field private static final EXPAND_KEY_EXTRA_DATA:Ljava/lang/String; = "extra_data"

.field private static final EXPAND_KEY_GUID_TIP_RES:Ljava/lang/String; = "guid_tip_res"

.field private static final EXPAND_KEY_ICON_URL:Ljava/lang/String; = "icon_url"

.field private static final EXPAND_KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final EXPAND_KEY_RECEIVE_CLICK_EVENT:Ljava/lang/String; = "receive_click_event"

.field private static final EXPAND_KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final EXPAND_KEY_START_TYPE:Ljava/lang/String; = "start_type"

.field private static final EXPAND_KEY_SUB_ICON_URL:Ljava/lang/String; = "sub_icon_url"

.field public static final EXPAND_MAX_DATA_SIZE:I = 0x9

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataParser;

.field public static final TAG:Ljava/lang/String; = "ExpandDataParser"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->assembleHotseatExpandDataFromArgs$lambda$1(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static final assembleHotseatExpandDataFromArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Hotseat_expand"

    const-string v4, "ExpandDataParser"

    const-string v5, "callingPackage"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "arg"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_15
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    invoke-virtual {v7, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assembleExtraDataFromArgs source:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v9}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getExpandSourceCallingPackageMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->handleGuidTipResConfig(ILorg/json/JSONObject;)V

    invoke-static {v1, v0, v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->handExpandItemClickReceiveConfig(ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/4 v9, 0x2

    if-eq v1, v9, :cond_60

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5b

    return v5

    :cond_5b
    invoke-static {v7, v8}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->handleMultiRecommendData(Lorg/json/JSONObject;I)Z

    goto/16 :goto_1be

    :cond_60
    sget-object v1, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->INSTANCE:Lcom/oplus/quickstep/relay/RecentsRelayConfig;

    invoke-virtual {v1}, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6d

    sget-object v1, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->INSTANCE:Lcom/oplus/quickstep/relay/data/RecentRelayModel;

    invoke-virtual {v1, v0, v7, v2}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->updateData(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;)Z

    :cond_6d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandShowAppConnect()Z

    move-result v1

    if-nez v1, :cond_7a

    const-string/jumbo v0, "not support docker expand show app connect"

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_7a
    const-string v1, "assembleExtraDataFromArgs EXPAND_TYPE_APP_CONNECT"

    invoke-static {v3, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->optDataArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_86

    return v5

    :cond_86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assembleExtraDataFromArgs dataArray:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", length:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/16 v10, 0x9

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v5

    :goto_bb
    if-ge v11, v10, :cond_18c

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lorg/json/JSONObject;

    const-string v13, "extra_data"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_d2

    return v5

    :cond_d2
    const-string v13, "click_intent_key"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_d8
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_d8} :catch_1c5

    const-string v14, ""

    if-nez v13, :cond_dd

    move-object v13, v14

    :cond_dd
    :try_start_dd
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assembleExtraDataFromArgs found intent key:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_fa

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    goto :goto_fb

    :cond_fa
    const/4 v13, 0x0

    :goto_fb
    if-nez v13, :cond_ff

    const/4 v15, 0x0

    return v15

    :cond_ff
    invoke-virtual {v13}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_114

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_110

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    goto :goto_111

    :cond_110
    const/4 v15, 0x0

    :goto_111
    if-nez v15, :cond_114

    goto :goto_115

    :cond_114
    move-object v14, v15

    :goto_115
    invoke-static {v14}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_120

    const-string v15, "assembleExtraDataFromArgs found intent package failed"

    invoke-static {v3, v4, v15}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_120
    invoke-static {v12}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->createExtraDataItem(Lorg/json/JSONObject;)Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setCallPackage(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "assembleExtraDataFromArgs 2 found item:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v4, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "context"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIconUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getSubIconUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v16

    if-eqz v16, :cond_16d

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v16

    if-eqz v16, :cond_16d

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v16

    if-eqz v16, :cond_16d

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    if-eqz v5, :cond_16d

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_16e

    :cond_16d
    const/4 v5, 0x0

    :goto_16e
    invoke-static {v6, v0, v13, v15, v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->createAppConnectBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_176

    const/4 v13, 0x0

    return v13

    :cond_176
    invoke-virtual {v12, v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto/16 :goto_bb

    :cond_18c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assembleExtraDataFromArgs 2 map:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assembleExtraDataFromArgs 2 list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, v7, v9}, Lcom/android/launcher/widget/b;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V
    :try_end_1be
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_1be} :catch_1c5

    :goto_1be
    const-string v0, "assemble extra data success"

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catch_1c5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private static final assembleHotseatExpandDataFromArgs$lambda$1(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 3

    const-string v0, "$packageList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$extraDataMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerAppConnectData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static final createAppConnectBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Hotseat_expand"

    const-string v1, "e:"

    const-string v2, "ExpandDataParser"

    const-string v3, "context"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_f9

    if-nez p3, :cond_12

    goto/16 :goto_f9

    :cond_12
    :try_start_12
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start createAppConnectBitmap,iconUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "iconUri"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p4}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->decodeBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_37

    return-object v3

    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, p4}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeBitmapFromUri success. iconBitmap="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, v2, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p4

    const-string v4, "drawable"

    invoke-virtual {p4, p3, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p4, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_6d

    return-object v3

    :cond_6d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "decode subIcon success. subIcon:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->createCombinedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_92} :catch_e6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_92} :catch_d2
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_92} :catch_be
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_92} :catch_aa
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_92} :catch_96

    if-nez p0, :cond_95

    return-object v3

    :cond_95
    return-object p0

    :catch_96
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_aa
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_be
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_d2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_e6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    return-object v3
.end method

.method public static final createCombinedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    return-object v1

    :cond_1a
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXScalar(Landroid/content/res/Resources;)F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-static {p1}, Lcom/android/launcher3/icons/BaseIconFactory;->getBadgeSizeForIconSize(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v4, 0x1

    int-to-float v4, v4

    div-float v5, v4, p0

    mul-float/2addr v5, p1

    float-to-int p1, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p0, v4

    mul-float/2addr p0, v5

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr p0, v4

    float-to-int p0, p0

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    sub-int/2addr v5, p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, p1

    sub-int/2addr v6, p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, p0

    invoke-direct {v4, v5, v6, p1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createCombinedIcon desRect:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v5, "ExpandDataParser"

    invoke-static {p1, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createCombinedIcon success. newBitmap:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createExtraDataItem(Lorg/json/JSONObject;)Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;-><init>()V

    const-string v1, "icon_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "optString(EXPAND_KEY_ICON_URL)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setIconUrl(Ljava/lang/String;)V

    const-string/jumbo v1, "sub_icon_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "optString(EXPAND_KEY_SUB_ICON_URL)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setSubIconUrl(Ljava/lang/String;)V

    const-string v1, "click_intent_key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "optString(EXPAND_KEY_CLICK_INTENT_KEY)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setClickIntentKey(Ljava/lang/String;)V

    const-string/jumbo v1, "start_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "optString(EXPAND_KEY_START_TYPE)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setStartType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final decodeBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p2, :cond_21

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v0, :cond_42

    move v0, v2

    :cond_42
    if-nez p2, :cond_45

    move p2, v2

    :cond_45
    int-to-float v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, v4

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final handExpandItemClickReceiveConfig(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callingPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argObj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "receive_click_event"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getNeedFeedbackClickEventSourcePackageMap()Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_2b
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getNeedFeedbackClickEventSourcePackageMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_39
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getNeedFeedbackClickEventSourcePackageMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "has no receive_click_event key,source:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string p2, "ExpandDataParser"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    return-void
.end method

.method public static final handleGuidTipResConfig(ILorg/json/JSONObject;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "argObj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "guid_tip_res"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ExpandDataParser"

    const-string v3, "Hotseat_expand"

    if-eqz v0, :cond_58

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "guidTipRes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_52

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->getExpandSourceTipResMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get guid tips:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_52
    const-string p0, "METHOD_UPDATE_DOCKER_EXTRA_ITEM has no guid tip res"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_58
    const-string p0, "has no guid tip res"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

.method public static final handleMultiRecommendData(Lorg/json/JSONObject;I)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandShowMultiRecommendApp()Z

    move-result v0

    const-string v1, "ExpandDataParser"

    const-string v2, "Hotseat_expand"

    const/4 v3, 0x0

    if-nez v0, :cond_17

    const-string/jumbo p0, "not support docker expand show multi recommend app"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_17
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "screen folded no need show multi recommend app"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_24
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->optDataArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_2b

    return v3

    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_34
    if-ge v3, v4, :cond_70

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->isAvailableAddToExpandPkg(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "multi recommend add pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "pkg"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_70
    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateMultiRecommendState(Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final optDataArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "arg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method
