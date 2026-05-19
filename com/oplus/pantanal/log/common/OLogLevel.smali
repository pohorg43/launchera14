.class public final Lcom/oplus/pantanal/log/common/OLogLevel;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALL:I = 0x1

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final INSTANCE:Lcom/oplus/pantanal/log/common/OLogLevel;

.field public static final NONE:I = 0x7

.field public static final VERBOSE:I = 0x2

.field public static final WARNING:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/pantanal/log/common/OLogLevel;

    invoke-direct {v0}, Lcom/oplus/pantanal/log/common/OLogLevel;-><init>()V

    sput-object v0, Lcom/oplus/pantanal/log/common/OLogLevel;->INSTANCE:Lcom/oplus/pantanal/log/common/OLogLevel;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortLevelName(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1b

    const/4 p0, 0x4

    if-eq p1, p0, :cond_18

    const/4 p0, 0x5

    if-eq p1, p0, :cond_15

    const/4 p0, 0x6

    if-eq p1, p0, :cond_12

    const-string p0, ""

    goto :goto_20

    :cond_12
    const-string p0, "E"

    goto :goto_20

    :cond_15
    const-string p0, "W"

    goto :goto_20

    :cond_18
    const-string p0, "I"

    goto :goto_20

    :cond_1b
    const-string p0, "D"

    goto :goto_20

    :cond_1e
    const-string p0, "V"

    :goto_20
    return-object p0
.end method
