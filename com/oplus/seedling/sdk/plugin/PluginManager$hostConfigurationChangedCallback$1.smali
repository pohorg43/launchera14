.class public final Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 14

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "PluginManager"

    const-string v3, "hostConfigurationChangedCallback onConfigurationChanged"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;

    move-result-object v1

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v3

    const-string v4, "before updateNewConfig"

    invoke-static {v0, v4, v1, v3, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->access$showConfigMsg(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->access$updateNewConfig(Lcom/oplus/seedling/sdk/plugin/PluginManager;Landroid/content/Context;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_4e
    iget-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "after updateConfiguration"

    invoke-static/range {v2 .. v8}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showConfigMsg$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;ILjava/lang/Object;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "PluginManager"

    const-string v2, "hostConfigurationChangedCallback onLowMemory"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
