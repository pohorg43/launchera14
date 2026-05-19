.class public final Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;
.super Lcom/oplus/quickstep/shortcuts/RecentShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/shortcuts/RecentShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusPrivacyProtectionShortcut"


# instance fields
.field private final isProtected:Z

.field private final taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)V
    .registers 11

    const-string v0, "taskContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_b

    const v0, 0x7f120440

    goto :goto_e

    :cond_b
    const v0, 0x7f12043f

    :goto_e
    move v3, v0

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    const-string v0, "taskContainer.itemInfo"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    const-string v0, "taskContainer.taskView"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080732

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p2, p0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iput-boolean p3, p0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;->isProtected:Z

    return-void
.end method

.method private final onProtectStateChange(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .registers 8

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0, v1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getKeyByUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "onProtectStateChange: isContentProtect = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newProtect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAppSupportPaymentProtect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPaymentProtect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    const-string v3, "QuickStep"

    const-string v4, "OplusPrivacyProtectionShortcut"

    invoke-static {v1, v2, v3, v4}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_47
    iget-boolean v1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    if-eqz v1, :cond_67

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->updateClosedContentProtectData(Ljava/lang/String;Z)V

    if-nez p2, :cond_7b

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isContentProtectOpened(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->updateOpenedContentProtectData(Ljava/lang/String;Z)V

    goto :goto_7b

    :cond_67
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->updateOpenedContentProtectData(Ljava/lang/String;Z)V

    iget-boolean v1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    if-eqz v1, :cond_7b

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->updateClosedContentProtectData(Ljava/lang/String;Z)V

    :cond_7b
    :goto_7b
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8e

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/LauncherStatistics;->statContentProtectionStateChange(Ljava/lang/String;I)V

    :cond_8e
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;->isProtected:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v2

    const-string v3, "taskView.taskIdAttributeContainers"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_22
    if-ge v5, v3, :cond_3a

    aget-object v6, v2, v5

    if-eqz v6, :cond_37

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    if-eqz v6, :cond_37

    iget-boolean v7, v6, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    if-eq v7, v0, :cond_37

    iput-boolean v0, v6, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    invoke-direct {p0, v6, v0}, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;->onProtectStateChange(Lcom/android/systemui/shared/recents/model/Task;Z)V

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_3a
    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v2, v0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onClickContentProtectShortcut(Lcom/android/launcher3/BaseDraggingActivity;Z)Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    const-string v3, "taskView.thumbnails"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    move v5, v4

    :goto_4f
    if-ge v5, v3, :cond_61

    aget-object v6, v2, v5

    if-eqz v6, :cond_5e

    instance-of v7, v6, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v7, :cond_5e

    check-cast v6, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-virtual {v6, v0, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onContentProtectStateChanged(ZZ)V

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_61
    iget-object v1, p1, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->onClickProtectShortcut(Lcom/android/systemui/shared/recents/model/Task;Z)V

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->saveContentProtectData()V

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    invoke-virtual {p0, v4}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;->clearMenuView(Z)V

    return-void
.end method

.method public setIconAndLabelFor(Landroid/widget/TextView;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/widget/TextView;)V

    if-eqz p1, :cond_18

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setFreezesText(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_18
    return-void
.end method
