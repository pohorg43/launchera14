.class public final Lpantanal/content/gadget/ContextManager$configurationChangedCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/content/gadget/ContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 13

    const-string p0, "newConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "ConfigPropertiesManager"

    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/content/gadget/ContextManager;->INSTANCE:Lpantanal/content/gadget/ContextManager;

    invoke-static {p0, p1}, Lpantanal/content/gadget/ContextManager;->access$showConfigDiff(Lpantanal/content/gadget/ContextManager;Landroid/content/res/Configuration;)V

    invoke-static {p0, p1}, Lpantanal/content/gadget/ContextManager;->access$notifyIfNeed(Lpantanal/content/gadget/ContextManager;Landroid/content/res/Configuration;)V

    invoke-static {p0, p1}, Lpantanal/content/gadget/ContextManager;->access$saveToLastConfig(Lpantanal/content/gadget/ContextManager;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "ConfigPropertiesManager"

    const-string v2, "onLowMemory"

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
