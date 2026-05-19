.class public final Lcom/android/common/util/FoldStateMonitor$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/FoldStateMonitor;
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

    invoke-direct {p0}, Lcom/android/common/util/FoldStateMonitor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/FoldStateMonitor;->access$getMInstance$cp()Lcom/android/common/util/FoldStateMonitor;

    move-result-object p0

    if-nez p0, :cond_2c

    const-class p0, Lcom/android/common/util/FoldStateMonitor;

    monitor-enter p0

    :try_start_e
    invoke-static {}, Lcom/android/common/util/FoldStateMonitor;->access$getMInstance$cp()Lcom/android/common/util/FoldStateMonitor;

    move-result-object v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    new-instance v0, Lcom/android/common/util/FoldStateMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/android/common/util/FoldStateMonitor;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/common/util/FoldStateMonitor;->access$setMInstance$cp(Lcom/android/common/util/FoldStateMonitor;)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/android/common/util/FoldStateMonitor;->access$getMInstance$cp()Lcom/android/common/util/FoldStateMonitor;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
