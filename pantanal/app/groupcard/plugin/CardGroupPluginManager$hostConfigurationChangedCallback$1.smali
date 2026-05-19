.class public final Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/groupcard/plugin/CardGroupPluginManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/groupcard/plugin/CardGroupPluginManager;


# direct methods
.method public constructor <init>(Lpantanal/app/groupcard/plugin/CardGroupPluginManager;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;->this$0:Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 14

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "CardGroupPluginManager"

    const-string v3, "hostConfigurationChangedCallback onConfigurationChanged"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;->this$0:Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    invoke-virtual {v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;

    move-result-object v1

    sget-object v2, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v2}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "before updateNewConfig"

    invoke-static {v0, v4, v1, v3, p1}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->access$showConfigMsg(Lpantanal/app/groupcard/plugin/CardGroupPluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;->this$0:Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    invoke-virtual {v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v2}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_45
    iget-object v2, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;->this$0:Lpantanal/app/groupcard/plugin/CardGroupPluginManager;

    invoke-virtual {v2}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "after updateConfiguration"

    invoke-static/range {v2 .. v8}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->showConfigMsg$default(Lpantanal/app/groupcard/plugin/CardGroupPluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;ILjava/lang/Object;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "hostConfigurationChangedCallback onLowMemory"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
