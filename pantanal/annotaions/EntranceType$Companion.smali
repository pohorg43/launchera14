.class public final Lpantanal/annotaions/EntranceType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/annotaions/EntranceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/annotaions/EntranceType$Companion;

.field public static final ALL:I = 0x0

.field public static final AOD:I = 0x4

.field public static final ASSISTANT:I = 0x1

.field private static final BASE_ENTRY_ONE:I = 0x1

.field public static final CALENDAR:I = 0x2000

.field public static final CAPSULE:I = 0x20

.field public static final CAR_LAUNCHER:I = 0x1000

.field private static final DES_SUPPORT_ENTRANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL_SEARCH:I = 0x8000

.field public static final HEADSET:I = 0x80

.field public static final LAUNCHER:I = 0x2

.field public static final LOCK_SCREEN:I = 0x40

.field public static final NOTIFICATION:I = 0x10

.field public static final SECONDARY_LOCKSCREEN:I = 0x100

.field public static final SECONDARY_NOTIFICATION:I = 0x200

.field public static final SECONDARY_SECONDARY_LAUNCHER:I = 0x400

.field public static final SEEDING_HOST_APP:I = 0x40000000

.field public static final SPEECH_ASSISTANT:I = 0x4000

.field public static final STATUS_BAR:I = 0x8

.field public static final TAG:Ljava/lang/String; = "EntranceType"

.field public static final UNDEFINED:I = -0x1

.field private static final VALID_ENTRANCE:[I

.field public static final WATCH:I = 0x800


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/annotaions/EntranceType$Companion;

    invoke-direct {v0}, Lpantanal/annotaions/EntranceType$Companion;-><init>()V

    sput-object v0, Lpantanal/annotaions/EntranceType$Companion;->$$INSTANCE:Lpantanal/annotaions/EntranceType$Companion;

    sget-object v0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->getVALID_ENTRANCE()[I

    move-result-object v1

    sput-object v1, Lpantanal/annotaions/EntranceType$Companion;->VALID_ENTRANCE:[I

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->getDES_SUPPORT_ENTRANCE_MAP()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lpantanal/annotaions/EntranceType$Companion;->DES_SUPPORT_ENTRANCE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDES_SUPPORT_ENTRANCE_MAP()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lpantanal/annotaions/EntranceType$Companion;->DES_SUPPORT_ENTRANCE_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final getVALID_ENTRANCE()[I
    .registers 1

    sget-object p0, Lpantanal/annotaions/EntranceType$Companion;->VALID_ENTRANCE:[I

    return-object p0
.end method

.method public final isValid(I)Z
    .registers 2

    sget-object p0, Lpantanal/annotaions/EntranceType$Companion;->VALID_ENTRANCE:[I

    invoke-static {p0, p1}, Li4/k;->q([II)Z

    move-result p0

    return p0
.end method
