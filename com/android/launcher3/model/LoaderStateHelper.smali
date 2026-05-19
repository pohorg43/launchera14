.class public final Lcom/android/launcher3/model/LoaderStateHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/model/LoaderStateHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/LoaderStateHelper;

    invoke-direct {v0}, Lcom/android/launcher3/model/LoaderStateHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/LoaderStateHelper;->INSTANCE:Lcom/android/launcher3/model/LoaderStateHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setEndOrCancelLayoutLoad(Lcom/android/launcher3/model/BgDataModel;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bgDataModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setEndOrCancelLayoutLoad(Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method

.method public static final setFinishAllAppAdapterBind(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setFinishAllAppAdapterBindFromRestore(Landroid/content/Context;)V

    return-void
.end method

.method public static final setFinishWorkspaceBind(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setFinishWorkspaceBindFromRestore(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreLogHelper;->onWorkspaceFinishBind()V

    return-void
.end method

.method public static final setReadyLayoutLoad()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setStartLayoutLoad()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setStartLayoutLoad()V

    return-void
.end method
