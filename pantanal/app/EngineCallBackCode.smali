.class public final Lpantanal/app/EngineCallBackCode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CODE_ENGINE_INSTANT_INIT_FAILED:I = 0xc9

.field public static final CODE_ENGINE_INSTANT_INIT_SUCCESS:I = 0xc8

.field public static final INSTANCE:Lpantanal/app/EngineCallBackCode;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/EngineCallBackCode;

    invoke-direct {v0}, Lpantanal/app/EngineCallBackCode;-><init>()V

    sput-object v0, Lpantanal/app/EngineCallBackCode;->INSTANCE:Lpantanal/app/EngineCallBackCode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
