.class public Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_WORKSPACE_FOR_CARDTYPE:Ljava/lang/String; = "launcher:cardType"

.field private static final DEFAULT_WORKSPACE_FOR_CLASSNAME:Ljava/lang/String; = "launcher:className"

.field private static final DEFAULT_WORKSPACE_FOR_CONTAINER:Ljava/lang/String; = "launcher:container"

.field private static final DEFAULT_WORKSPACE_FOR_FOLDERTITLE:Ljava/lang/String; = "launcher:folderTitle"

.field private static final DEFAULT_WORKSPACE_FOR_PACKAGENAME:Ljava/lang/String; = "launcher:packageName"

.field private static final DEFAULT_WORKSPACE_FOR_SCREEN:Ljava/lang/String; = "launcher:screen"

.field private static final DEFAULT_WORKSPACE_FOR_SPANX:Ljava/lang/String; = "launcher:spanX"

.field private static final DEFAULT_WORKSPACE_FOR_SPANY:Ljava/lang/String; = "launcher:spanY"

.field private static final DEFAULT_WORKSPACE_FOR_X:Ljava/lang/String; = "launcher:x"

.field private static final DEFAULT_WORKSPACE_FOR_Y:Ljava/lang/String; = "launcher:y"

.field private static final DEFAULT_WORKSPACE_HEADER_URL:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto/com.android.launcher3"

.field private static final DEFAULT_WORKSPACE_HEADER_XMLNS:Ljava/lang/String; = "xmlns:launcher"

.field private static final FOLDER_SUB_TAG_INDENT:Ljava/lang/String; = "            "

.field private static final SUB_TAG_INDENT:Ljava/lang/String; = "        "

.field private static final SUPER_TAG_INDENT:Ljava/lang/String; = "    "

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutVisualizationXMLComposer"


# instance fields
.field private final mSerializer:Lorg/xmlpull/v1/XmlSerializer;

.field private final mStringWriter:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    return-void
.end method

.method private addNewlineAndIndent(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_d

    const-string p1, ""

    :cond_d
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private closeData()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/io/StringWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_22

    :catch_b
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeData error, e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BR-Launcher_LayoutVisualizationXMLComposer"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method private setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_15

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_7

    goto :goto_d

    :cond_7
    const-string v0, "\r\n"

    invoke-static {v0, p1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_d
    const-string p1, ""

    if-nez p3, :cond_12

    move-object p3, p1

    :cond_12
    invoke-interface {p0, p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toString(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOneItemData(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/util/ArrayList;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "folder"

    const-string v4, "card"

    const-string v5, "appwidget"

    const-string v6, "            "

    const/4 v7, 0x0

    const-string v8, "BR-Launcher_LayoutVisualizationXMLGenerator"

    if-nez v2, :cond_19

    const-string v0, "generateOneItemRecord failed: itemInfo = null"

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v9

    if-lez v9, :cond_34

    const-string v0, "generateOneItemRecord failed: Is multi-user --> UserId："

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_34
    const-string v7, "launcher:packageName"

    const-string v9, "launcher:className"

    const-string v10, "favorite"

    const-string v11, "BR-Launcher_LayoutVisualizationXMLComposer"

    const-string v12, "launcher:y"

    const-string v13, "launcher:x"

    const-string v14, "launcher:screen"

    const-string v15, "    "

    move-object/from16 v16, v6

    const-string v6, ""

    move-object/from16 v17, v10

    const-string v10, "        "

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_29f

    const/4 v3, 0x3

    move-object/from16 v19, v5

    const-string v5, "launcher:spanY"

    move-object/from16 v20, v11

    const-string v11, "launcher:spanX"

    if-eq v1, v3, :cond_18d

    const/4 v3, 0x4

    if-eq v1, v3, :cond_fe

    const/4 v3, 0x5

    if-eq v1, v3, :cond_64

    goto/16 :goto_332

    :cond_64
    :try_start_64
    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v9, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v7, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "launcher:cardType"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v10, v1, v3}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v14, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v11, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v5, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v13, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v12, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateOneItemInfo -- itemType: card, itemInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_e3} :catch_e5

    goto/16 :goto_31b

    :catch_e5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOneItemRecord, add one url card error, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-static {v3, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_332

    :cond_fe
    move-object/from16 v3, v20

    :try_start_100
    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v19

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v9, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v7, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v14, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v11, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v5, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v13, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v12, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateOneItemInfo -- itemType: widget, itemInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_174} :catch_176

    goto/16 :goto_31b

    :catch_176
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOneItemRecord, add one widget error, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_332

    :cond_18d
    move-object/from16 v3, v20

    :try_start_18f
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\u00A0"

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v15, v18

    invoke-interface {v4, v6, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "launcher:folderTitle"

    invoke-direct {v0, v10, v4, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v14, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v11, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v5, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v13, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v12, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ee
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v5

    if-ltz v5, :cond_25c

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v5

    move-object/from16 p1, v1

    int-to-long v1, v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v18

    cmp-long v1, v1, v18

    if-nez v1, :cond_25e

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v17

    invoke-interface {v1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v16

    invoke-direct {v0, v5, v9, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v7, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v14, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v13, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v12, v1}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v0, v10}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    goto :goto_262

    :cond_25c
    move-object/from16 p1, v1

    :cond_25e
    move-object/from16 v5, v16

    move-object/from16 v2, v17

    :goto_262
    move-object/from16 v1, p1

    move-object/from16 v17, v2

    move-object/from16 v16, v5

    move-object/from16 v2, p2

    goto :goto_1ee

    :cond_26b
    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateOneItemInfo -- itemType: folder, itemInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_286} :catch_288

    goto/16 :goto_31b

    :catch_288
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOneItemRecord, add one folder error, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_332

    :cond_29f
    move-object v1, v2

    move-object v3, v11

    move-object/from16 v2, v17

    :try_start_2a3
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v4

    if-ltz v4, :cond_2aa

    goto :goto_31b

    :cond_2aa
    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v10, v9, v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v10, v7, v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v10, v14, v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v10, v13, v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v10, v12, v4}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v4

    const/16 v5, -0x65

    if-ne v4, v5, :cond_302

    const-string v4, "launcher:container"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v10, v4, v5}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_302
    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: favorite, itemInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_31b} :catch_31d

    :goto_31b
    const/4 v0, 0x1

    goto :goto_333

    :catch_31d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOneItemRecord, add one favorite error, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_332
    const/4 v0, 0x0

    :goto_333
    return v0
.end method

.method public endHeaderLayoutInfoTag()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "favorites"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-direct {p0}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->closeData()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    goto :goto_23

    :catch_1a
    move-exception p0

    const-string v0, "endHeaderLayoutInfoTag error, e = "

    const-string v1, "BR-Launcher_LayoutVisualizationXMLComposer"

    invoke-static {v0, p0, v1}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public getXmlInputString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startHeaderLayoutVisualizationInfoTag()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "UTF-8"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "favorites"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    const-string/jumbo v1, "xmlns:launcher"

    const-string v2, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher/backup/backrestore/layoutvisualization/LayoutVisualizationXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "BR-Launcher_LayoutVisualizationXMLGenerator"

    const-string/jumbo v0, "startHeaderLayoutVisualizationInfoTag -- startTag = favorites"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_39

    :cond_37
    const/4 p0, 0x1

    goto :goto_43

    :catch_39
    move-exception p0

    const-string/jumbo v0, "startHeaderLayoutVisualizationInfoTag error, e: "

    const-string v1, "BR-Launcher_LayoutVisualizationXMLComposer"

    invoke-static {v0, p0, v1}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_43
    return p0
.end method
