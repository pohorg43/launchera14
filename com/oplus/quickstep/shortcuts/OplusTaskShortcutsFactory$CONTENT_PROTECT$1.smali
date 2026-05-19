.class public final Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskShortcutsFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskShortcutsFactory.kt\ncom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n1747#2,3:354\n*S KotlinDebug\n*F\n+ 1 OplusTaskShortcutsFactory.kt\ncom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1\n*L\n145#1:354,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-nez v1, :cond_c

    return-object v0

    :cond_c
    invoke-static {v1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v0

    :cond_13
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1;->isPrivacy(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v0

    :cond_1a
    invoke-static {v1}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->isNormalContainerTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_30
    move p0, v4

    goto :goto_4e

    :cond_32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    const-string v5, "it"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1;->isPrivacy(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_36

    move p0, v3

    :goto_4e
    if-eqz p0, :cond_51

    return-object v0

    :cond_51
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    if-ne v0, v3, :cond_61

    move v0, v3

    goto :goto_62

    :cond_61
    move v0, v4

    :goto_62
    instance-of v1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v1, :cond_75

    check-cast p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-eqz p0, :cond_73

    iget-boolean p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    if-ne p0, v3, :cond_73

    goto :goto_74

    :cond_73
    move v3, v4

    :goto_74
    and-int/2addr v0, v3

    :cond_75
    new-instance p0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)V

    return-object p0
.end method

.method public final isPrivacy(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 5

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-nez p0, :cond_15

    const-string p0, ""

    :cond_15
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPrivacy(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPrivacy(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_36

    :cond_34
    const/4 p0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p0, 0x1

    :goto_37
    return p0
.end method
