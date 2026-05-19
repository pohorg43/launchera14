.class public final Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/statistics/BRShortStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatisticsCallback"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBRShortStatistics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BRShortStatistics.kt\ncom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,554:1\n1#2:555\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;

.field public static final MSG_BG_DATA_GRID:I = 0x5

.field private static final MSG_CLOSE:I = 0xa

.field public static final MSG_DB_GRID:I = 0x4

.field public static final MSG_UPLOAD:I = 0x2

.field public static final MSG_WRITE:I = 0x1

.field public static final MSG_XML_GRID:I = 0x3

.field private static mStatisticsStr:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;

    invoke-direct {v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    const-string/jumbo p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_95

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p0, v1, :cond_82

    const/4 v1, 0x3

    if-eq p0, v1, :cond_5f

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4a

    const/4 v1, 0x5

    if-eq p0, v1, :cond_27

    const/16 p1, 0xa

    if-eq p0, p1, :cond_1d

    return v0

    :cond_1d
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_24

    invoke-static {p0}, Lk7/k;->c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_24
    sput-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    return v0

    :cond_27
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-nez p0, :cond_32

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    :cond_32
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_49

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lcom/android/launcher3/model/BgDataModel;

    if-eqz v1, :cond_49

    sget-object v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.BgDataModel"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/BgDataModel;

    invoke-static {v1, p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->access$recordBgDataGridData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Lcom/android/launcher3/model/BgDataModel;Ljava/lang/StringBuilder;)V

    :cond_49
    return v0

    :cond_4a
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-nez p0, :cond_55

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    :cond_55
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_5e

    sget-object p1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-static {p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->access$recordDbGridData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/StringBuilder;)V

    :cond_5e
    return v0

    :cond_5f
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-nez p0, :cond_6a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    :cond_6a
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_81

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_81

    sget-object v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string/jumbo v2, "null cannot be cast to non-null type java.util.concurrent.CopyOnWriteArrayList<*>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->access$recordXmlGridData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/StringBuilder;)V

    :cond_81
    return v0

    :cond_82
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_8b

    sget-object p1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-static {p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->access$statisticsBRData(Lcom/android/launcher/backup/statistics/BRShortStatistics;Ljava/lang/StringBuilder;)V

    :cond_8b
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_92

    invoke-static {p0}, Lk7/k;->c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_92
    sput-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    return v0

    :cond_95
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-nez p0, :cond_a0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    :cond_a0
    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics$StatisticsCallback;->mStatisticsStr:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_a9

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a9
    return v0
.end method
