.class public final Lpantanal/decision/statistics/StatisticsManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/decision/statistics/IStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/decision/statistics/StatisticsManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/decision/statistics/StatisticsManager$Companion;

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lpantanal/decision/statistics/StatisticsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/decision/statistics/StatisticsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/decision/statistics/StatisticsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/decision/statistics/StatisticsManager;->Companion:Lpantanal/decision/statistics/StatisticsManager$Companion;

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v1, Lpantanal/decision/statistics/StatisticsManager$Companion$sInstance$2;->INSTANCE:Lpantanal/decision/statistics/StatisticsManager$Companion$sInstance$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/decision/statistics/StatisticsManager;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/decision/statistics/StatisticsManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lpantanal/decision/statistics/StatisticsManager;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$toStaticSdkBean(Lpantanal/decision/statistics/StatisticsManager;Lpantanal/decision/StatisticsBean;)Lcom/pantanal/server/content/dot/StatisticsBean;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/decision/statistics/StatisticsManager;->toStaticSdkBean(Lpantanal/decision/StatisticsBean;)Lcom/pantanal/server/content/dot/StatisticsBean;

    move-result-object p0

    return-object p0
.end method

.method private final toStaticSdkBean(Lpantanal/decision/StatisticsBean;)Lcom/pantanal/server/content/dot/StatisticsBean;
    .registers 12

    new-instance p0, Lcom/pantanal/server/content/dot/StatisticsBean;

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getExposeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getEventCode()I

    move-result v5

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getCardType()I

    move-result v6

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getExposeDuration()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getFinalRank()I

    move-result v8

    invoke-virtual {p1}, Lpantanal/decision/StatisticsBean;->getExtras()Landroid/util/ArrayMap;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/pantanal/server/content/dot/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;)V

    return-object p0
.end method


# virtual methods
.method public reportStatistics(JLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lpantanal/decision/StatisticsBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statisticsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->statistics()Lm7/f0;

    move-result-object v0

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$2;

    const/4 v7, 0x0

    move-object v2, v0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$2;-><init>(JLjava/util/List;Lpantanal/decision/statistics/StatisticsManager;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public reportStatistics(JLpantanal/decision/StatisticsBean;)V
    .registers 12

    const-string v0, "statisticsBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->statistics()Lm7/f0;

    move-result-object v0

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-wide v3, p1

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;-><init>(JLpantanal/decision/statistics/StatisticsManager;Lpantanal/decision/StatisticsBean;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
