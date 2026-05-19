.class public final Lcom/oplus/utrace/lib/HLogConst;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_LOG_EXPIRE_DAYS:I = 0x7

.field public static final INSTANCE:Lcom/oplus/utrace/lib/HLogConst;

.field public static final KEY_BUSINESS:Ljava/lang/String; = "business"

.field public static final KEY_END_TIME:Ljava/lang/String; = "endTime"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "key_extras"

.field public static final KEY_EXTRAS_SIM_FD_TIMEOUT:Ljava/lang/String; = "simulate_fd_timeout"

.field public static final KEY_EXTRAS_SIM_UPLOAD_TIMEOUT:Ljava/lang/String; = "simulate_upload_timeout"

.field public static final KEY_EXTRAS_UPLOAD_FLAG:Ljava/lang/String; = "suggested_upload_flag"

.field public static final KEY_LOG_ENABLED:Ljava/lang/String; = "log_enabled"

.field public static final KEY_LOG_EXPIRE_DAYS:Ljava/lang/String; = "log_expire_days"

.field public static final KEY_MAX_FILE_SIZE:Ljava/lang/String; = "maxFileSize"

.field public static final KEY_MODULE_NAME:Ljava/lang/String; = "module"

.field public static final KEY_SEND_FROM:Ljava/lang/String; = "sendFrom"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_START_TIME:Ljava/lang/String; = "startTime"

.field public static final KEY_TRACE_ID:Ljava/lang/String; = "traceId"

.field public static final KEY_UPLOAD_FLAG:Ljava/lang/String; = "uploadFlag"

.field public static final KEY_USE_WIFI:Ljava/lang/String; = "useWifi"

.field public static final METHOD_GET_LOG_CONFIG:Ljava/lang/String; = "get_log_config"

.field public static final PUSH_TO_UPLOAD_ACTION:Ljava/lang/String; = "com.oplus.pantanal.log.upload"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/lib/HLogConst;

    invoke-direct {v0}, Lcom/oplus/utrace/lib/HLogConst;-><init>()V

    sput-object v0, Lcom/oplus/utrace/lib/HLogConst;->INSTANCE:Lcom/oplus/utrace/lib/HLogConst;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
