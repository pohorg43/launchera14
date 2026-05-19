.class public final enum Lcom/android/statistics/OlcManagerHelper$LogOption;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/statistics/OlcManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/statistics/OlcManagerHelper$LogOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum ADSP:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum ANDROID:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum APLOG:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum AUDIO:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum BATTERYSTATS:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum BTHCI:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum BTSSRDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum BTSWITCH:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum CAMERA:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum CHARGER:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum EVENTS:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum FREEZE:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum GPS:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum HECATE:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum HPROF:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum INTERCONNECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum KERNEL:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum LAUNCHER:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum LOSTPIC:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum MAIN:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum MEMLEAK:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum MODEM:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum MTKREBOOTDB:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum NWATCHCALL:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum OBRAIN:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum OLC:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum OTRTA:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum PCMDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum PHOENIX:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum QCOMMINIDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum QUALITYPROTECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum RADIO:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum SHUTDOWNDETECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum STORAGE:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum SYSTEM:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum SYSTRACE:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum TCPDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum THEIA:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum TOUCHPANEL:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum UPPERSTABILITY:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum UTRACE:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum VIDEO:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum WIFI:Lcom/android/statistics/OlcManagerHelper$LogOption;

.field public static final enum WIFIMINIDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;


# instance fields
.field private final value:J


