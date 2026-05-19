.class public final Lcom/oplus/seedling/sdk/utils/DataUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDataUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataUtils.kt\ncom/oplus/seedling/sdk/utils/DataUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n81#1,7:333\n81#1,7:340\n81#1,7:347\n81#1,7:354\n81#1,7:361\n81#1,7:368\n81#1,7:375\n81#1,7:382\n81#1,7:389\n81#1,7:396\n81#1,7:403\n81#1,7:410\n81#1,7:421\n320#1,10:428\n81#1,7:438\n320#1,10:445\n81#1,7:455\n320#1,10:462\n81#1,7:472\n300#1,16:479\n1549#2:417\n1620#2,3:418\n*S KotlinDebug\n*F\n+ 1 DataUtils.kt\ncom/oplus/seedling/sdk/utils/DataUtils\n*L\n163#1:333,7\n164#1:340,7\n165#1:347,7\n166#1:354,7\n167#1:361,7\n168#1:368,7\n172#1:375,7\n174#1:382,7\n175#1:389,7\n176#1:396,7\n177#1:403,7\n257#1:410,7\n270#1:421,7\n270#1:428,10\n275#1:438,7\n275#1:445,10\n280#1:455,7\n280#1:462,10\n285#1:472,7\n287#1:479,16\n263#1:417\n263#1:418,3\n*E\n"
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE_IMPORTANCE:I = 0x1

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/DataUtils;

.field private static final KEY_CANCEL_PANEL_ACTION_CONFIG:Ljava/lang/String; = "cancelPanelActionConfig"

.field private static final KEY_CONTROL_ACTION:Ljava/lang/String; = "controlAction"

.field private static final KEY_DATA_SOURCE_PKG_NAME:Ljava/lang/String; = "dataSourcePkgName"

.field private static final KEY_EXTENSIBLE_ACTION:Ljava/lang/String; = "extensibleAction"

.field private static final KEY_FOCUS_TIMESTAMP:Ljava/lang/String; = "focus_timestamp"

.field private static final KEY_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final KEY_LOCK_SCREEN_SHOW_HOST_MAP:Ljava/lang/String; = "lockScreenShowHostMap"

.field private static final KEY_MILESTONE:Ljava/lang/String; = "isMilestone"

.field private static final KEY_NOTIFICATION_ID_LIST:Ljava/lang/String; = "notificationIdList"

.field private static final KEY_OPTIONS:Ljava/lang/String; = "options"

.field public static final KEY_PAGE_ID:Ljava/lang/String; = "pageId"

.field private static final KEY_PANEL_ACTION_CONFIG_MAP:Ljava/lang/String; = "panelActionConfigMap"

.field private static final KEY_REMIND_TYPE:Ljava/lang/String; = "remind_type"

.field private static final KEY_REQUEST_HIDE_STATUS_BAR:Ljava/lang/String; = "requestHideStatusBar"

.field private static final KEY_REQUEST_SHOW_PANEL:Ljava/lang/String; = "requestShowPanel"

.field private static final KEY_SHOULD_FOCUS:Ljava/lang/String; = "should_focus"

.field private static final KEY_SHOW_HOST_MAP:Ljava/lang/String; = "showHostMap"

.field private static final KEY_UI_DATA:Ljava/lang/String; = "ui_data"

.field private static final TAG:Ljava/lang/String; = "DataUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/DataUtils;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/DataUtils;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/DataUtils;->INSTANCE:Lcom/oplus/seedling/sdk/utils/DataUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getExtensibleActionMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const-string v2, "extensibleAction"

    if-eqz p0, :cond_11

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v1, 0x1

    :cond_11
    const/4 v3, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/json/JSONObject;

    if-nez v1, :cond_1d

    move-object p0, v3

    :cond_1d
    check-cast p0, Lorg/json/JSONObject;

    if-nez p0, :cond_22

    goto :goto_36

    :cond_22
    move-object v0, p0

    goto :goto_36

    :cond_24
    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DataUtils"

    const-string v6, "has no key, key:extensibleAction, or value is null"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_36
    sget-object v4, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DataUtils"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_57
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_60
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_73

    move-object v4, v3

    :cond_73
    if-eqz v4, :cond_60

    if-eqz v2, :cond_7b

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_7b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "DataUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonObjectToMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_a4
    .catchall {:try_start_57 .. :try_end_a4} :catchall_a5

    goto :goto_d6

    :catchall_a5
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_d1

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change json to map error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "DataUtils"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_d1
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_d6
    return-object p0
