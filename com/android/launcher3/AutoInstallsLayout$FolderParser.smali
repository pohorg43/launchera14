.class public Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderParser"
.end annotation


# static fields
.field private static final ATTR_FOLDER:Ljava/lang/String; = "policy"

.field private static final ATTR_FOLDER_VALUE:Ljava/lang/String; = "replace"


# instance fields
.field private final mFolderElements:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/AutoInstallsLayout;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/util/ArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "title"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_17

    iget-object v5, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v5, v5, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_17
    iget-object v4, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-static {v4, v1}, Lcom/android/launcher3/AutoInstallsLayout;->access$100(Lcom/android/launcher3/AutoInstallsLayout;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    :goto_1d
    iget-object v5, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v5, v5, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "itemType"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "spanX"

    invoke-static {v1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "spanY"

    invoke-static {v1, v6}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v10, v10, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_51

    move-object v11, v9

    goto :goto_52

    :cond_51
    move-object v11, v5

    :goto_52
    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_61

    move-object v10, v9

    goto :goto_62

    :cond_61
    move-object v10, v7

    :goto_62
    invoke-virtual {v2, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-virtual {v2, v2}, Lcom/android/launcher3/AutoInstallsLayout;->getExistingItemId(Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_6f

    goto :goto_70

    :cond_6f
    move v8, v3

    :goto_70
    const-string/jumbo v10, "policy"

    invoke-static {v1, v10}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "replace"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x5

    if-eqz v10, :cond_9f

    if-eqz v8, :cond_9f

    iget-object v8, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v13, v8, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v14

    const-string v8, "_id ="

    invoke-static {v8, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v18

    const-string v12, "AutoInstalls"

    const-string v17, "folder attr:policy value is replace"

    invoke-static/range {v12 .. v18}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    :cond_9f
    const-string v10, "get folderExist: "

    const-string v12, "AutoInstalls"

    invoke-static {v10, v8, v12}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v8, :cond_b0

    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v2}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v2

    :cond_b0
    iget-object v10, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v10, v10, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "_id"

    invoke-virtual {v10, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v10, v10, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v13, "screen"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d7

    iget-object v10, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v10, v10, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_d8

    :cond_d7
    move v10, v6

    :goto_d8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got screen id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_104

    :cond_f8
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    :cond_104
    const/4 v5, 0x1

    goto :goto_107

    :cond_106
    move v5, v3

    :goto_107
    if-eqz v5, :cond_122

    const-string v5, "disableAutoFill"

    invoke-static {v1, v5, v3}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_122

    iget-object v5, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-static {v5}, Lcom/android/launcher3/AutoInstallsLayout;->access$200(Lcom/android/launcher3/AutoInstallsLayout;)Lcom/android/launcher/layout/LayoutParserInjector;

    move-result-object v5

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v7, v7, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v5, v7}, Lcom/android/launcher/layout/LayoutParserInjector;->onPreAddFolder(Landroid/content/ContentValues;)V

    :cond_122
    if-eqz v8, :cond_125

    goto :goto_131

    :cond_125
    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v5, v2, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v7, v2, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v5, v7, v2}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v2

    :goto_131
    if-gez v2, :cond_134

    return v6

    :cond_134
    new-instance v5, Landroid/content/ContentValues;

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v7, v7, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-direct {v5, v7}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    new-instance v7, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-eqz v8, :cond_151

    iget-object v10, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    check-cast v10, Lcom/android/launcher3/ExtraLayoutParser;

    invoke-virtual {v10, v2}, Lcom/android/launcher3/ExtraLayoutParser;->getNewRankForExistingFolder(I)I

    move-result v10

    goto :goto_152

    :cond_151
    move v10, v3

    :goto_152
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const-string v14, "container"

    const/4 v15, 0x2

    if-ne v12, v4, :cond_21c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v9, :cond_163

    goto/16 :goto_21c

    :cond_163
    if-eqz v8, :cond_166

    return v2

    :cond_166
    iget-object v1, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    iget-object v1, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    iget-object v1, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v4, "recommendId"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendFolder(I)Z

    move-result v1

    goto :goto_18b

    :cond_18a
    move v1, v3

    :goto_18b
    invoke-virtual {v7}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    const/4 v8, 0x0

    if-ge v4, v15, :cond_1fa

    if-nez v1, :cond_1fa

    invoke-static {v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, v1, v8, v8}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v21

    const-string v15, "AutoInstalls"

    const-string v20, "failed to add, and less than 2 were actually added"

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v2

    invoke-static/range {v15 .. v21}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21b

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, v1, v14}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-static {v5, v1, v13}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v2, "cellX"

    invoke-static {v5, v1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v2, "cellY"

    invoke-static {v5, v1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v17

    const-string v2, "_id="

    invoke-static {v2, v6}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v22

    const-string v15, "AutoInstalls"

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    invoke-static/range {v15 .. v22}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21b

    :cond_1fa
    invoke-virtual {v7}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_21a

    if-eqz v1, :cond_21a

    invoke-static {v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, v1, v8, v8}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_21b

    :cond_21a
    move v6, v2

    :cond_21b
    :goto_21b
    return v6

    :cond_21c
    :goto_21c
    if-eq v12, v15, :cond_21f

    goto :goto_263

    :cond_21f
    iget-object v4, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    iget-object v4, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v14, "rank"

    invoke-virtual {v4, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/AutoInstallsLayout$TagParser;

    if-eqz v4, :cond_266

    invoke-interface {v4, v1}, Lcom/android/launcher3/AutoInstallsLayout$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    if-ltz v4, :cond_263

    invoke-virtual {v7, v4}, Lcom/android/launcher3/util/IntArray;->add(I)V

    add-int/lit8 v10, v10, 0x1

    :cond_263
    :goto_263
    const/4 v4, 0x3

    goto/16 :goto_152

    :cond_266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid folder item "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
