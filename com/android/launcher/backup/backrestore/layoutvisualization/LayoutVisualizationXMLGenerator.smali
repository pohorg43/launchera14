.class public Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutVisualizationXMLGenerator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateLayoutVisualizationDataModeToXml(Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;Lcom/android/launcher/backup/mode/BackupDataModel;)Z
    .registers 4

    const-string v0, "generate layoutvisualization backup data to xml -- mode:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR-Launcher_LayoutVisualizationXMLGenerator"

    invoke-static {v1, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p0, :cond_23

    const-string p0, "generate LayoutVisualization backup data to xml failed, layoutVisualizationXMLComposer is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_23
    if-nez p1, :cond_2b

    const-string p0, "generate LayoutVisualization backup data to xml failed, layoutMap is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2b
    invoke-static {p0, p1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLGenerator;->generateModeLayoutVisualizationMap(Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;Landroid/util/SparseArray;)Z

    move-result p0

    if-nez p0, :cond_37

    const-string p0, "generate layoutvisualization backup data to xml failed, generate layoutMap error!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method private static generateModeLayoutVisualizationMap(Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;Landroid/util/SparseArray;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "*>;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_70

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_6d

    :cond_18
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const-string v5, "BR-Launcher_LayoutVisualizationXMLGenerator"

    if-eqz v4, :cond_36

    const-string v4, "generateModeLayoutVisualizationMap -- mapKey = "

    const-string v6, ", listSize = "

    invoke-static {v4, v1, v6}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    if-eqz v1, :cond_6d

    move v4, v0

    :goto_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addOneItemData(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_6a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateModeLayoutVisualizationMap failed: -- mapKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", add one item record error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_70
    return v3
.end method
