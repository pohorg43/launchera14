.class public abstract Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;
.super Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mCompletedCount:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mContext:Landroid/content/Context;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->Companion:Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin$Companion;

    const-string v0, "BR-Launcher_LauncherBRBasePlugin"

    sput-object v0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;-><init>()V

    return-void
.end method

.method public static synthetic getMCompletedCount$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public backup(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public abstract create(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
.end method

.method public abstract destroy(Landroid/os/Bundle;)V
.end method

.method public onBackup(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->backup(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    iget v0, p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->mCompletedCount:I

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putCompletedCount(Landroid/os/Bundle;I)V

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    sget-object p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBackup progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Backup"

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/os/Bundle;)V
    .registers 2

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .registers 2

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brPluginHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->TAG:Ljava/lang/String;

    const-string v1, "Backup"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->create(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->destroy(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->mCompletedCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putBRResult(Landroid/os/Bundle;I)V

    invoke-static {p1, v1}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    iget p0, p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->mCompletedCount:I

    invoke-static {p1, p0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putCompletedCount(Landroid/os/Bundle;I)V

    sget-object p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Backup"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause(Landroid/os/Bundle;)V
    .registers 2

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->prepare(Landroid/os/Bundle;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    sget-object p1, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPrepare prepare = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Backup"

    invoke-static {v1, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0x160

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/compat/DataSizeUtils;->estimateSize(II)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    invoke-static {p0, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    sget-object p1, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreview preview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Backup"

    invoke-static {v1, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onRestore(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->restore(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putMaxCount(Landroid/os/Bundle;I)V

    iget v0, p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->mCompletedCount:I

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/host/listener/ProgressHelper;->putCompletedCount(Landroid/os/Bundle;I)V

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getPluginHandler()Lcom/oplus/backup/sdk/component/BRPluginHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/backup/sdk/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    sget-object p0, Lcom/android/launcher/backup/backrestore/LauncherBRBasePlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestore progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Backup"

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract prepare(Landroid/os/Bundle;)V
.end method

.method public restore(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
