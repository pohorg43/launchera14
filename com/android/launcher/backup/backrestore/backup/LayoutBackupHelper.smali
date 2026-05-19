.class public Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutBackupHelper"


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

.field private mIsBackupOneXmlOnly:Z

.field private mIsBackupSucceed:Z

.field private mLayoutXMLComposerForOplus32:Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

.field private mLayoutXMLComposerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

.field private mSDLauncherBackupDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerMap:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupOneXmlOnly:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    return-void
.end method

.method private backupLauncherModeLayoutContent()V
    .registers 7

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_57

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    if-eqz v4, :cond_54

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/backup/mode/BackupDataModel;

    if-eqz v4, :cond_54

    invoke-virtual {v4, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    iget-boolean v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    invoke-static {v5, v4}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->generateBackupDataModeToXml(Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    :cond_33
    iget-boolean v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    if-nez v4, :cond_54

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBackingUp: generate data to xml filed: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBackupSucceed: false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_57
    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackingUp: backupLauncherModeLayoutContent "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private backupLauncherModeLayoutHeader()V
    .registers 8

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    if-eqz v4, :cond_41

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_41

    new-instance v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    invoke-direct {v4}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;-><init>()V

    iget-object v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {v4}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->startHeaderLayoutInfoTag()Z

    move-result v4

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onBackupStart: add backup "

    const-string v6, " info, mIsBackupSucceed: "

    invoke-static {v5, v3, v6}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    const-string v6, "Backup"

    invoke-static {v3, v5, v6, v4}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_44
    return-void
.end method

.method private backupLauncherStandardLayoutContentForOplus32(Landroid/content/Context;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupOneXmlOnly:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerForOplus32:Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    invoke-static {p1, v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->generateBackupDataStandardToXml(Landroid/content/Context;Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBackingUp: backupLauncherStandardLayoutContentForOplus32 "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private backupLauncherStandardLayoutHeaderForOplus32()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupOneXmlOnly:Z

    if-nez v0, :cond_25

    new-instance v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    invoke-direct {v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerForOplus32:Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    invoke-virtual {v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->startHeaderLayoutInfoTag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackupStart: add backup standard info for oplus32, mIsBackupSucceed: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    const-string v2, "Backup"

    invoke-static {v1, p0, v2, v0}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private writeComposedDataToXml(Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    const/4 v1, 0x0

    const-string v2, "Backup"

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->getXmlInputString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    invoke-virtual {p0, p2}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->writeToXml(Ljava/io/FileDescriptor;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {p2}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->deleteXmlFile(Ljava/lang/String;)V

    :cond_20
    return p0

    :cond_21
    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBackupEnd: write composed data to xml failed, no composer inputString"

    invoke-static {v2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2a
    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBackupEnd: write composed data to xml failed, mIsBackupSucceed is false"

    invoke-static {v2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private writeDatabaseToFileForOldVersion(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mSDLauncherBackupDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "com.android.launcher"

    const-string v3, ".tar"

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "Backup"

    if-nez v1, :cond_46

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBackingUp: writeDatabaseToFileForOldVersion "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exists, so return"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_46
    const/4 v1, 0x1

    :try_start_47
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    invoke-static {p0, p1, v0}, Lcom/android/launcher/backup/util/TarToolUtils;->archive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_74

    :catch_4d
    move-exception p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackingUp: writeDatabaseToFileForOldVersion -- tar archive file failed, e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-static {p0}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    :cond_73
    const/4 v1, 0x0

    :goto_74
    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBackingUp: writeDatabaseToFileForOldVersion result: "

    invoke-static {p1, v1, v2, p0}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeFileLogToFile(Landroid/content/Context;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mSDLauncherBackupDir:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_2a
    const/4 v3, 0x2

    const-string v4, "Backup"

    if-ge v2, v3, :cond_5f

    const-string v1, "log-"

    invoke-static {v1, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v1

    if-nez v1, :cond_5c

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onBackingUp: writeFileLogToFile -- copy to file failed"

    invoke-static {v4, v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_5f
    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBackingUp: writeFileLogToFile result: "

    invoke-static {p1, v1, v4, p0}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeLauncherLayoutParametersToXml(Landroid/content/Context;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    if-eqz v0, :cond_72

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mSDLauncherBackupDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "launcher_layout_parameters.xml"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    invoke-direct {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v2

    goto :goto_45

    :cond_41
    invoke-static {p1}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseDeviceLayoutParameter(Landroid/content/Context;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v2

    :cond_45
    :goto_45
    invoke-static {p1, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->generateDeviceLayoutParameter(Landroid/content/Context;Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-direct {p0, v1, v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeComposedDataToXml(Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackingUp: write composed layout parameters to "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    return-void
.end method

.method private writeLauncherModeLayoutToXml(Landroid/util/ArrayMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_52

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->endHeaderLayoutInfoTag()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeComposedDataToXml(Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onBackupEnd: write composed "

    const-string v6, " layout to "

    invoke-static {v5, v3, v6}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_52
    return-void
.end method

.method private writeLauncherStandardLayoutToXmlForOplus32()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupOneXmlOnly:Z

    if-nez v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mSDLauncherBackupDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "launcher_layout.xml"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerForOplus32:Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->endHeaderLayoutInfoTag()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    iget-object v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerForOplus32:Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeComposedDataToXml(Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onBackupEnd: write composed standard layout for oplus32 to "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method private writeTraceLogToFile(Landroid/content/Context;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mSDLauncherBackupDir:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_2a
    const/4 v3, 0x5

    const-string v4, "Backup"

    if-ge v2, v3, :cond_62

    const-string v1, "layout_trace"

    if-nez v2, :cond_34

    goto :goto_38

    :cond_34
    invoke-static {v1, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_38
    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v1

    if-nez v1, :cond_5f

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onBackingUp: writeTraceLogToFile -- copy to file failed"

    invoke-static {v4, v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_62
    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBackingUp: writeTraceLogToFile result: "

    invoke-static {p1, v1, v4, p0}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackingUp(Landroid/content/Context;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeLauncherLayoutParametersToXml(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->backupLauncherStandardLayoutContentForOplus32(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->backupLauncherModeLayoutContent()V

    iget-boolean v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeDatabaseToFileForOldVersion(Landroid/content/Context;)V

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeTraceLogToFile(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeFileLogToFile(Landroid/content/Context;)V

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    return p0
.end method

.method public onBackupEnd(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeLauncherStandardLayoutToXmlForOplus32()V

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->writeLauncherModeLayoutToXml(Landroid/util/ArrayMap;)V

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBackupEnd: Success: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mSDLauncherBackupDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    :cond_29
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerMap:Landroid/util/ArrayMap;

    :cond_32
    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mLayoutXMLComposerForOplus32:Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupOneXmlOnly:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    return-void
.end method

.method public onBackupStart(Z)Z
    .registers 5

    iput-boolean p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupOneXmlOnly:Z

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->backupLauncherModeLayoutHeader()V

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->backupLauncherStandardLayoutHeaderForOplus32()V

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBackupStart: mIsBackupSucceed: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    const-string v2, "Backup"

    invoke-static {v0, v1, v2, p1}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mIsBackupSucceed:Z

    return p0
.end method

.method public setBackupData(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mBackupDataMap:Landroid/util/ArrayMap;

    :cond_4
    return-void
.end method

.method public setBackupFilePath(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mPlugin:Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;

    iput-object p2, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutBackupHelper;->mSDLauncherBackupDir:Ljava/lang/String;

    return-void
.end method
