.class public final Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BUSINESS_TAG:Ljava/lang/String; = "business_tag"

.field public static final EVENT_ID_DATABASE_UPGRADE_ERROR:Ljava/lang/String; = "seedlingsdk_database_upgrade_error"

.field public static final EVENT_ID_DECISION_LIST_EMPTY:Ljava/lang/String; = "seedlingsdk_decision_list_empty"

.field public static final EVENT_ID_GROUP_CARD_STATE:Ljava/lang/String; = "group_card_state"

.field public static final EVENT_ID_LOAD_CLASS_ERROR:Ljava/lang/String; = "seedlingsdk_plugin_load_class_error"

.field public static final EVENT_ID_PANTANAL_SDK_INIT_INFO:Ljava/lang/String; = "pantanal_sdk_init_info"

.field public static final EVENT_ID_PLUGIN_INIT:Ljava/lang/String; = "seedlingsdk_plugin_init"

.field public static final EVENT_ID_SEEDLINGSDK_CARD_TYPE_ERROR:Ljava/lang/String; = "seedlingsdk_card_type_error"

.field public static final EVENT_ID_ULE_CLIENT_ERROR:Ljava/lang/String; = "seedlingsdk_ule_client_error"

.field public static final EVENT_ID_ULE_LOAD_STATUS:Ljava/lang/String; = "ule_load_status"

.field public static final EVENT_ID_UPDATE_DATA_IGNORE:Ljava/lang/String; = "seedlingsdk_update_data_ignore"

.field public static final EVENT_ID_UPK_STATUS:Ljava/lang/String; = "seedlingsdk_upk_status"

.field private static final EVENT_TAG:Ljava/lang/String; = "event_tag"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

.field public static final KEY_CARD_TYPE:Ljava/lang/String; = "card_type"

.field public static final KEY_CONFIG_COUNT:Ljava/lang/String; = "config_count"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_ENGINE_TYPE:Ljava/lang/String; = "engine_type"

.field public static final KEY_ENTRANCE:Ljava/lang/String; = "entrance"

.field public static final KEY_ENTRANCE_PKG_NAME:Ljava/lang/String; = "entrance_pkg_name"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final KEY_EVENT:Ljava/lang/String; = "event"

.field public static final KEY_FP_TIME:Ljava/lang/String; = "fp_time"

.field public static final KEY_FROM_VERSION:Ljava/lang/String; = "from_version"

.field public static final KEY_GROUP_CARD_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final KEY_HOST_ID:Ljava/lang/String; = "host_id"

.field public static final KEY_INITIALIZATION_TIME:Ljava/lang/String; = "init_time"

.field public static final KEY_LAST_TS:Ljava/lang/String; = "last_ts"

.field public static final KEY_LOAD_TIME_OUT:Ljava/lang/String; = "load_time_out"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final KEY_PANTA_SDK_HASH:Ljava/lang/String; = "panta_sdk_hash"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field public static final KEY_SHOULD_NOTIFY_CARD_SERVICE_TO_INIT:Ljava/lang/String; = "should_notify_card_service_to_init"

.field public static final KEY_START_LOADING:Ljava/lang/String; = "start_load"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_SUPPORTED_CARD_CATEGORY:Ljava/lang/String; = "supported_card_category"

.field public static final KEY_SUPPORT_ENTRANCE:Ljava/lang/String; = "support_entrance"

.field public static final KEY_THIS_TS:Ljava/lang/String; = "this_ts"

.field public static final KEY_TOTAL_COUNT:Ljava/lang/String; = "total_count"

.field public static final KEY_TO_VERSION:Ljava/lang/String; = "to_version"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final STATISTICS_THREAD_NAME:Ljava/lang/String; = "seedling_sdk_statistics"

.field private static final TAG:Ljava/lang/String; = "StatisticsTrackUtil"

.field private static final dateFormat$delegate:Lh4/f;

.field private static final decimalInt4$delegate:Lh4/f;

.field private static final statisticsDispatcher$delegate:Lh4/f;

.field private static final statisticsScope:Lm7/j0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    sget-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$dateFormat$2;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$dateFormat$2;

    invoke-static {v1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    sput-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->dateFormat$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$decimalInt4$2;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$decimalInt4$2;

    invoke-static {v1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    sput-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->decimalInt4$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$statisticsDispatcher$2;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$statisticsDispatcher$2;

    invoke-static {v1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    sput-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsDispatcher$delegate:Lh4/f;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getStatisticsDispatcher()Lm7/f0;

    move-result-object v0

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsScope:Lm7/j0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final delayTask(JLjava/lang/Runnable;)Lm7/s1;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsScope:Lm7/j0;

    new-instance v4, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;-><init>(JLjava/lang/Runnable;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    return-object p0
.end method

.method public static final formatInt4(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getDecimalInt4()Ljava/text/DecimalFormat;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "decimalInt4.format(int)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getDateFormat()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->dateFormat$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static final getDateText(J)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dateFormat.format(Date(date))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getDateText(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "date"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dateFormat.format(date)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getDecimalInt4()Ljava/text/DecimalFormat;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->decimalInt4$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/DecimalFormat;

    return-object p0
.end method

.method private final getStatisticsDispatcher()Lm7/f0;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/f0;

    return-object p0
.end method

.method public static final shutdown$pantanal_client_release()V
    .registers 23
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "StatisticsTrackUtil"

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getStatisticsDispatcher()Lm7/f0;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelChildren "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsScope:Lm7/j0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lm7/k0;->c(Lm7/j0;Ljava/util/concurrent/CancellationException;I)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_36
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_56

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cancelChildren fail "

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "StatisticsTrackUtil"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_56
    :try_start_56
    sget-object v12, Ly8/c;->a:Ly8/c;

    const-string v13, "StatisticsTrackUtil"

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getStatisticsDispatcher()Lm7/f0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfc

    const/16 v22, 0x0

    invoke-static/range {v12 .. v22}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getStatisticsDispatcher()Lm7/f0;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ExecutorCoroutineDispatcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lm7/j1;

    invoke-virtual {v0}, Lm7/j1;->close()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_93
    .catchall {:try_start_56 .. :try_end_93} :catchall_94

    goto :goto_99

    :catchall_94
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_99
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b9

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "close fail "

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "StatisticsTrackUtil"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_b9
    return-void
.end method

.method public static final uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_f
    sget-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsScope:Lm7/j0;

    const/4 v2, 0x0

    new-instance v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ll4/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_26

    goto :goto_2b

    :catchall_26
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4b

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uploadBusinessTrack error, msg: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "StatisticsTrackUtil"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4b
    return-void
.end method

.method public static synthetic uploadBusinessTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_b

    const-string p3, "business_tag"

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static final uploadTechTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_f
    sget-object v1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsScope:Lm7/j0;

    const/4 v2, 0x0

    new-instance v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadTechTrack$1$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadTechTrack$1$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ll4/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_26

    goto :goto_2b

    :catchall_26
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4b

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uploadTechTrack error, msg: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "StatisticsTrackUtil"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4b
    return-void
.end method

.method public static synthetic uploadTechTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_b

    const-string p3, "event_tag"

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadTechTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
