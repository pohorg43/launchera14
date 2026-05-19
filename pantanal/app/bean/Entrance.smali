.class public final enum Lpantanal/app/bean/Entrance;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/Entrance$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/bean/Entrance;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEntrance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Entrance.kt\npantanal/app/bean/Entrance\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,398:1\n766#2:399\n857#2,2:400\n766#2:402\n857#2,2:403\n766#2:405\n857#2,2:406\n766#2:408\n857#2,2:409\n766#2:411\n857#2,2:412\n766#2:414\n857#2,2:415\n766#2:417\n857#2,2:418\n766#2:420\n857#2,2:421\n766#2:423\n857#2,2:424\n*S KotlinDebug\n*F\n+ 1 Entrance.kt\npantanal/app/bean/Entrance\n*L\n297#1:399\n297#1:400,2\n304#1:402\n304#1:403,2\n308#1:405\n308#1:406,2\n312#1:408\n312#1:409,2\n318#1:411\n318#1:412,2\n322#1:414\n322#1:415,2\n325#1:417\n325#1:418,2\n363#1:420\n363#1:421,2\n366#1:423\n366#1:424,2\n*E\n"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/bean/Entrance;

.field public static final enum AOD:Lpantanal/app/bean/Entrance;

.field public static final enum ASSISTANT:Lpantanal/app/bean/Entrance;

.field public static final enum CALENDAR:Lpantanal/app/bean/Entrance;

.field public static final enum CAPSULE:Lpantanal/app/bean/Entrance;

.field public static final enum CAR_LAUNCHER:Lpantanal/app/bean/Entrance;

.field public static final Companion:Lpantanal/app/bean/Entrance$Companion;

.field public static final enum FULL_SEARCH:Lpantanal/app/bean/Entrance;

.field public static final enum HEADSET:Lpantanal/app/bean/Entrance;

.field public static final enum LAUNCHER:Lpantanal/app/bean/Entrance;

.field public static final enum LOCK_SCREEN:Lpantanal/app/bean/Entrance;

.field public static final enum NOTIFICATION:Lpantanal/app/bean/Entrance;

.field public static final enum SECONDARY_LOCKSCREEN:Lpantanal/app/bean/Entrance;

.field public static final enum SECONDARY_NOTIFICATION:Lpantanal/app/bean/Entrance;

.field public static final enum SEEDLING_HOST_APP:Lpantanal/app/bean/Entrance;

.field public static final enum SPEECH_ASSITANT:Lpantanal/app/bean/Entrance;

.field public static final enum STATUS_BAR:Lpantanal/app/bean/Entrance;

.field public static final TAG:Ljava/lang/String; = "Entrance"

.field public static final enum UNKNOWN:Lpantanal/app/bean/Entrance;

.field public static final enum WATCH:Lpantanal/app/bean/Entrance;


# instance fields
.field private final clientName:Ljava/lang/String;

.field private final entranceType:I

.field private final host:I

