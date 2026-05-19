.class public Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LAYOUT_DB_VERSION:Ljava/lang/String; = "dbVersion"

.field public static final LAYOUT_IS_EXP:Ljava/lang/String; = "isExpVersion"

.field public static final LAYOUT_MIN_DOWNGRADE_VERSION:Ljava/lang/String; = "minDowngradeVersion"

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final SUB_TAG_INDENT:Ljava/lang/String; = "    "

.field private static final SUPER_TAG_INDENT:Ljava/lang/String; = "  "

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutXMLComposer"

.field public static final XML_MIN_DOWNGRADE_VERSION:I = 0x1c


# instance fields
.field private final mSerializer:Lorg/xmlpull/v1/XmlSerializer;

.field private final mStringWriter:Ljava/io/StringWriter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    return-void
.end method

.method private addNewlineAndIndent(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_d

    const-string p1, ""

    :cond_d
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    if-nez p2, :cond_9

    move-object p2, v0

    :cond_9
    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
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

.method private static toString(Z)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOneItemRecord(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "generateOneItemInfo -- itemType: application, itemInfo is "

    const-string v3, "Backup"

    const/4 v4, 0x0

    if-nez v1, :cond_13

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string v1, "generateOneItemRecord failed: itemInfo = null"

    invoke-static {v3, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_13
    const-string/jumbo v5, "profileId"

    const-string/jumbo v6, "rank"

    const-string/jumbo v7, "spanY"

    const-string/jumbo v8, "spanX"

    const-string/jumbo v9, "restored"

    const-string/jumbo v10, "user_id"

    const-string/jumbo v11, "packageName"

    const-string v12, "intent"

    const-string/jumbo v13, "title"

    const-string v15, "cellY"

    const-string v4, "cellX"

    const-string/jumbo v14, "screen"

    move-object/from16 v16, v2

    const-string/jumbo v2, "screenId"

    move-object/from16 v17, v7

    const-string v7, "container"

    move-object/from16 v18, v8

    const-string v8, "_id"

    const-string v1, ", e: "

    move-object/from16 v19, v1

    const-string v1, "    "

    move-object/from16 v20, v5

    const-string v5, ""

    packed-switch p1, :pswitch_data_646

    goto/16 :goto_643

    :pswitch_50  #0x6
    :try_start_50
    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v9

    const-string/jumbo v9, "url_shortcut"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconType"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v1

    if-nez v1, :cond_115

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD backup iconPack-Source "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconPackage"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconResource"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_115
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-direct {v0, v3, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v20

    invoke-direct {v0, v9, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dynamicShortcutSupportState"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "info"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutInfoStr(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "icon"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutIcon()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutIconStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "url_shortcut"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_16a} :catch_17c

    move-object/from16 v6, p2

    move-object/from16 v9, v19

    :try_start_16e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_178} :catch_17a

    goto/16 :goto_435

    :catch_17a
    move-exception v0

    goto :goto_181

    :catch_17c
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v9, v19

    :goto_181
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_643

    :pswitch_19f  #0x5
    move-object/from16 v6, p2

    move-object/from16 v9, v19

    :try_start_1a3
    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "card"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, v18

    invoke-direct {v0, v10, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v13, v17

    invoke-direct {v0, v13, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "card_type"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "service_id"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "editable_attributes"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getEditableAttrs()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "theme_card_identification"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardIdentification()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "card_category"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardCategory()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appWidgetProvider"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "card"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: card, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_28d} :catch_28f

    goto/16 :goto_435

    :catch_28f
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateOneItemInfo -- itemType: card, itemInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_643

    :pswitch_2ae  #0x4
    move-object/from16 v6, p2

    move-object v3, v9

    move-object/from16 v13, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    :try_start_2b7
    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_2bc} :catch_376

    move-object/from16 v19, v9

    :try_start_2be
    const-string/jumbo v9, "widget"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "className"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appWidgetProvider"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "widget"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: widget, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_372
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_372} :catch_374

    goto/16 :goto_435

    :catch_374
    move-exception v0

    goto :goto_379

    :catch_376
    move-exception v0

    move-object/from16 v19, v9

    :goto_379
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateOneItemInfo -- itemType: widget, itemInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_643

    :pswitch_399  #0x3
    move-object/from16 v6, p2

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v3, v19

    :try_start_3a1
    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "folder"

    invoke-interface {v1, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "recommendId"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRecommendId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "folder"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: folder, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_435
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_435} :catch_438

    :goto_435
    const/4 v4, 0x1

    goto/16 :goto_644

    :catch_438
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateOneItemInfo -- itemType: folder, itemInfo is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_643

    :pswitch_457  #0x2
    move-object v3, v9

    move-object/from16 v22, v19

    move-object/from16 v9, v20

    :try_start_45c
    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v20, v9

    const-string/jumbo v9, "shortcut"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v20

    invoke-direct {v0, v9, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dynamicShortcutSupportState"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "info"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutInfoStr(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "icon"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutIcon()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutIconStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: deep shortcut, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_529
    .catch Ljava/lang/Exception; {:try_start_45c .. :try_end_529} :catch_539

    move-object/from16 v2, p2

    :try_start_52b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_535
    .catch Ljava/lang/Exception; {:try_start_52b .. :try_end_535} :catch_537

    goto/16 :goto_435

    :catch_537
    move-exception v0

    goto :goto_53c

    :catch_539
    move-exception v0

    move-object/from16 v2, p2

    :goto_53c
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateOneItemInfo -- itemType: deep shortcut, itemInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_643

    :pswitch_55c  #0x1
    move-object v3, v9

    move-object/from16 v23, v19

    move-object/from16 v9, v20

    :try_start_561
    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v20, v9

    const-string v9, "application"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "className"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-direct {v0, v2, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "application"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_609
    .catch Ljava/lang/Exception; {:try_start_561 .. :try_end_609} :catch_622

    move-object/from16 v2, v16

    :try_start_60b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_60e
    .catch Ljava/lang/Exception; {:try_start_60b .. :try_end_60e} :catch_61e

    move-object/from16 v3, p2

    :try_start_610
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61a
    .catch Ljava/lang/Exception; {:try_start_610 .. :try_end_61a} :catch_61c

    goto/16 :goto_435

    :catch_61c
    move-exception v0

    goto :goto_627

    :catch_61e
    move-exception v0

    move-object/from16 v3, p2

    goto :goto_627

    :catch_622
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v2, v16

    :goto_627
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_643
    const/4 v4, 0x0

    :goto_644
    return v4

    nop

    :pswitch_data_646
    .packed-switch 0x1
        :pswitch_55c  #00000001
        :pswitch_457  #00000002
        :pswitch_399  #00000003
        :pswitch_2ae  #00000004
        :pswitch_19f  #00000005
        :pswitch_50  #00000006
    .end packed-switch
.end method

.method public addOneScreenRecord(Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;)Z
    .registers 9

    const-string/jumbo v0, "screen"

    const-string v1, ""

    const-string v2, "generateOneScreenInfo -- screenInfo is "

    const/4 v3, 0x0

    if-nez p1, :cond_14

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string p1, "Backup"

    const-string v0, "generateOneScreenRecord failed: screenInfo = null"

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_14
    const/4 v4, 0x1

    :try_start_15
    const-string v5, "    "

    invoke-direct {p0, v5}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "_id"

    iget v6, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldId:I

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "screenId"

    iget v6, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenId:I

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "screenNum"

    iget v6, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenNum:I

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "new_id"

    iget v6, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewId:I

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "screenRank"

    iget v6, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewScreenRank:I

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_73} :catch_75

    move v3, v4

    goto :goto_92

    :catch_75
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", e: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_92
    return v3
.end method

.method public endDeviceLayoutParameterTag()Z
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    goto :goto_10

    :catch_7
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string v1, "endDeviceLayoutParameterTag error, e = "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public endHeaderLayoutInfoTag()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "LAYOUT"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    const/4 p0, 0x1

    goto :goto_20

    :catch_17
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string v1, "endHeaderLayoutInfoTag error, e = "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public endOneTypeRecordTag(I)Z
    .registers 6

    :try_start_0
    const-string v0, "  "

    invoke-direct {p0, v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_44

    const-string v0, ""

    packed-switch p1, :pswitch_data_66

    goto :goto_42

    :pswitch_b  #0x6
    :try_start_b
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "URL_SHORTCUTS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_13  #0x5
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "CARD"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_1b  #0x4
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "WIDGETS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_23  #0x3
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "FOLDERS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_2b  #0x2
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "SHORTCUTS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_33  #0x1
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "APPLICATIONS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_3b  #0x0
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "SCREENS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_42} :catch_44

    :goto_42
    const/4 p0, 0x1

    goto :goto_65

    :catch_44
    move-exception p0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endOneTypeRecordTag, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  error, e: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v0

    :goto_65
    return p0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3b  #00000000
        :pswitch_33  #00000001
        :pswitch_2b  #00000002
        :pswitch_23  #00000003
        :pswitch_1b  #00000004
        :pswitch_13  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method

.method public getXmlInputString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startDeviceLayoutParameterTag(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)Z
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "INSTALLED_DEFAULT_APPS"

    const-string v5, "RECENT_TASK_DISPLAY_PHONE_MANAGER_PARAM"

    const-string v6, "RECENT_TASK_DISPLAY_MEMORY_INFOR_PARAM"

    const-string v7, "SUPER_POWER_SAVE_LAUNCHER_APP_COUNT"

    const-string/jumbo v8, "super_power_save_launcher_app_count"

    const-string v9, "launcher_simple_font_text_size"

    const-string v10, "SUPER_POWER_SAVE_LAUNCHER_APP_LIST"

    const-string v11, "launcher_font_text_size"

    const-string v12, "launcher_simple_mode_bubbletext_font_size_key"

    const-string v13, "2"

    const-string v14, "launcher_bubbletext_font_size"

    const-string v15, "LAUNCHER_SLIDE_DOWN_PARAMETERS"

    move-object/from16 v16, v4

    const-string v4, "APP_STARTUP_ANIM_PARAMETERS"

    move-object/from16 v17, v5

    const-string/jumbo v5, "setting_app_startup_anim_speed"

    move-object/from16 v18, v6

    const-string v6, "LAYOUT_PARAMETERS"

    move-object/from16 v19, v7

    const-string v7, ""

    move-object/from16 v20, v8

    const-string v8, "Backup"

    if-nez v3, :cond_3f

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string v2, "generateDeviceLayoutParameter failed: layoutParameter = null"

    invoke-static {v8, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6f4

    :cond_3f
    move-object/from16 v21, v10

    :try_start_41
    iget-object v10, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v22, v9

    iget-object v9, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-interface {v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v9, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "UTF-8"

    move-object/from16 v23, v12

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v9, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v10, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v9, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x2

    new-array v12, v9, [I

    new-array v9, v9, [I

    move-object/from16 v24, v11

    iget v11, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    const/16 v25, 0x0

    aput v11, v9, v25

    iget v11, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    const/16 v25, 0x1

    aput v11, v9, v25

    invoke-static {v9, v12}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->generateCellCountCompatOld([I[I)Landroid/util/Pair;

    move-result-object v9

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, [I

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    const-string v12, "cellCountX"

    const/16 v25, 0x0

    aget v25, v11, v25

    move-object/from16 v26, v13

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "cellCountY"

    const/4 v13, 0x1

    aget v11, v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    aget v12, v9, v11

    if-lez v12, :cond_ab

    const-string v12, "cellCountX_OS8"

    aget v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    const/4 v11, 0x1

    aget v12, v9, v11

    if-lez v12, :cond_bb

    const-string v12, "cellCountY_OS8"

    aget v9, v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v12, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bb
    const-string v9, "isCompact"

    iget-boolean v11, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsCompact:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v9, v11}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "current_launcher_mode"

    iget-object v3, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v9, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v9, "sp_key_icon_fallen_switch"

    sget-object v11, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_102

    sget-object v9, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateDeviceLayoutParameter: iconFallenOn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_102
    const-string v9, "icon_fallen_switch"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v9, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v3

    if-eqz v3, :cond_122

    const-string v3, "dock_expand_switch"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_122
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v3

    if-eqz v3, :cond_182

    const-string/jumbo v3, "show_taskbar_switch"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "show_allApps_switch"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "show_globalSearch_switch"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "show_fileManager_switch"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "show_longpress_switch"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_182
    const-string v3, "launcher_layout_locked"

    sget-object v9, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {v9, v2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_1ba

    sget-object v6, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateDeviceLayoutParameter: animSpeed = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ba
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d2

    iget-object v6, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v1, v5, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d2
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_1f2

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateDeviceLayoutParameter: slideType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f2
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v4

    if-eqz v4, :cond_205

    const-string v4, "launcher_slide_down_type_simple"

    goto :goto_207

    :cond_205
    const-string v4, "launcher_slide_down_type"

    :goto_207
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v3, v26

    invoke-static {v2, v14, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_235

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: fontSize = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_235
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_239} :catch_6ea

    const-string/jumbo v6, "null"

    if-nez v5, :cond_258

    :try_start_23e
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_258

    iget-object v5, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v9, v24

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v1, v14, v4}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_258
    move-object/from16 v4, v23

    invoke-static {v2, v4, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_27a

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateDeviceLayoutParameter: fontSimpleTextSize = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29a

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29a

    iget-object v5, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v9, v22

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_29a
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppInfoListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_314

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: superPowerSaveAppList = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_2ba} :catch_6ea

    :try_start_2ba
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2ce

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2ce

    const-string v5, "[]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_314

    :cond_2ce
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->isFirstEnterSuperPowerMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_314

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->loadAppActivityInfo(Lcom/android/launcher3/LauncherAppState;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->updateDefaultApps(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppInfoListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateDeviceLayoutParameter: after update superPowerSaveAppList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2f7} :catch_2f8

    goto :goto_314

    :catch_2f8
    move-exception v0

    move-object v4, v0

    :try_start_2fa
    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: superPowerSaveAppList e = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_314
    :goto_314
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v21

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "super_power_save_launcher_app_list"

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x3

    move-object/from16 v4, v20

    invoke-static {v2, v4, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_350

    sget-object v6, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateDeviceLayoutParameter: superPowerSaveAppCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_350
    iget-object v6, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v9, v19

    invoke-interface {v6, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoDisplaySwitch()I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_38c

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: recentTaskDisplayRamType = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38c
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v18

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "display_memory_information_recent_task"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v3, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v3, v2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->getPhoneManagerSwitch()I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_3cc

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: recentTaskDisplayPhoneManagerType = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3cc
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v17

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "display_phone_manager_entrance"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstalledAppsOfJSON()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_40a

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: installedDefaultApps = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40a
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v16

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "back_up_installed_default_apps"

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getLockAppsOfJSON()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_444

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: lockAppsList = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_444
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "LOCK_APPS_LIST"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "back_up_lock_apps"

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "LOCK_APPS_LIST"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_469

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string v4, "generateDeviceLayoutParameter: isHasSuperLockFunction = true"

    invoke-static {v8, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_469
    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "IS_HAS_SUPER_LOCK_FUNCTION"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "back_up_is_has_super_lock_function"

    sget-boolean v4, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "IS_HAS_SUPER_LOCK_FUNCTION"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "is_double_click_lock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "TAG_DOUBLE_CLICK_LOCK_PARAMETERS"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "is_double_click_lock"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_DOUBLE_CLICK_LOCK_PARAMETERS"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v3, :cond_4d9

    sget-object v3, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v3}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v3

    if-eqz v3, :cond_4d9

    const-string v3, "key_is_show_search_box"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "TAG_SHOW_LAUNCHER_SEARCH_BOX"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "key_is_show_search_box"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_SHOW_LAUNCHER_SEARCH_BOX"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4d9
    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isSupportShowInputInDrawer:Z

    if-eqz v3, :cond_502

    const-string/jumbo v3, "show_inputmethod_in_drawer_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "TAG_SHOW_INPUT_IN_DRAWER_PAGE"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "show_inputmethod_in_drawer_switch"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_SHOW_INPUT_IN_DRAWER_PAGE"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_502
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v3

    if-eqz v3, :cond_56a

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_528

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: customize personalized search switch status = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_528
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "TAG_PERSONALIZE_SEARCH_SETTING_SWITCH"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "oplus_customize_personalized_search_switch_status"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_PERSONALIZE_SEARCH_SETTING_SWITCH"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "key_enable_branch_search_notification"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "BRANCH_SEARCH_NOTIFICATION_SWITCH"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "key_enable_branch_search_notification"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v7, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "BRANCH_SEARCH_NOTIFICATION_SWITCH"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_56a
    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v3
    :try_end_572
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_572} :catch_6ea

    const-string v4, "PULLUP_GOOGLE_SEARCH_SWITCH"

    if-eqz v3, :cond_5b1

    :try_start_576
    const-string v3, "is_pull_up_gsearch"

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_599

    sget-object v6, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateDeviceLayoutParameter: pull up google search = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_599
    iget-object v6, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "is_pull_up_gsearch"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5b1
    invoke-static {}, Lcom/android/launcher3/search/SearchEntry;->isSearchEntrySupported()Z

    move-result v3

    if-eqz v3, :cond_5db

    const-string v3, "is_search_entry_enable"

    invoke-static {v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->hasValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5db

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "is_search_entry_enable"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/search/SearchEntry;->isSwitchEnable(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5db
    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v2

    const-string/jumbo v3, "recommend_switch"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_608

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: recommend switch = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_608
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "TAG_RECOMMEND_FOLDER_SWITCH"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "recommend_switch"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_RECOMMEND_FOLDER_SWITCH"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v3

    if-eqz v3, :cond_666

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "folder_content_recommend_switch"

    const/16 v4, -0x3e7

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_64f

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: folder recommend content switch = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64f
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "TAG_RECOMMEND_FOLDER_CONTENT_SWITCH"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "folder_content_recommend_switch"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_RECOMMEND_FOLDER_CONTENT_SWITCH"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_666
    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "used_drawer_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_68f

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: used drawer mode = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68f
    iget-object v4, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "TAG_USED_DRAWER_MODE"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "used_drawer_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_USED_DRAWER_MODE"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "max_drawer_guide_show_count"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_6d0

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateDeviceLayoutParameter: drawer guide count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d0
    iget-object v3, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_DG_SHOW_COUNT"

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "max_drawer_guide_show_count"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "TAG_DG_SHOW_COUNT"

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6e8
    .catch Ljava/lang/Exception; {:try_start_576 .. :try_end_6e8} :catch_6ea

    const/4 v1, 0x1

    return v1

    :catch_6ea
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startDeviceLayoutParameterTag error, e: "

    invoke-static {v3, v1, v2}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_6f4
    const/4 v1, 0x0

    return v1
.end method

.method public startDrawerModeSettingTag(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)Z
    .registers 8

    const-string v0, "DRAWER_MODE_SETTING"

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "Backup"

    if-nez p1, :cond_11

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string p1, "generateDrawerModeSetting failed: drawerModeSetting = null"

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_11
    :try_start_11
    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "show_indicate_app"

    iget-boolean v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    invoke-static {v5}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "add_app_to_workspace"

    iget-boolean v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    invoke-static {v5}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_61

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateDrawerModeSetting -- isShowIndicateApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAddToWorkSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_61} :catch_63

    :cond_61
    const/4 p0, 0x1

    return p0

    :catch_63
    move-exception p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startDrawerModeSettingTag error, e: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public startHeaderLayoutInfoTag()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "UTF-8"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "LAYOUT"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "dbVersion"

    const/16 v1, 0x4d

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "minDowngradeVersion"

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isExpVersion"

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_62

    const-string p0, "Backup"

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateHeaderLayoutInfo -- dbVersion = 77, minDowngradeVersion = 28, isExpVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_64

    :cond_62
    const/4 p0, 0x1

    goto :goto_6e

    :catch_64
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startHeaderLayoutInfoTag error, e: "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_6e
    return p0
.end method

.method public startModeLayoutParameterTag(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 10

    const-string v0, "MODE_PARAMETERS"

    const-string v1, ""

    const/4 v2, 0x0

    if-nez p1, :cond_11

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string p1, "Backup"

    const-string p2, "generateModeLayoutParameter failed: layoutParameter = null"

    invoke-static {p1, p0, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_11
    const/4 v3, 0x2

    new-array v4, v3, [I

    new-array v3, v3, [I

    iget v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    aput v5, v3, v2

    iget p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    const/4 v5, 0x1

    aput p1, v3, v5

    invoke-static {v3, v4}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->generateCellCountCompatOld([I[I)Landroid/util/Pair;

    move-result-object p1

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    :try_start_2b
    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "cellCountX"

    aget v6, v3, v2

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cellCountY"

    aget v6, v3, v5

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    aget v4, p1, v2

    if-lez v4, :cond_5c

    const-string v4, "cellCountX_OS8"

    aget v6, p1, v2

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    aget v4, p1, v5

    if-lez v4, :cond_6b

    const-string v4, "cellCountY_OS8"

    aget v6, p1, v5

    invoke-static {v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    aget p0, v3, v2

    aget v0, v3, v5

    aget v1, p1, v2

    aget p1, p1, v5

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateModeLayoutParameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "-- targetCellCount = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_9e} :catch_9f

    return v5

    :catch_9f
    move-exception p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startModeLayoutParameterTag error, e: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public startOneTypeRecordTag(I)Z
    .registers 5

    :try_start_0
    const-string v0, "  "

    invoke-direct {p0, v0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_44

    const-string v0, ""

    packed-switch p1, :pswitch_data_66

    goto :goto_42

    :pswitch_b  #0x6
    :try_start_b
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "URL_SHORTCUTS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_13  #0x5
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "CARD"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_1b  #0x4
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "WIDGETS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_23  #0x3
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "FOLDERS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_2b  #0x2
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "SHORTCUTS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_33  #0x1
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "APPLICATIONS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_3b  #0x0
    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "SCREENS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_42} :catch_44

    :goto_42
    const/4 p0, 0x1

    goto :goto_65

    :catch_44
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startOneTypeRecordTag, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error, e: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_65
    return p0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3b  #00000000
        :pswitch_33  #00000001
        :pswitch_2b  #00000002
        :pswitch_23  #00000003
        :pswitch_1b  #00000004
        :pswitch_13  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method
