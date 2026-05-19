.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;-><init>()V

    return-void
.end method

.method private final createInstance(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    const-string/jumbo v0, "taskbar_compatible_apps.db"

    invoke-static {p0, p1, v0}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    const-string p1, "databaseBuilder(context.…\n                .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    return-object p0
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->access$getInstantce$cp()Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object p0

    if-nez p0, :cond_22

    const-class p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    monitor-enter p0

    :try_start_e
    invoke-static {}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->access$getInstantce$cp()Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;

    invoke-direct {v0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;->createInstance(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->access$setInstantce$cp(Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    goto :goto_22

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_22
    :goto_22
    invoke-static {}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->access$getInstantce$cp()Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object p0

    return-object p0
.end method
