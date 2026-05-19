.class public final Lcom/oplus/pantanal/plugin/PluginFileUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPluginFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginFileUtils.kt\ncom/oplus/pantanal/plugin/PluginFileUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,369:1\n1855#2,2:370\n*S KotlinDebug\n*F\n+ 1 PluginFileUtils.kt\ncom/oplus/pantanal/plugin/PluginFileUtils\n*L\n126#1:370,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/pantanal/plugin/PluginFileUtils;

.field public static final TAG:Ljava/lang/String; = "PluginFileUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/pantanal/plugin/PluginFileUtils;

    invoke-direct {v0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;-><init>()V

    sput-object v0, Lcom/oplus/pantanal/plugin/PluginFileUtils;->INSTANCE:Lcom/oplus/pantanal/plugin/PluginFileUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkFileIntegrity(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh4/j;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/pantanal/plugin/bean/HashEntity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lh4/j<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v2, "parent"

    const-string v4, "child"

    const-string v6, "soFile"

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v6}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v8, "PluginFileUtils"

    const-string v9, "Start checkFileIntegrity"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v0, :cond_41

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "PluginFileUtils"

    const-string v9, "checkFileIntegrity hashEntity null"

    move-object v7, v1

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lh4/j;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->getHash()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->verify(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    move-object/from16 v3, p3

    invoke-static {v0, v3}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->checkSoFileIntegrity(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFileIntegrity,apkFileIntegrity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",soFileIntegrity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "PluginFileUtils"

    move-object v7, v1

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Lh4/j;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static synthetic checkFileIntegrity$default(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lh4/j;
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_6

    const-string p3, ""

    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->checkFileIntegrity(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh4/j;

    move-result-object p0

    return-object p0
.end method

.method public static final checkIfNeedUpdate(Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;Lkotlin/jvm/functions/Function1;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lh4/z;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "pluginUpdateBean"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v4, "PluginFileUtils"

    const-string v5, "Start check update."

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getLocalConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    move-result-object v3

    const/4 v14, 0x1

    if-nez v3, :cond_35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "PluginFileUtils"

    const-string v4, "Local config is null."

    move-object v2, v1

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v14

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getLocalConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getRemoteConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v4

    const-string v5, "checkIfUpdate, Local version = "

    const-string v6, " , Remote version is "

    invoke-static {v5, v3, v6, v4}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "PluginFileUtils"

    move-object v3, v1

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getLocalConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getRemoteConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v4

    const/4 v13, 0x0

    if-ge v3, v4, :cond_71

    goto/16 :goto_106

    :cond_71
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getLocalConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getRemoteConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v4

    if-ne v3, v4, :cond_fe

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getHashEntity()Lcom/oplus/pantanal/plugin/bean/HashEntity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getChild()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->getSoFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->checkFileIntegrity(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh4/j;

    move-result-object v2

    iget-object v3, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v15, v3, 0x1

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v12, v2, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfNeedUpdate,localConfig.version == remoteConfig.version,isApkFileDamage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isSoFileDamage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/16 v16, 0x0

    const-string v3, "PluginFileUtils"

    move-object v2, v1

    move v1, v12

    move-object/from16 v12, v16

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v15, :cond_db

    if-eqz v1, :cond_f9

    :cond_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugin file damage. isApkFileDamage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSoFileDamage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_f9

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f9
    if-nez v15, :cond_106

    if-eqz v1, :cond_105

    goto :goto_106

    :cond_fe
    if-eqz v0, :cond_105

    const-string v1, "the plugin version of the entrance is greater than ums"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_105
    move v14, v13

    :cond_106
    :goto_106
    return v14
.end method

.method public static synthetic checkIfNeedUpdate$default(Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->checkIfNeedUpdate(Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private static final checkSoFileIntegrity(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;)Z
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->getSoHash()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4d

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/pantanal/plugin/bean/SoHashEntity;

    invoke-virtual {v0}, Lcom/oplus/pantanal/plugin/bean/SoHashEntity;->getHash()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oplus/pantanal/plugin/bean/SoHashEntity;->getSoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->verify(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Lcom/oplus/pantanal/plugin/bean/SoHashEntity;->getSoName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "checkFileIntegrity "

    const-string v0, " fail"

    invoke-static {p1, p0, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "PluginFileUtils"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_4d
    const/4 p0, 0x1

    return p0
.end method

.method public static final copyConfigFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v2, "PluginFileUtils"

    const-string v3, "Start copy plugin files."

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_30
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_3f
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_6e

    :try_start_44
    const-string p2, "inputStream"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v1}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    const-string v2, "PluginFileUtils"

    const-string v3, "Success copy config file."

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_67

    const/4 p2, 0x0

    :try_start_60
    invoke-static {p1, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6e

    invoke-static {p0, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_67
    move-exception p2

    :try_start_68
    throw p2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v0

    :try_start_6a
    invoke-static {p1, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p1

    :try_start_6f
    throw p1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p2

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final copyPluginFiles(Landroid/content/Context;Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 22
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "context"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "remotePlugin"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "parent"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "child"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v6, "PluginFileUtils"

    const-string v7, "Start copy plugin files."

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_3d
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_4c
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_ce

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_53
    invoke-static {v5, v4}, Ly8/b;->b(ZI)Z

    move-result v4
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_c4

    if-eqz v4, :cond_61

    :try_start_59
    invoke-virtual {v15}, Ljava/io/File;->setReadOnly()Z
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception v0

    move-object v2, v0

    move-object v3, v14

    goto :goto_c7

    :cond_61
    :goto_61
    :try_start_61
    const-string v4, "inputStream"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {v1, v14, v5, v4}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    const-string v5, "PluginFileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success copy "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_82
    .catchall {:try_start_61 .. :try_end_82} :catchall_c4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v0, 0x0

    move-object v4, v3

    move-object/from16 v16, v3

    move-object v3, v14

    move-object v14, v0

    :try_start_90
    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_c2

    const/4 v0, 0x0

    :try_start_94
    invoke-static {v3, v0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_ce

    invoke-static {v1, v0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_a0

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->getHash()Ljava/lang/String;

    move-result-object v0

    :cond_a0
    invoke-static {v0, v15}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->verify(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v0, 0x3f4

    goto :goto_c1

    :cond_a9
    const-string v0, "copyPluginFiles error, because verify failed for "

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "PluginFileUtils"

    move-object/from16 v4, v16

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v0, 0x3e9

    :goto_c1
    return v0

    :catchall_c2
    move-exception v0

    goto :goto_c6

    :catchall_c4
    move-exception v0

    move-object v3, v14

    :goto_c6
    move-object v2, v0

    :goto_c7
    :try_start_c7
    throw v2
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    :catchall_c8
    move-exception v0

    move-object v4, v0

    :try_start_ca
    invoke-static {v3, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_ce
    .catchall {:try_start_ca .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception v0

    move-object v2, v0

    :try_start_d0
    throw v2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final copySoFiles(Landroid/content/Context;Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 31
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "."

    const-string v3, "context"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "path"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "remoteSoPath"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v6, "PluginFileUtils"

    const-string v7, "Start copy so files."

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_44

    array-length v8, v5

    if-nez v8, :cond_3f

    move v8, v6

    goto :goto_40

    :cond_3f
    move v8, v7

    :goto_40
    if-eqz v8, :cond_43

    goto :goto_44

    :cond_43
    move v6, v7

    :cond_44
    :goto_44
    const/16 v15, 0x3f4

    if-eqz v6, :cond_5a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "PluginFileUtils"

    const-string v6, "Abandon copy so via list is empty."

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v15

    :cond_5a
    invoke-static/range {p2 .. p2}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->createNewFolder(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ly8/c;->a:Ly8/c;

    const-string v8, "Start copy "

    invoke-static {v8, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xfc

    const/16 v26, 0x0

    const-string v17, "PluginFileUtils"

    move-object/from16 v16, v6

    invoke-static/range {v16 .. v26}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, v8, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a0

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_a0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    :try_start_c1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_136

    :try_start_c6
    const-string v11, "inputStream"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-static {v8, v9, v7, v11}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    const-string v17, "PluginFileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Success copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xfc

    const/16 v26, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v16 .. v26}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_fa
    .catchall {:try_start_c6 .. :try_end_fa} :catchall_12d

    const/4 v5, 0x0

    :try_start_fb
    invoke-static {v9, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_136

    invoke-static {v8, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object/from16 v5, p1

    invoke-static {v5, v10}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->verifySo(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_61

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copySoFiles error, because verify failed for "

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xfc

    const/16 v26, 0x0

    const-string v17, "PluginFileUtils"

    move-object/from16 v16, v6

    invoke-static/range {v16 .. v26}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v0, 0x3e9

    return v0

    :catchall_12d
    move-exception v0

    move-object v1, v0

    :try_start_12f
    throw v1
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_130

    :catchall_130
    move-exception v0

    move-object v2, v0

    :try_start_132
    invoke-static {v9, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_136
    .catchall {:try_start_132 .. :try_end_136} :catchall_136

    :catchall_136
    move-exception v0

    move-object v1, v0

    :try_start_138
    throw v1
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_139

    :catchall_139
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_13f
    return v15
.end method

.method public static final createNewFolder(Ljava/lang/String;)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v0, "Start create new folder : "

    const-string v2, "."

    invoke-static {v0, p0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "PluginFileUtils"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    invoke-static {v0}, Ls4/f;->b(Ljava/io/File;)Z

    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method public static final deleteInvalidCacheFiles(Ljava/lang/String;)V
    .registers 24
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {v1}, Ls4/f;->b(Ljava/io/File;)Z

    move-result v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteInvalidCacheFiles,Start delete cache folder,Delete result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginFileUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_55

    :cond_3d
    sget-object v12, Ly8/c;->a:Ly8/c;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfc

    const/16 v22, 0x0

    const-string v13, "PluginFileUtils"

    const-string v14, "deleteInvalidCacheFiles,cache folder is not exists,no need to delete!"

    invoke-static/range {v12 .. v22}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_55
    return-void
.end method

.method public static final deleteInvalidFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cachePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v2, "PluginFileUtils"

    const-string v3, "deleteInvalidFiles,start delete invalid files."

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8b

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v13, "."

    if-eqz p1, :cond_64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginFileUtils"

    const-string v3, "Start delete old folder."

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {p0}, Ls4/f;->b(Ljava/io/File;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "PluginFileUtils"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_64
    invoke-virtual {v12, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rename result is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginFileUtils"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_8b
    return-void
.end method

.method public static final synthetic loadLocalConfig(Ljava/lang/String;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "Start load local config for "

    const-string v12, "."

    invoke-static {v1, p0, v12}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "PluginFileUtils"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v13, 0x0

    if-nez p0, :cond_3c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginFileUtils"

    const-string v3, "File is not exist."

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v13

    :cond_3c
    :try_start_3c
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_6d

    const/4 v0, 0x1

    :try_start_42
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_60

    :try_start_53
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v13}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5c} :catch_5d

    goto :goto_89

    :catch_5d
    move-exception p0

    move-object v13, v1

    goto :goto_6e

    :catchall_60
    move-exception v1

    :try_start_61
    throw v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v2

    :try_start_63
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception p0

    :goto_6e
    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Exception while read config : "

    invoke-static {v1, p0, v12}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginFileUtils"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object v1, v13

    :goto_89
    return-object v1
.end method

.method public static final synthetic loadRemoteConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v0, "Start load remote config for "

    const-string v12, "."

    invoke-static {v0, p1, v12}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "PluginFileUtils"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_60

    const/4 p1, 0x1

    :try_start_30
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_53

    :try_start_46
    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_7c

    :catch_50
    move-exception p0

    move-object v0, v1

    goto :goto_61

    :catchall_53
    move-exception v1

    :try_start_54
    throw v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v2

    :try_start_56
    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    move-exception p0

    :goto_61
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Exception while read config : "

    invoke-static {p1, p0, v12}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginFileUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object v1, v0

    :goto_7c
    return-object v1
.end method

.method public static final verify(Ljava/lang/String;Ljava/io/File;)Z
    .registers 26
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "file"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Start verify "

    const-string v5, "."

    invoke-static {v4, v3, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "PluginFileUtils"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v0, :cond_3b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "PluginFileUtils"

    const-string v4, "original hash is null."

    move-object v2, v1

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Lcom/oplus/pantanal/plugin/DigestUtils;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "verify: hash:"

    const-string v3, ", originalHash:"

    invoke-static {v2, v15, v3, v0}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v3, "PluginFileUtils"

    move-object v2, v1

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v11, v22

    move-object/from16 v12, v23

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verify result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",cost time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "PluginFileUtils"

    move-object v2, v1

    move/from16 v5, v16

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method public static final verifySo(Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/io/File;)Z
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start verify so for "

    invoke-static {v2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "PluginFileUtils"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->getSoHash()Ljava/util/List;

    move-result-object p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    const/4 v12, 0x0

    if-eqz p0, :cond_34

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    move v1, v12

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x1

    :goto_35
    if-eqz v1, :cond_49

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginFileUtils"

    const-string v3, "Original so hash list is empty."

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v12

    :cond_49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/pantanal/plugin/bean/SoHashEntity;

    invoke-virtual {v0}, Lcom/oplus/pantanal/plugin/bean/SoHashEntity;->getSoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Lcom/oplus/pantanal/plugin/bean/SoHashEntity;->getHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->verify(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_70
    return v12
.end method
