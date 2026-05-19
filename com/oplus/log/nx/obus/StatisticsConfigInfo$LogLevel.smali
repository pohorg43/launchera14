.class public final enum Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/nx/obus/StatisticsConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

.field public static final enum LEVEL_NONE:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

.field public static final enum LEVEL_VERBOSE:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    const-string v1, "LEVEL_VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;->LEVEL_VERBOSE:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    new-instance v1, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    const-string v3, "LEVEL_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;->LEVEL_NONE:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;->$VALUES:[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;
    .registers 2

    const-class v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;
    .registers 1

    sget-object v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;->$VALUES:[Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    invoke-virtual {v0}, [Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    return-object v0
.end method