# direct methods
.method private static final synthetic $values()[Lcom/android/statistics/OlcManagerHelper$LogOption;
    .registers 3

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/android/statistics/OlcManagerHelper$LogOption;

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->KERNEL:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->SYSTEM:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->MAIN:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->EVENTS:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->RADIO:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->ANDROID:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->THEIA:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->ADSP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->OBRAIN:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->AUDIO:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->BTHCI:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->SYSTRACE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->HPROF:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->QUALITYPROTECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->OTRTA:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->BATTERYSTATS:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->NWATCHCALL:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->VIDEO:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->WIFI:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->TCPDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->MODEM:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->WIFIMINIDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->GPS:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->SHUTDOWNDETECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->BTSSRDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->BTSWITCH:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->PHOENIX:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->QCOMMINIDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->LOSTPIC:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->UPPERSTABILITY:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->HECATE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->MTKREBOOTDB:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->INTERCONNECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->MEMLEAK:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->CAMERA:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->FREEZE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->OLC:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->PCMDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->APLOG:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->UTRACE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->TOUCHPANEL:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->STORAGE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->CHARGER:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/statistics/OlcManagerHelper$LogOption;->LAUNCHER:Lcom/android/statistics/OlcManagerHelper$LogOption;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "KERNEL"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->KERNEL:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "SYSTEM"

    const/4 v2, 0x1

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->SYSTEM:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "MAIN"

    const/4 v2, 0x2

    const-wide/16 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->MAIN:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "EVENTS"

    const/4 v2, 0x3

    const-wide/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->EVENTS:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "RADIO"

    const/4 v2, 0x4

    const-wide/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->RADIO:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "ANDROID"

    const/4 v2, 0x5

    const-wide/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->ANDROID:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "THEIA"

    const/4 v2, 0x6

    const-wide/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->THEIA:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "ADSP"

    const/4 v2, 0x7

    const-wide/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->ADSP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "OBRAIN"

    const/16 v2, 0x8

    const-wide/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->OBRAIN:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "AUDIO"

    const/16 v2, 0x9

    const-wide/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->AUDIO:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "BTHCI"

    const/16 v2, 0xa

    const-wide/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->BTHCI:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "SYSTRACE"

    const/16 v2, 0xb

    const-wide/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->SYSTRACE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "HPROF"

    const/16 v2, 0xc

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->HPROF:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "QUALITYPROTECT"

    const/16 v2, 0xd

    const-wide/16 v3, 0x2000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->QUALITYPROTECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "OTRTA"

    const/16 v2, 0xe

    const-wide/16 v3, 0x4000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->OTRTA:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "BATTERYSTATS"

    const/16 v2, 0xf

    const-wide/32 v3, 0x8000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->BATTERYSTATS:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "NWATCHCALL"

    const/16 v2, 0x10

    const-wide/32 v3, 0x10000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->NWATCHCALL:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "VIDEO"

    const/16 v2, 0x11

    const-wide/32 v3, 0x20000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->VIDEO:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "WIFI"

    const/16 v2, 0x12

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->WIFI:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "TCPDUMP"

    const/16 v2, 0x13

    const-wide/32 v3, 0x80000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->TCPDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "MODEM"

    const/16 v2, 0x14

    const-wide/32 v3, 0x100000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->MODEM:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "WIFIMINIDUMP"

    const/16 v2, 0x15

    const-wide/32 v3, 0x200000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->WIFIMINIDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "GPS"

    const/16 v2, 0x16

    const-wide/32 v3, 0x400000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->GPS:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "SHUTDOWNDETECT"

    const/16 v2, 0x17

    const-wide/32 v3, 0x800000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->SHUTDOWNDETECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "BTSSRDUMP"

    const/16 v2, 0x18

    const-wide/32 v3, 0x1000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->BTSSRDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "BTSWITCH"

    const/16 v2, 0x19

    const-wide/32 v3, 0x2000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->BTSWITCH:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "PHOENIX"

    const/16 v2, 0x1a

    const-wide/32 v3, 0x4000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->PHOENIX:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "QCOMMINIDUMP"

    const/16 v2, 0x1b

    const-wide/32 v3, 0x8000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->QCOMMINIDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "LOSTPIC"

    const/16 v2, 0x1c

    const-wide/32 v3, 0x10000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->LOSTPIC:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "UPPERSTABILITY"

    const/16 v2, 0x1d

    const-wide/32 v3, 0x20000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->UPPERSTABILITY:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "HECATE"

    const/16 v2, 0x1e

    const-wide/32 v3, 0x40000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->HECATE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "MTKREBOOTDB"

    const/16 v2, 0x1f

    const-wide v3, 0x80000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->MTKREBOOTDB:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "INTERCONNECT"

    const/16 v2, 0x20

    const-wide v3, 0x100000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->INTERCONNECT:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "MEMLEAK"

    const/16 v2, 0x21

    const-wide v3, 0x200000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->MEMLEAK:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "CAMERA"

    const/16 v2, 0x22

    const-wide v3, 0x400000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->CAMERA:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "FREEZE"

    const/16 v2, 0x23

    const-wide v3, 0x800000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->FREEZE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "OLC"

    const/16 v2, 0x24

    const-wide v3, 0x1000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->OLC:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "PCMDUMP"

    const/16 v2, 0x25

    const-wide v3, 0x2000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->PCMDUMP:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "APLOG"

    const/16 v2, 0x26

    const-wide v3, 0x4000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->APLOG:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "UTRACE"

    const/16 v2, 0x27

    const-wide v3, 0x8000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->UTRACE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "TOUCHPANEL"

    const/16 v2, 0x28

    const-wide v3, 0x10000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->TOUCHPANEL:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "STORAGE"

    const/16 v2, 0x29

    const-wide v3, 0x20000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->STORAGE:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "CHARGER"

    const/16 v2, 0x2a

    const-wide v3, 0x40000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->CHARGER:Lcom/android/statistics/OlcManagerHelper$LogOption;

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    const-string v1, "LAUNCHER"

    const/16 v2, 0x2b

    const-wide v3, 0x80000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/statistics/OlcManagerHelper$LogOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->LAUNCHER:Lcom/android/statistics/OlcManagerHelper$LogOption;

    invoke-static {}, Lcom/android/statistics/OlcManagerHelper$LogOption;->$values()[Lcom/android/statistics/OlcManagerHelper$LogOption;

    move-result-object v0

    sput-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->$VALUES:[Lcom/android/statistics/OlcManagerHelper$LogOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/android/statistics/OlcManagerHelper$LogOption;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/statistics/OlcManagerHelper$LogOption;
    .registers 2

    const-class v0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/statistics/OlcManagerHelper$LogOption;

    return-object p0
.end method

.method public static values()[Lcom/android/statistics/OlcManagerHelper$LogOption;
    .registers 1

    sget-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->$VALUES:[Lcom/android/statistics/OlcManagerHelper$LogOption;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/statistics/OlcManagerHelper$LogOption;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .registers 3

    iget-wide v0, p0, Lcom/android/statistics/OlcManagerHelper$LogOption;->value:J

    return-wide v0
.end method
