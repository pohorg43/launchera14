.class public final Lpantanal/app/OnLoadCallback$EngineLoadCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/OnLoadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EngineLoadCode"
.end annotation


# static fields
.field public static final ERROR_DATA:I = 0x3f0

.field public static final ERROR_ENGINE_TYPE_UNSET:I = 0x3f1

.field public static final ERROR_FILE_NOT_FOUND:I = 0x3eb

.field public static final ERROR_INCOMPATIBLE:I = 0x3ee

.field public static final ERROR_INSPECTOR_UNREADY:I = 0x3ef

.field public static final ERROR_INSTALL_FAILED:I = 0x3ec

.field public static final ERROR_INSTANT_ENGINE_INIT:I = 0x3e9

.field public static final ERROR_INSTANT_GET_VIEW:I = 0x0

.field public static final ERROR_INSTANT_RESULT_NULL:I = -0x66

.field public static final ERROR_PAGE_NOT_FOUND:I = 0x3ed

.field public static final ERROR_SEEDLING_INIT_FAILED:I = 0x1000

.field public static final ERROR_SEEDLING_LOAD_FAILED:I = 0x800

.field public static final ERROR_SMART_ENGINE_CODE_INFLATE:I = 0x2

.field public static final ERROR_SMART_ENGINE_CODE_REFRESH:I = 0x3

.field public static final ERROR_SMART_ENGINE_CODE_UNKNOWN_DATA:I = 0x4

.field public static final ERROR_TIME_OUT:I = 0x3f2

.field public static final ERROR_UNKNOW:I = 0x3e8

.field public static final ERROR_URL:I = 0x3ea

.field public static final INSTANCE:Lpantanal/app/OnLoadCallback$EngineLoadCode;

.field public static final SEEDLING_CARD_CONFIG_ERROR:I = 0x7d6

.field public static final SEEDLING_HOST_USE_ERROR:I = 0x7d3

.field public static final SEEDLING_INTERRUPT_BY_ENTRANCE:I = 0x7d7

.field public static final SEEDLING_PLUGIN_FEATURE_NOT_SUPPORT:I = 0x3eb

.field public static final SEEDLING_PLUGIN_THROW_EXCE_ERROR:I = 0x3ea

.field public static final SEEDLING_PLUGIN_VERIFY_ERROR:I = 0x3e9

.field public static final SEEDLING_SERVICE_ID_ERROR:I = 0x7d4

.field public static final SEEDLING_TASK_IS_CANCELED:I = 0x7d5

.field public static final SEEDLING_UPK_COPY_ERROR:I = 0x7d1

.field public static final SEEDLING_UPK_LOAD_ERROR:I = 0x7d2

.field public static final SEEDLING_WAIT_CARD_DATA_TIME_OUT:I = 0x7d8

.field public static final SUCCESS_INSTANT_GET_VIEW:I = 0xc8

.field public static final SUCCUSS_SEEDLING_LOAD_FINISHED:I = 0x400


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/OnLoadCallback$EngineLoadCode;

    invoke-direct {v0}, Lpantanal/app/OnLoadCallback$EngineLoadCode;-><init>()V

    sput-object v0, Lpantanal/app/OnLoadCallback$EngineLoadCode;->INSTANCE:Lpantanal/app/OnLoadCallback$EngineLoadCode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
