.class public final Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;

.field private static final KEY_ADD_ASSET_PATH:Ljava/lang/String; = "addAssetPath"

.field private static final KEY_RESOURCES:Ljava/lang/String; = "mResources"

.field private static final TAG:Ljava/lang/String; = "ReflectUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;

    invoke-direct {v0}, Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;->INSTANCE:Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPluginContext()Landroid/content/Context;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    invoke-virtual {v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;->getSInstance()Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;

    move-result-object v0

    return-object v0
.end method

.method public static final hookResources(Landroid/content/Context;)Landroid/content/Context;
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "ReflectUtils"

    const-string v3, "Start hook resources."

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

    :try_start_18
    const-class v1, Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    const-class v2, Landroid/content/res/AssetManager;

    const-string v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v5, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-virtual {v5}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_PLUGIN_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v2, v1, v3, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_69

    :try_start_57
    const-class p0, Landroid/view/ContextThemeWrapper;

    const-string v0, "mResources"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_66

    goto :goto_95

    :catchall_66
    move-exception p0

    move-object v0, v1

    goto :goto_6a

    :catchall_69
    move-exception p0

    :goto_6a
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while hook resource :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "ReflectUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object v1, v0

    :goto_95
    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "ReflectUtils"

    const-string v4, "Finish hook resources."

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method
