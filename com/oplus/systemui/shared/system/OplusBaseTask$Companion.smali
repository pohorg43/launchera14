.class public final Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/systemui/shared/system/OplusBaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBaseTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBaseTask.kt\ncom/oplus/systemui/shared/system/OplusBaseTask$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n1855#2,2:155\n1855#2,2:157\n1#3:159\n*S KotlinDebug\n*F\n+ 1 OplusBaseTask.kt\ncom/oplus/systemui/shared/system/OplusBaseTask$Companion\n*L\n45#1:155,2\n50#1:157,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getFieldPid$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getFieldUid$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final deepCopyFrom(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance p0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iget-boolean v4, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iget-boolean v5, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    iget-boolean v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    iget-boolean v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    iget-boolean v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    iget-boolean v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    iget-boolean v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSplitScreenTask:Z

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSplitScreenTask:Z

    iget-boolean v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSecondaryTask:Z

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSecondaryTask:Z

    iget-boolean v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isTaskLandscape:Z

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isTaskLandscape:Z

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    sget-object v3, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v3, v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->deepCopyFrom(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_63
    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_94

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    sget-object v3, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v3, v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->deepCopyFrom(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_94
    iget v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    iget p1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    iput p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    return-object p0
.end method

.method public final getFieldPid()Ljava/lang/reflect/Field;
    .registers 1

    invoke-static {}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->access$getFieldPid$cp()Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public final getFieldUid()Ljava/lang/reflect/Field;
    .registers 1

    invoke-static {}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->access$getFieldUid$cp()Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public final getTaskInfoPid(Landroid/app/TaskInfo;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getFieldPid()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->setFieldPid(Ljava/lang/reflect/Field;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getFieldPid()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2d

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_36

    :cond_35
    const/4 p0, -0x1

    :goto_36
    return p0
.end method

.method public final getTaskInfoUid(Landroid/app/TaskInfo;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getFieldUid()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->setFieldUid(Ljava/lang/reflect/Field;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getFieldUid()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2d

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_36

    :cond_35
    const/4 p0, -0x1

    :goto_36
    return p0
.end method

.method public final setFieldPid(Ljava/lang/reflect/Field;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->access$setFieldPid$cp(Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public final setFieldUid(Ljava/lang/reflect/Field;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->access$setFieldUid$cp(Ljava/lang/reflect/Field;)V

    return-void
.end method
