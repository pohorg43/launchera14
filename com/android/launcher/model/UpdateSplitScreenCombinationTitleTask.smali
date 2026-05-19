.class public final Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask$Companion;

.field private static final TAG:Ljava/lang/String; = "UpdateSplitScreenCombinationTitleTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->Companion:Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->mUser:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private static final execute$lambda$1$lambda$0(Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 9

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$updatedTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspaceItemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " execute workspaceItemInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->mPackageName:Ljava/lang/String;

    const-string v3, "UpdateSplitScreenCombinationTitleTask"

    invoke-static {v1, v2, v3}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_61

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "|"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v3, v4, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0, v4, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    if-eqz p0, :cond_61

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->execute$lambda$1$lambda$0(Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 5

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appsList"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p2

    :try_start_15
    iget-object p3, p0, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;->mUser:Landroid/os/UserHandle;

    new-instance v0, Lcom/android/launcher/model/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/model/c;-><init>(Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p3, v0}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p2

    throw p0
.end method
