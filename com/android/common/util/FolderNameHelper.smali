.class public Lcom/android/common/util/FolderNameHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FOLDER_TITLE_MARK:Ljava/lang/String; = "\u00a0"

.field private static final TAG:Ljava/lang/String; = "FolderNameHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FolderNameHelper"

    const-string v2, "Folder"

    if-eqz v0, :cond_20

    const-string/jumbo p1, "title is emnpt."

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205e3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u00a0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo p0, "title is not start with FOLDER_TITLE_MARK."

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_34
    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getSysFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getSysFolderName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v0

    array-length v7, v3

    const/4 v8, 0x0

    if-ne v6, v7, :cond_5b

    move v6, v8

    :goto_4a
    array-length v7, v0

    if-ge v6, v7, :cond_5b

    aget-object v7, v0, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    aget-object p0, v3, v6

    return-object p0

    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_5b
    array-length v0, v4

    array-length v3, v5

    if-ne v0, v3, :cond_70

    :goto_5f
    array-length v0, v5

    if-ge v8, v0, :cond_70

    aget-object v0, v4, v8

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    aget-object p0, v5, v8

    return-object p0

    :cond_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    :cond_70
    const-string v0, "Other Apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string p1, "got other apps folder displayName"

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205e9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_89
    const-string/jumbo p0, "return displayName:"

    invoke-static {p0, p1, v2, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getOriginalName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "FolderNameHelper"

    if-eqz v1, :cond_15

    const-string/jumbo p0, "title is empty."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_15
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "\u00a0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string/jumbo v0, "title is start with FOLDER_TITLE_MARK."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_29
    invoke-static {v0}, Lcom/android/common/util/FolderNameHelper;->getSysFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/common/util/FolderNameHelper;->getSysFolderName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v1

    array-length v5, v2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_50

    move v4, v6

    :goto_3f
    array-length v5, v1

    if-ge v4, v5, :cond_50

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    aget-object p0, v1, v4

    return-object p0

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_50
    array-length v1, v3

    array-length v2, v0

    if-ne v1, v2, :cond_65

    :goto_54
    array-length v1, v0

    if-ge v6, v1, :cond_65

    aget-object v1, v0, v6

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    aget-object p0, v3, v6

    return-object p0

    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_65
    return-object p0
.end method

.method private static getRecommendFolderId(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecommendFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderNameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_10

    array-length p2, p0

    if-ge p1, p2, :cond_10

    aget-object p0, p0, p1

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRecommendFolderName(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecommendFolderNameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/common/LauncherAssetManager;->getRecommendFolderNameId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/common/LauncherAssetManager;->getRecommendFolderNameId(Ljava/lang/String;)I

    move-result p1

    :cond_f
    return p1
.end method

.method private static getSysFolderId(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSysFolderName(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
