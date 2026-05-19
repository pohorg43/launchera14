.class public final Lcom/oplus/seedling/sdk/utils/Constants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/utils/Constants$Size;,
        Lcom/oplus/seedling/sdk/utils/Constants$EntranceType;,
        Lcom/oplus/seedling/sdk/utils/Constants$EventCode;,
        Lcom/oplus/seedling/sdk/utils/Constants$ServiceType;,
        Lcom/oplus/seedling/sdk/utils/Constants$ServiceCategory;,
        Lcom/oplus/seedling/sdk/utils/Constants$ChannelType;,
        Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory;,
        Lcom/oplus/seedling/sdk/utils/Constants$SeedlingType;,
        Lcom/oplus/seedling/sdk/utils/Constants$GroupPriority;,
        Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode;,
        Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize;,
        Lcom/oplus/seedling/sdk/utils/Constants$StandardUleView;,
        Lcom/oplus/seedling/sdk/utils/Constants$LiteUleView;
    }
.end annotation


# static fields
.field public static final DECISION_CARD_CONFIG:Ljava/lang/String; = "decision_card_config"

.field public static final IMPORTANCE_1_SHOW_IN_LAUNCHER_ASSISTANT:I = 0x1

.field public static final IMPORTANCE_2_RESERVED:I = 0x2

.field public static final IMPORTANCE_3_NORMAL:I = 0x3

.field public static final IMPORTANCE_4_IMPOTANT:I = 0x4

.field public static final IMPORTANCE_5_VERY_IMPORTTANT:I = 0x5

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants;

.field public static final PACKAGE_NAME_UMS:Ljava/lang/String; = "com.oplus.pantanal.ums"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants;->INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
