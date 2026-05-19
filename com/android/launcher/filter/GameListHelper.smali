.class public Lcom/android/launcher/filter/GameListHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/filter/GameListHelper$AppInfo;
    }
.end annotation


# static fields
.field private static final ACTION_GET_APP_INFO:Ljava/lang/String; = "fetch_app_info_list"

.field private static final APP_ERROR_MARK_TYPE:I = 0x7

.field private static final APP_TYPE:I = 0x8

.field private static final COSA_COMPONENT_NAME:Ljava/lang/String; = "com.oplus.cosa.exported"

.field private static final KEY_APP_LIST:Ljava/lang/String; = "key_app_list"

.field private static final TAG:Ljava/lang/String; = "GameListHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.oplus.cosa.exported"

    const-string v2, "fetch_app_info_list"

    invoke-static {v1, v2}, Lcom/android/launcher/filter/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGameListResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameListHelper"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c0

    if-nez p0, :cond_29

    goto/16 :goto_c0

    :cond_29
    invoke-virtual {v1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    const-string v4, ""

    if-nez v2, :cond_4e

    const-string/jumbo v1, "pref_local_hidden_game_apps"

    invoke-static {p0, v1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_4e
    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_c0

    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "key_app_list"

    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c0

    const-string v1, "Icon"

    const-string v2, "gameListJson!=null"

    invoke-static {v1, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6b
    new-instance v1, Lcom/android/launcher/filter/GameListHelper$1;

    invoke-direct {v1}, Lcom/android/launcher/filter/GameListHelper$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_c0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_85
    :goto_85
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/filter/GameListHelper$AppInfo;

    iget v2, v1, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mUserMarkType:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_9d

    iget-object v1, v1, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_9d
    iget v5, v1, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mType:I

    if-ne v5, v4, :cond_85

    const/4 v4, 0x7

    if-eq v2, v4, :cond_85

    iget-object v1, v1, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a9} :catch_ab

    goto :goto_85

    :cond_aa
    return-object v0

    :catch_ab
    move-exception p0

    const-string v1, "error convert json: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    :goto_c0
    return-object v0
.end method