.end method

.method private static final getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONObject;

    if-eqz p1, :cond_35

    move-object v1, p0

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_35

    :cond_1d
    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string p0, "has no key:"

    const-string v0, " or value is null"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DataUtils"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_35
    :goto_35
    return-object v1
.end method

.method public static final getLockScreenShowHostMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const-string v2, "lockScreenShowHostMap"

    if-eqz p0, :cond_11

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v1, 0x1

    :cond_11
    const/4 v3, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/json/JSONObject;

    if-nez v1, :cond_1d

    move-object p0, v3

    :cond_1d
    check-cast p0, Lorg/json/JSONObject;

    if-nez p0, :cond_22

    goto :goto_36

    :cond_22
    move-object v0, p0

    goto :goto_36

    :cond_24
    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DataUtils"

    const-string v6, "has no key, key:lockScreenShowHostMap, or value is null"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_36
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-nez v5, :cond_54

    move-object v4, v3

    :cond_54
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3f

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_69
    return-object p0
.end method

.method private static final getNotificationIdList(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "notificationIdList"

    if-eqz p0, :cond_e

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    move v3, v0

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    if-eqz v3, :cond_1f

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_1a

    const/4 p0, 0x0

    :cond_1a
    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_33

    goto :goto_31

    :cond_1f
    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DataUtils"

    const-string v4, "has no key, key:notificationIdList, or value is null"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_31
    const-string p0, ""

    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_3d

    sget-object p0, Li4/y;->a:Li4/y;

    goto :goto_89

    :cond_3d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_65

    :cond_85
    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_89
    return-object p0
.end method

.method private static final getOptions(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "options"

    invoke-static {p0, v0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static final getPanelActionConfigMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const-string v2, "panelActionConfigMap"

    if-eqz p0, :cond_11

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v1, 0x1

    :cond_11
    const/4 v3, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/json/JSONObject;

    if-nez v1, :cond_1d

    move-object p0, v3

    :cond_1d
    check-cast p0, Lorg/json/JSONObject;

    if-nez p0, :cond_22

    goto :goto_36

    :cond_22
    move-object v0, p0

    goto :goto_36

    :cond_24
    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DataUtils"

    const-string v6, "has no key, key:panelActionConfigMap, or value is null"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_36
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_54

    move-object v4, v3

    :cond_54
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3f

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_69
    return-object p0
.end method

.method public static final getShowHostMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const-string v2, "showHostMap"

    if-eqz p0, :cond_11

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v1, 0x1

    :cond_11
    const/4 v3, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/json/JSONObject;

    if-nez v1, :cond_1d

    move-object p0, v3

    :cond_1d
    check-cast p0, Lorg/json/JSONObject;

    if-nez p0, :cond_22

    goto :goto_36

    :cond_22
    move-object v0, p0

    goto :goto_36

    :cond_24
    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DataUtils"

    const-string v6, "has no key, key:showHostMap, or value is null"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_36
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-nez v5, :cond_54

    move-object v4, v3

    :cond_54
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3f

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_69
    return-object p0
.end method

.method public static final getUIData(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui_data"

    invoke-static {p0, v0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_17

    const-string p0, ""

    :cond_17
    return-object p0
.end method

.method private static final synthetic getValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    const-string v0, "T"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    if-nez p0, :cond_19

    goto :goto_33

    :cond_19
    move-object p2, p0

    goto :goto_33

    :cond_1b
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string p0, "has no key, key:"

    const-string v0, ", or value is null"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "DataUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_33
    return-object p2
.end method

.method private static final synthetic jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    if-eqz v3, :cond_9

    const-string v4, "key"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_32
    return-object v0
.end method

.method private static final jsonObjectToMapKeyAny(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "TK;TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1c

    const/4 v3, 0x0

    :cond_1c
    if-eqz v3, :cond_9

    const/4 v4, 0x1

    const-string v5, "K"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_28
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "DataUtils"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonObjectToMap: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    return-object v0

    :catchall_4a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_76

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change json to map error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "DataUtils"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_76
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public static final parseData(Ljava/lang/String;I)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 34
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "data"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getOptions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_53

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "parseData fail, because optionsObject is null. data.length:"

    invoke-static {v2, v1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "DataUtils"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x1ffff

    const/16 v31, 0x0

    invoke-direct/range {v12 .. v31}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_53
    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseData optionsObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "DataUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/utils/DataUtils;->parseOptions(Lorg/json/JSONObject;I)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final parseOptions(Ljava/lang/String;I)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 35
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "optionStr"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4f

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v1, "parseOptions fail, because optionsObject is null. optionStr:"

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DataUtils"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0x1ffff

    const/16 v32, 0x0

    invoke-direct/range {v13 .. v32}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_4f
    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseOptions optionsObject:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DataUtils"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move/from16 v0, p1

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->parseOptions(Lorg/json/JSONObject;I)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object v0

    return-object v0
.end method

.method private static final parseOptions(Lorg/json/JSONObject;I)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 47
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "pageId"

    if-eqz v0, :cond_10

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v1

    goto :goto_11

    :cond_10
    move v4, v2

    :goto_11
    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v4, :cond_27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_1f

    move-object v3, v6

    :cond_1f
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_24

    goto :goto_3a

    :cond_24
    move-object/from16 v33, v3

    goto :goto_3c

    :cond_27
    sget-object v7, Ly8/c;->a:Ly8/c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "DataUtils"

    const-string v9, "has no key, key:pageId, or value is null"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_3a
    move-object/from16 v33, v5

    :goto_3c
    const-string v3, "isMilestone"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz v0, :cond_4a

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4a

    move v7, v1

    goto :goto_4b

    :cond_4a
    move v7, v2

    :goto_4b
    if-eqz v7, :cond_5b

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/Boolean;

    if-nez v7, :cond_56

    move-object v3, v6

    :cond_56
    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_6f

    goto :goto_6e

    :cond_5b
    sget-object v7, Ly8/c;->a:Ly8/c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "DataUtils"

    const-string v9, "has no key, key:isMilestone, or value is null"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_6e
    move-object v3, v4

    :cond_6f
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v7, "importance"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v0, :cond_83

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_83

    move v9, v1

    goto :goto_84

    :cond_83
    move v9, v2

    :goto_84
    if-eqz v9, :cond_96

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/lang/Integer;

    if-nez v9, :cond_8f

    move-object v7, v6

    :cond_8f
    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_94

    goto :goto_ab

    :cond_94
    move-object v8, v7

    goto :goto_ab

    :cond_96
    sget-object v9, Ly8/c;->a:Ly8/c;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "DataUtils"

    const-string v11, "has no key, key:importance, or value is null"

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_ab
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    const-string v8, "requestHideStatusBar"

    if-eqz v0, :cond_bb

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bb

    move v9, v1

    goto :goto_bc

    :cond_bb
    move v9, v2

    :goto_bc
    if-eqz v9, :cond_cc

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Boolean;

    if-nez v9, :cond_c7

    move-object v8, v6

    :cond_c7
    check-cast v8, Ljava/lang/Boolean;

    if-nez v8, :cond_e2

    goto :goto_e1

    :cond_cc
    sget-object v9, Ly8/c;->a:Ly8/c;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "DataUtils"

    const-string v11, "has no key, key:requestHideStatusBar, or value is null"

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_e1
    move-object v8, v4

    :cond_e2
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v9, "dataSourcePkgName"

    if-eqz v0, :cond_f2

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f2

    move v10, v1

    goto :goto_f3

    :cond_f2
    move v10, v2

    :goto_f3
    if-eqz v10, :cond_106

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-nez v10, :cond_fe

    move-object v9, v6

    :cond_fe
    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_103

    goto :goto_11c

    :cond_103
    move-object/from16 v19, v9

    goto :goto_11e

    :cond_106
    sget-object v10, Ly8/c;->a:Ly8/c;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    const-string v11, "DataUtils"

    const-string v12, "has no key, key:dataSourcePkgName, or value is null"

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_11c
    move-object/from16 v19, v5

    :goto_11e
    const-string v5, "requestShowPanel"

    if-eqz v0, :cond_12a

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12a

    move v9, v1

    goto :goto_12b

    :cond_12a
    move v9, v2

    :goto_12b
    if-eqz v9, :cond_13b

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v9, v5, Ljava/lang/Boolean;

    if-nez v9, :cond_136

    move-object v5, v6

    :cond_136
    check-cast v5, Ljava/lang/Boolean;

    if-nez v5, :cond_155

    goto :goto_154

    :cond_13b
    sget-object v20, Ly8/c;->a:Ly8/c;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xfc

    const/16 v30, 0x0

    const-string v21, "DataUtils"

    const-string v22, "has no key, key:requestShowPanel, or value is null"

    invoke-static/range {v20 .. v30}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_154
    move-object v5, v4

    :cond_155
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getNotificationIdList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v24

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getShowHostMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v25

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getLockScreenShowHostMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v26

    const-string v9, "cancelPanelActionConfig"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v0, :cond_176

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_176

    move v12, v1

    goto :goto_177

    :cond_176
    move v12, v2

    :goto_177
    if-eqz v12, :cond_189

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v12, v9, Ljava/lang/Integer;

    if-nez v12, :cond_182

    move-object v9, v6

    :cond_182
    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_187

    goto :goto_1a2

    :cond_187
    move-object v11, v9

    goto :goto_1a2

    :cond_189
    sget-object v34, Ly8/c;->a:Ly8/c;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0xfc

    const/16 v44, 0x0

    const-string v35, "DataUtils"

    const-string v36, "has no key, key:cancelPanelActionConfig, or value is null"

    invoke-static/range {v34 .. v44}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1a2
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getPanelActionConfigMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v28

    const-string v11, "controlAction"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v0, :cond_1ba

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1ba

    move v12, v1

    goto :goto_1bb

    :cond_1ba
    move v12, v2

    :goto_1bb
    if-eqz v12, :cond_1cd

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Integer;

    if-nez v12, :cond_1c6

    move-object v11, v6

    :cond_1c6
    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_1cb

    goto :goto_1e6

    :cond_1cb
    move-object v10, v11

    goto :goto_1e6

    :cond_1cd
    sget-object v34, Ly8/c;->a:Ly8/c;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0xfc

    const/16 v44, 0x0

    const-string v35, "DataUtils"

    const-string v36, "has no key, key:controlAction, or value is null"

    invoke-static/range {v34 .. v44}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1e6
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    const-string v11, "remind_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v0, :cond_1fa

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1fa

    move v13, v1

    goto :goto_1fb

    :cond_1fa
    move v13, v2

    :goto_1fb
    if-eqz v13, :cond_20d

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v13, v11, Ljava/lang/Integer;

    if-nez v13, :cond_206

    move-object v11, v6

    :cond_206
    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_20b

    goto :goto_226

    :cond_20b
    move-object v12, v11

    goto :goto_226

    :cond_20d
    sget-object v34, Ly8/c;->a:Ly8/c;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0xfc

    const/16 v44, 0x0

    const-string v35, "DataUtils"

    const-string v36, "has no key, key:remind_type, or value is null"

    invoke-static/range {v34 .. v44}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_226
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v30

    const-string v11, "should_focus"

    if-eqz v0, :cond_236

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_236

    move v12, v1

    goto :goto_237

    :cond_236
    move v12, v2

    :goto_237
    if-eqz v12, :cond_249

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Boolean;

    if-nez v12, :cond_242

    move-object v11, v6

    :cond_242
    check-cast v11, Ljava/lang/Boolean;

    if-nez v11, :cond_247

    goto :goto_262

    :cond_247
    move-object v4, v11

    goto :goto_262

    :cond_249
    sget-object v34, Ly8/c;->a:Ly8/c;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0xfc

    const/16 v44, 0x0

    const-string v35, "DataUtils"

    const-string v36, "has no key, key:should_focus, or value is null"

    invoke-static/range {v34 .. v44}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_262
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    const-string v4, "focus_timestamp"

    const-wide/16 v11, -0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    if-eqz v0, :cond_277

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_277

    goto :goto_278

    :cond_277
    move v1, v2

    :goto_278
    if-eqz v1, :cond_28b

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_283

    goto :goto_284

    :cond_283
    move-object v6, v1

    :goto_284
    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_289

    goto :goto_2a4

    :cond_289
    move-object v11, v6

    goto :goto_2a4

    :cond_28b
    sget-object v34, Ly8/c;->a:Ly8/c;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0xfc

    const/16 v44, 0x0

    const-string v35, "DataUtils"

    const-string v36, "has no key, key:focus_timestamp, or value is null"

    invoke-static/range {v34 .. v44}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_2a4
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->getExtensibleActionMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v34

    move/from16 v0, p1

    invoke-static {v3, v7, v8, v0}, Lcom/oplus/seedling/sdk/utils/DataUtils;->shouldShow(ZIZI)Z

    move-result v35

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move/from16 v20, v3

    move/from16 v22, v8

    invoke-direct/range {v18 .. v35}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v0
.end method

.method private static final shouldShow(ZIZI)Z
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v0, "entranceType: "

    invoke-static {v0, p3}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DataUtils"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p0, :cond_3a

    invoke-static {p1, p3}, Lcom/oplus/seedling/sdk/utils/DataUtils;->shouldShowInEntrance(II)Z

    move-result p0

    const/16 p1, 0x8

    if-ne p3, p1, :cond_24

    xor-int/lit8 p1, p2, 0x1

    and-int/2addr p0, p1

    :cond_24
    const-string p1, "shouldShow: "

    invoke-static {p1, p0}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "DataUtils"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    return p0
.end method

.method private static final shouldShowInEntrance(II)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_17

    const/4 v2, 0x2

    if-eq p1, v2, :cond_17

    sparse-switch p1, :sswitch_data_1c

    goto :goto_1a

    :sswitch_b
    const/4 p1, 0x5

    if-lt p0, p1, :cond_1a

    goto :goto_19

    :sswitch_f
    const/4 p1, 0x4

    if-lt p0, p1, :cond_1a

    goto :goto_19

    :sswitch_13
    const/4 p1, 0x3

    if-lt p0, p1, :cond_1a

    goto :goto_19

    :cond_17
    :sswitch_17
    if-lt p0, v1, :cond_1a

    :goto_19
    move v0, v1

    :cond_1a
    :goto_1a
    return v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x4 -> :sswitch_13
        0x8 -> :sswitch_f
        0x10 -> :sswitch_13
        0x80 -> :sswitch_b
        0x100 -> :sswitch_13
        0x200 -> :sswitch_13
        0x800 -> :sswitch_17
        0x1000 -> :sswitch_f
        0x2000 -> :sswitch_17
        0x4000 -> :sswitch_17
        0x8000 -> :sswitch_17
        0x40000000 -> :sswitch_17
    .end sparse-switch
.end method

.method public static final toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonStr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v3, "toJsonObject error, msg = "

    const-string v4, ", length:"

    invoke-static {v3, v1, v4, p0}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DataUtils"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_36
    instance-of p0, v0, Lh4/k$a;

    if-eqz p0, :cond_3b

    const/4 v0, 0x0

    :cond_3b
    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
