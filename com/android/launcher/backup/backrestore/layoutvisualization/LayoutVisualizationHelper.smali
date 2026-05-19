.class public Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutVisualizationHelper"


# instance fields
.field private mBackupDataMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLayoutVisualizationBackupSucceed:Z

.field private final mLayoutVisualizationXMLComposerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

.field private mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mLayoutVisualizationXMLComposerMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static isTurnOnLayoutVisualization()Z
    .registers 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private writeComposedDataToXml(Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    const/4 v1, 0x0

    const-string v2, "BR-Launcher_LayoutVisualizationHelper"

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->getXmlInputString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    invoke-virtual {p0, p2}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->writeToXml(Ljava/io/FileDescriptor;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {p2}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->deleteXmlFile(Ljava/lang/String;)V

    :cond_20
    return p0

    :cond_21
    const-string/jumbo p0, "onLayoutVisualizationBackupEnd: write composed data to xml failed, no composer inputString"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_28
    const-string/jumbo p0, "onLayoutVisualizationBackupEnd: write composed data to xml failed, mIsLayoutVisualizationBackupSucceed is false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private writeLauncherVisualizationLayoutContent()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BR-Launcher_LayoutVisualizationHelper"

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/mode/LauncherMode;

    iget-object v3, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/backup/mode/BackupDataModel;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    iget-boolean v4, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mLayoutVisualizationXMLComposerMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;

    invoke-static {v4, v3}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLGenerator;->generateLayoutVisualizationDataModeToXml(Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    :cond_37
    iget-boolean v3, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    if-nez v3, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBackingUp: generate data to xml filed: mode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsLayoutVisualizationBackupSucceed: false"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_56
    const-string/jumbo v0, "onLayoutVisualizationBackingUp: mIsLayoutVisualizationBackupSucceed "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    invoke-static {v0, p0, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private writeLauncherVisualizationLayoutHeader()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/mode/LauncherMode;

    iget-object v2, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;

    invoke-direct {v2}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mLayoutVisualizationXMLComposerMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    invoke-virtual {v2}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->startHeaderLayoutVisualizationInfoTag()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    const-string/jumbo v1, "onLayoutVisualizationBackupStart: add backup standard info for LayoutVisualization, mIsLayoutVisualizationBackupSucceed: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    const-string v3, "BR-Launcher_LayoutVisualizationHelper"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_a

    :cond_40
    return-void
.end method

.method private writeLauncherVisualizationLayoutTailAndXml()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/mode/LauncherMode;

    iget-object v2, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mLayoutVisualizationXMLComposerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->endHeaderLayoutInfoTag()Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->writeComposedDataToXml(Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    iput-boolean v2, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    const-string/jumbo v2, "onLayoutVisualizationBackupEnd: write composed "

    const-string v3, " layout to "

    invoke-static {v2, v1, v3}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    const-string v3, "BR-Launcher_LayoutVisualizationHelper"

    invoke-static {v2, v1, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_a

    :cond_5e
    return-void
.end method


# virtual methods
.method public onBackingUp()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->writeLauncherVisualizationLayoutContent()V

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    return p0
.end method

.method public onBackupEnd()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->writeLauncherVisualizationLayoutTailAndXml()V

    const-string/jumbo v0, "onLayoutVisualizationBackupEnd: Success: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    const-string v2, "BR-Launcher_LayoutVisualizationHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mLayoutVisualizationXMLComposerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    return-void
.end method

.method public onBackupStart()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->writeLauncherVisualizationLayoutHeader()V

    const-string/jumbo v0, "onLayoutVisualizationBackupStart: mIsLayoutVisualizationBackupSucceed: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    const-string v2, "BR-Launcher_LayoutVisualizationHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mIsLayoutVisualizationBackupSucceed:Z

    return p0
.end method

.method public setBackupData(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mXmlModeVisualizationFileMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public setBackupFilePath(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    return-void
.end method
