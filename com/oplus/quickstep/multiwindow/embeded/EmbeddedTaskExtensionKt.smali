.class public final Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmbeddedTaskExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmbeddedTaskExtension.kt\ncom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1747#2,2:160\n1749#2:163\n1611#2:164\n1855#2:165\n1856#2:167\n1612#2:168\n1864#2,3:169\n1#3:162\n1#3:166\n*S KotlinDebug\n*F\n+ 1 EmbeddedTaskExtension.kt\ncom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt\n*L\n50#1:160,2\n50#1:163\n62#1:164\n62#1:165\n62#1:167\n62#1:168\n65#1:169,3\n62#1:166\n*E\n"
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROL_FROM_CONTAINER:Ljava/lang/String; = "Access_Control_From_Container"

.field private static final BUNDLE_NAME:Ljava/lang/String; = "mOplusExtraBundle"

.field private static final EMBEDDED_CONTAINER_KEY:Ljava/lang/String; = "embeddedContainerTaskId"

.field public static final EMBEDDED_CONTAINER_PKG:Ljava/lang/String; = "com.oplus.exserviceui"

.field public static final EMBEDDED_CONTAINER_PKG_14_1:Ljava/lang/String; = "com.oplus.pscanvas"

.field private static final KEY_LAUNCH_TASK_CONTAINER:Ljava/lang/String; = "androidx.activity.IsTaskContainer"

.field private static final KEY_LAUNCH_TASK_EMBEDDED:Ljava/lang/String; = "androidx.activity.LaunchEmbedded"

.field public static final OPLUS_FLAG_CONTAINER_TASK:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "EmbeddedTaskExtension"

.field private static noExtraBundleField:Z

.field private static oplusExtraBundleField:Ljava/lang/reflect/Field;


# direct methods
.method public static final getEmbeddedTitle(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    sget-object v3, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {v3, v2, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_42
    const/4 p0, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p0, 0x1

    if-ltz p0, :cond_90

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    if-ne p0, v4, :cond_6d

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    :cond_6d
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-static {v2}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8d
    move-object v0, p0

    move p0, v3

    goto :goto_49

    :cond_90
    invoke-static {}, Li4/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_95
    return-object v0
.end method

.method private static final getExtraBundleFiled(Landroid/app/TaskInfo;)Ljava/lang/reflect/Field;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->oplusExtraBundleField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_26

    instance-of v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_16

    instance-of v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v1, :cond_e

    goto :goto_16

    :cond_e
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1e

    :cond_15
    return-object v0

    :cond_16
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_1e
    const-string v1, "mOplusExtraBundle"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->oplusExtraBundleField:Ljava/lang/reflect/Field;

    :cond_26
    sget-object p0, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->oplusExtraBundleField:Ljava/lang/reflect/Field;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_38

    instance-of v1, v1, Ljava/lang/NoSuchFieldException;

    sput-boolean v1, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->noExtraBundleField:Z

    :cond_38
    instance-of v1, p0, Lh4/k$a;

    if-eqz v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v0, p0

    :goto_3e
    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static final hasLockedEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z
    .registers 5

    const-string v0, "lm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    if-eqz p0, :cond_42

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_42

    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_3d

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    goto :goto_3e

    :cond_3d
    move v1, v0

    :goto_3e
    if-eqz v1, :cond_19

    const/4 p0, 0x1

    move v0, p0

    :cond_42
    :goto_42
    return v0
.end method

.method public static final isNormalContainerAccessControlAppear(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .registers 6

    const-string v0, "target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    const-string v2, "Access_Control_From_Container"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    :cond_1a
    const/4 v2, -0x1

    const-string v3, "embeddedContainerTaskId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_24

    const/4 v1, 0x1

    :cond_24
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_3d

    if-eqz v1, :cond_3d

    const-string p1, "isNormalContainerAccessControlAppear, containerTaskId="

    const-string v2, ", appearTaskId="

    invoke-static {p1, v0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    const-string v0, "QuickStep"

    const-string v2, "EmbeddedTaskExtension"

    invoke-static {p1, p0, v0, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return v1
.end method

.method public static final isNormalContainerTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_16

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-nez p0, :cond_c

    goto :goto_16

    :cond_c
    invoke-static {p0}, Lcom/oplus/compat/content/IntentNative;->getOplusFlags(Landroid/content/Intent;)I

    move-result p0

    const/high16 v1, 0x10000

    and-int/2addr p0, v1

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    :goto_16
    return v0
.end method

.method public static final isNormalContainerTaskInfo(Landroid/app/TaskInfo;)Z
    .registers 4

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->noExtraBundleField:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->getExtraBundleFiled(Landroid/app/TaskInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    check-cast p0, Landroid/os/Bundle;

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_25

    const-string v0, "androidx.activity.IsTaskContainer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    move v1, p0

    :cond_25
    return v1
.end method

.method public static final isNormalEmbeddedTaskInfo(Landroid/app/TaskInfo;)Z
    .registers 4

    sget-boolean v0, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->noExtraBundleField:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->getExtraBundleFiled(Landroid/app/TaskInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    check-cast p0, Landroid/os/Bundle;

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_25

    const-string v0, "androidx.activity.LaunchEmbedded"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    move v1, p0

    :cond_25
    return v1
.end method

.method public static final printEmbeddedTasks(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    const-string v0, "Task: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_19
    move-object v2, v3

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_2c

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", embedded: ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;->INSTANCE:Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;

    const/16 v8, 0x19

    const/4 v2, 0x0

    const-string v4, "]"

    invoke-static/range {v1 .. v8}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