.field private final providerAuthority:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/bean/Entrance;
    .registers 3

    const/16 v0, 0x11

    new-array v0, v0, [Lpantanal/app/bean/Entrance;

    sget-object v1, Lpantanal/app/bean/Entrance;->UNKNOWN:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->ASSISTANT:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->LAUNCHER:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->LOCK_SCREEN:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->CAPSULE:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->STATUS_BAR:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->NOTIFICATION:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->AOD:Lpantanal/app/bean/Entrance;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->HEADSET:Lpantanal/app/bean/Entrance;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->SECONDARY_LOCKSCREEN:Lpantanal/app/bean/Entrance;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->SECONDARY_NOTIFICATION:Lpantanal/app/bean/Entrance;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->CAR_LAUNCHER:Lpantanal/app/bean/Entrance;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->WATCH:Lpantanal/app/bean/Entrance;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->CALENDAR:Lpantanal/app/bean/Entrance;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->SPEECH_ASSITANT:Lpantanal/app/bean/Entrance;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->FULL_SEARCH:Lpantanal/app/bean/Entrance;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Entrance;->SEEDLING_HOST_APP:Lpantanal/app/bean/Entrance;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 15

    new-instance v7, Lpantanal/app/bean/Entrance;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string v5, ""

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lpantanal/app/bean/Entrance;->UNKNOWN:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "ASSISTANT"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "com.oplus.card.server.provider"

    const-string v14, "card_service"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->ASSISTANT:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "LAUNCHER"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "com.oplus.card.server.launcher.provider"

    const-string v7, "card_service_launcher"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->LAUNCHER:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "LOCK_SCREEN"

    const/4 v10, 0x3

    const/16 v11, 0x40

    const/4 v12, 0x5

    const-string v13, "com.oplus.card.server.systemui.provider"

    const-string v14, "seedling_client_lockscreen"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->LOCK_SCREEN:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "CAPSULE"

    const/4 v3, 0x4

    const/16 v4, 0x20

    const/4 v5, 0x6

    const-string v6, ""

    const-string v7, "seedling_client_capsule"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->CAPSULE:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "STATUS_BAR"

    const/4 v10, 0x5

    const/16 v11, 0x8

    const/16 v12, 0x14

    const-string v13, "com.oplus.card.server.systemui.provider"

    const-string v14, "seedling_client_statusbar"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->STATUS_BAR:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "NOTIFICATION"

    const/4 v3, 0x6

    const/16 v4, 0x10

    const/16 v5, 0x1e

    const-string v6, "com.oplus.card.server.systemui.provider"

    const-string v7, "seedling_client_notification"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->NOTIFICATION:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "AOD"

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/16 v12, 0x28

    const-string v13, "com.oplus.card.server.systemui.provider"

    const-string v14, "seedling_client_aod"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->AOD:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "HEADSET"

    const/16 v3, 0x8

    const/16 v4, 0x80

    const/16 v5, 0x32

    const-string v6, "com.oplus.card.server.headset.provider"

    const-string v7, "seedling_client_headset"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->HEADSET:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "SECONDARY_LOCKSCREEN"

    const/16 v10, 0x9

    const/16 v11, 0x100

    const/16 v12, 0x3c

    const-string v13, "com.oplus.card.server.secondaryhome.provider"

    const-string v14, "seedling_client_secondary_lockscreen"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->SECONDARY_LOCKSCREEN:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "SECONDARY_NOTIFICATION"

    const/16 v3, 0xa

    const/16 v4, 0x200

    const/16 v5, 0x46

    const-string v6, "com.oplus.card.server.secondaryhome.provider"

    const-string v7, "seedling_client_secondary_notification"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->SECONDARY_NOTIFICATION:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "CAR_LAUNCHER"

    const/16 v10, 0xb

    const/16 v11, 0x1000

    const/16 v12, 0x50

    const-string v13, "com.oplus.card.server.carlauncher.provider"

    const-string v14, "seedling_client_car_launcher"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->CAR_LAUNCHER:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "WATCH"

    const/16 v3, 0xc

    const/16 v4, 0x800

    const/16 v5, 0x5a

    const-string v6, "com.oplus.card.server.health.provider"

    const-string v7, "seedling_client_health"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->WATCH:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "CALENDAR"

    const/16 v10, 0xd

    const/16 v11, 0x2000

    const/16 v12, 0x6e

    const-string v13, "com.oplus.card.server.calendar.provider"

    const-string v14, "seedling_client_calendar"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->CALENDAR:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "SPEECH_ASSITANT"

    const/16 v3, 0xe

    const/16 v4, 0x4000

    const/16 v5, 0x78

    const-string v6, "com.oplus.card.server.speech.assistant.provider"

    const-string v7, "seedling_client_speech_assistant"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->SPEECH_ASSITANT:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v9, "FULL_SEARCH"

    const/16 v10, 0xf

    const v11, 0x8000

    const/16 v12, 0x82

    const-string v13, "com.oplus.card.server.full.search.provider"

    const-string v14, "seedling_client_full_search"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->FULL_SEARCH:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance;

    const-string v2, "SEEDLING_HOST_APP"

    const/16 v3, 0x10

    const/high16 v4, 0x40000000  # 2.0f

    const/16 v5, 0x64

    const-string v6, "com.oplus.card.server.hostapp.provider"

    const-string v7, "seedling_client_host_app"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/bean/Entrance;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->SEEDLING_HOST_APP:Lpantanal/app/bean/Entrance;

    invoke-static {}, Lpantanal/app/bean/Entrance;->$values()[Lpantanal/app/bean/Entrance;

    move-result-object v0

    sput-object v0, Lpantanal/app/bean/Entrance;->$VALUES:[Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/app/bean/Entrance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/bean/Entrance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lpantanal/app/bean/Entrance;->entranceType:I

    iput p4, p0, Lpantanal/app/bean/Entrance;->host:I

    iput-object p5, p0, Lpantanal/app/bean/Entrance;->providerAuthority:Ljava/lang/String;

    iput-object p6, p0, Lpantanal/app/bean/Entrance;->clientName:Ljava/lang/String;

    return-void
.end method

.method private final getSupportCardSizesForCarLauncher(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportCardSizesForCarLauncher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serviceId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".serviceId, useTemplate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".useTemplate, static origin supportCardSizes:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".supportCardSizes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v5, "Entrance"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUseTemplate()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, " error, useTemplate:"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v7, :cond_91

    if-eq v3, v6, :cond_66

    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUseTemplate()I

    move-result v3

    invoke-static {v2, v5, v3}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "Entrance"

    move-object v7, v1

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Li4/y;->a:Li4/y;

    goto :goto_bb

    :cond_66
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_73
    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_8a

    move v8, v7

    goto :goto_8b

    :cond_8a
    move v8, v4

    :goto_8b
    if-eqz v8, :cond_73

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_91
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9e
    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_b3

    move v9, v7

    goto :goto_b4

    :cond_b3
    move v9, v4

    :goto_b4
    if-eqz v9, :cond_9e

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_ba
    move-object v1, v3

    :goto_bb
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_da

    sget-object v6, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUseTemplate()I

    move-result v0

    invoke-static {v2, v5, v0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "Entrance"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_da
    sget-object v17, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", after filter, supportCardSizes:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "Entrance"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/bean/Entrance;
    .registers 2

    const-class v0, Lpantanal/app/bean/Entrance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public static values()[Lpantanal/app/bean/Entrance;
    .registers 1

    sget-object v0, Lpantanal/app/bean/Entrance;->$VALUES:[Lpantanal/app/bean/Entrance;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/bean/Entrance;

    return-object v0
.end method


# virtual methods
.method public final getClientName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Entrance;->clientName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEntranceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lpantanal/annotaions/EntranceType;->Companion:Lpantanal/annotaions/EntranceType$Companion;

    invoke-virtual {v0}, Lpantanal/annotaions/EntranceType$Companion;->getDES_SUPPORT_ENTRANCE_MAP()Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lpantanal/app/bean/Entrance;->entranceType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_16

    const-string p0, "unknown"

    :cond_16
    return-object p0
.end method

.method public final getEntranceType()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/Entrance;->entranceType:I

    return p0
.end method

.method public final getHost()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/Entrance;->host:I

    return p0
.end method

.method public final getProviderAuthority()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/Entrance;->providerAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public final getShortName()Ljava/lang/String;
    .registers 2

    iget p0, p0, Lpantanal/app/bean/Entrance;->entranceType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_29

    sparse-switch p0, :sswitch_data_30

    const-string p0, "unknown"

    goto :goto_2e

    :sswitch_e
    const-string p0, "HostApp"

    goto :goto_2e

    :sswitch_11
    const-string p0, "FullSearch"

    goto :goto_2e

    :sswitch_14
    const-string p0, "SpeechAst"

    goto :goto_2e

    :sswitch_17
    const-string p0, "Calendar"

    goto :goto_2e

    :sswitch_1a
    const-string p0, "Car"

    goto :goto_2e

    :sswitch_1d
    const-string p0, "Watch"

    goto :goto_2e

    :sswitch_20
    const-string p0, "SecLnch"

    goto :goto_2e

    :sswitch_23
    const-string p0, "HeadSet"

    goto :goto_2e

    :sswitch_26
    const-string p0, "SysUi"

    goto :goto_2e

    :cond_29
    const-string p0, "Lnch"

    goto :goto_2e

    :cond_2c
    const-string p0, "AST"

    :goto_2e
    return-object p0

    nop

    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_26
        0x8 -> :sswitch_26
        0x10 -> :sswitch_26
        0x80 -> :sswitch_23
        0x100 -> :sswitch_20
        0x200 -> :sswitch_20
        0x800 -> :sswitch_1d
        0x1000 -> :sswitch_1a
        0x2000 -> :sswitch_17
        0x4000 -> :sswitch_14
        0x8000 -> :sswitch_11
        0x40000000 -> :sswitch_e
    .end sparse-switch
.end method

.method public final getSupportCardSizesFromService(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "staticServiceInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Lpantanal/app/bean/Entrance;->entranceType:I

    const-string v3, " error, entrance:"

    const/4 v4, 0x1

    const-string v5, "getSupportCardSizesFromService"

    if-eq v2, v4, :cond_16b

    const/4 v6, 0x2

    if-eq v2, v6, :cond_16b

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x0

    sparse-switch v2, :sswitch_data_206

    sget-object v10, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    const-string v11, "Entrance"

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Li4/y;->a:Li4/y;

    goto/16 :goto_19e

    :sswitch_4c
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/oplus/seedling/sdk/utils/Constants$Size;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;

    invoke-virtual {v8}, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->getALL_VALID_SIZE_MAP()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :sswitch_7e
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8b
    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-eq v10, v4, :cond_a3

    if-ne v10, v6, :cond_a1

    goto :goto_a3

    :cond_a1
    move v10, v9

    goto :goto_a4

    :cond_a3
    :goto_a3
    move v10, v4

    :goto_a4
    if-eqz v10, :cond_8b

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_aa
    move-object v2, v7

    goto/16 :goto_19e

    :sswitch_ad
    invoke-direct/range {p0 .. p1}, Lpantanal/app/bean/Entrance;->getSupportCardSizesForCarLauncher(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_19e

    :sswitch_b3
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c0
    :goto_c0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/oplus/seedling/sdk/utils/Constants$Size;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;

    invoke-virtual {v8}, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->getSIZE_TO_LITE()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    :sswitch_e5
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f2
    :goto_f2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_169

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eq v11, v8, :cond_10a

    if-ne v11, v7, :cond_108

    goto :goto_10a

    :cond_108
    move v11, v9

    goto :goto_10b

    :cond_10a
    :goto_10a
    move v11, v4

    :goto_10b
    if-eqz v11, :cond_f2

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f2

    :sswitch_111
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11e
    :goto_11e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_169

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    const/4 v12, 0x7

    if-eq v11, v12, :cond_139

    if-eq v11, v7, :cond_139

    if-ne v11, v8, :cond_137

    goto :goto_139

    :cond_137
    move v11, v9

    goto :goto_13a

    :cond_139
    :goto_139
    move v11, v4

    :goto_13a
    if-eqz v11, :cond_11e

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11e

    :sswitch_140
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14d
    :goto_14d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_169

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-ne v10, v8, :cond_162

    move v10, v4

    goto :goto_163

    :cond_162
    move v10, v9

    :goto_163
    if-eqz v10, :cond_14d

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14d

    :cond_169
    move-object v2, v6

    goto :goto_19e

    :cond_16b
    :sswitch_16b
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_178
    :goto_178
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/oplus/seedling/sdk/utils/Constants$Size;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;

    invoke-virtual {v8}, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->getSIZE_TO_STANDARD()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_178

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_178

    :cond_19d
    move-object v2, v4

    :goto_19e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1cc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}, supportSizes is empty"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v6, Ly8/c;->a:Ly8/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "Entrance"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1cc
    invoke-virtual/range {p1 .. p1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " entrance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", static origin supportCardSizes:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", after filter, supportCardSizes:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "Entrance"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2

    nop

    :sswitch_data_206
    .sparse-switch
        0x4 -> :sswitch_140
        0x8 -> :sswitch_111
        0x10 -> :sswitch_e5
        0x40 -> :sswitch_e5
        0x80 -> :sswitch_b3
        0x100 -> :sswitch_140
        0x200 -> :sswitch_140
        0x800 -> :sswitch_b3
        0x1000 -> :sswitch_ad
        0x2000 -> :sswitch_16b
        0x4000 -> :sswitch_16b
        0x8000 -> :sswitch_7e
        0x40000000 -> :sswitch_4c
    .end sparse-switch
.end method

.method public final isAODorHeadset()Z
    .registers 2

    iget p0, p0, Lpantanal/app/bean/Entrance;->entranceType:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const/16 v0, 0x80

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public final shouldShowInEntrance(I)Z
    .registers 5

    iget p0, p0, Lpantanal/app/bean/Entrance;->entranceType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_19

    const/4 v2, 0x2

    if-eq p0, v2, :cond_19

    sparse-switch p0, :sswitch_data_1e

    goto :goto_1c

    :sswitch_d
    const/4 p0, 0x5

    if-lt p1, p0, :cond_1c

    goto :goto_1b

    :sswitch_11
    const/4 p0, 0x4

    if-lt p1, p0, :cond_1c

    goto :goto_1b

    :sswitch_15
    const/4 p0, 0x3

    if-lt p1, p0, :cond_1c

    goto :goto_1b

    :cond_19
    :sswitch_19
    if-lt p1, v1, :cond_1c

    :goto_1b
    move v0, v1

    :cond_1c
    :goto_1c
    return v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x4 -> :sswitch_15
        0x8 -> :sswitch_11
        0x10 -> :sswitch_15
        0x80 -> :sswitch_d
        0x100 -> :sswitch_15
        0x200 -> :sswitch_15
        0x800 -> :sswitch_19
        0x1000 -> :sswitch_11
        0x2000 -> :sswitch_19
        0x4000 -> :sswitch_19
        0x8000 -> :sswitch_19
        0x40000000 -> :sswitch_19
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lpantanal/app/bean/Entrance;->entranceType:I

    iget p0, p0, Lpantanal/app/bean/Entrance;->host:I

    const-string v2, "["

    const-string v3, ",type="

    const-string v4, ",hostId="

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
