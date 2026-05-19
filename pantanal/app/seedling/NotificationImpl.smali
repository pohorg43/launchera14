.class public final Lpantanal/app/seedling/NotificationImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/IPantanalService;
.implements Lpantanal/app/Notification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/seedling/NotificationImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/seedling/NotificationImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "GadgetImpl"


# instance fields
.field private final configuration:Lpantanal/app/bean/Configuration;

.field private final context:Landroid/content/Context;

.field private dataCallback:Lpantanal/app/NotificationDataCallback;

.field private final notificationViewInfo:Lpantanal/app/notification/NotificationViewInfo;

.field private seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/seedling/NotificationImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/seedling/NotificationImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/seedling/NotificationImpl;->Companion:Lpantanal/app/seedling/NotificationImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpantanal/app/notification/NotificationViewInfo;Lpantanal/app/bean/Configuration;Lpantanal/app/manager/ServiceManagerProxy;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationViewInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/NotificationImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lpantanal/app/seedling/NotificationImpl;->notificationViewInfo:Lpantanal/app/notification/NotificationViewInfo;

    iput-object p3, p0, Lpantanal/app/seedling/NotificationImpl;->configuration:Lpantanal/app/bean/Configuration;

    return-void
.end method

.method public static final synthetic access$getConfiguration$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/bean/Configuration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->configuration:Lpantanal/app/bean/Configuration;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lpantanal/app/seedling/NotificationImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDataCallback$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/NotificationDataCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->dataCallback:Lpantanal/app/NotificationDataCallback;

    return-object p0
.end method

.method public static final synthetic access$getNotificationViewInfo$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/notification/NotificationViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->notificationViewInfo:Lpantanal/app/notification/NotificationViewInfo;

    return-object p0
.end method

.method public static final synthetic access$setSeedling$p(Lpantanal/app/seedling/NotificationImpl;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/NotificationImpl;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    return-void
.end method


# virtual methods
.method public getUIData()Lpantanal/app/bean/PantanalUIData;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 14

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lpantanal/app/seedling/NotificationImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {p1}, Lpantanal/app/bean/Configuration;->getSeedingConfiguration()Lpantanal/app/seedling/SeedlingConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lpantanal/app/seedling/SeedlingConfiguration;->getEngineType()Lpantanal/app/seedling/SeedingEngineType;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-static {p1}, Lpantanal/app/seedling/SeedlingExKt;->convert(Lpantanal/app/seedling/SeedingEngineType;)Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-nez p1, :cond_3a

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GadgetImpl"

    const-string v2, "seedling sdk init failed, engineType is null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 p0, 0x3f1

    const-string p1, "engine type not set"

    invoke-interface {p2, p0, p1}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    return-void

    :cond_3a
    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    iget-object v1, p0, Lpantanal/app/seedling/NotificationImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lpantanal/app/seedling/NotificationImpl$load$1;

    invoke-direct {v2, p2, p0}, Lpantanal/app/seedling/NotificationImpl$load$1;-><init>(Lpantanal/app/OnLoadCallback;Lpantanal/app/seedling/NotificationImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public load(Lpantanal/app/OnLoadCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p1}, Lpantanal/app/seedling/NotificationImpl;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    return-void
.end method

.method public onCreate()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "GadgetImpl"

    const-string v2, "onCreate"

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

.method public onDestroy()V
    .registers 12

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->destroy()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-nez p0, :cond_1f

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GadgetImpl"

    const-string v2, "onDestroy error, seedling is null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public onHide()V
    .registers 12

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->onHide()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-nez p0, :cond_1f

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GadgetImpl"

    const-string v2, "onHide error, seedling is null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public onShow()V
    .registers 12

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->onShow()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-nez p0, :cond_1f

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GadgetImpl"

    const-string v2, "onShow error, seedling is null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public release()V
    .registers 12

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->destroy()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-nez p0, :cond_1f

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GadgetImpl"

    const-string v2, "release error, seedling is null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public setDataCallback(Lpantanal/app/NotificationDataCallback;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/seedling/NotificationImpl;->dataCallback:Lpantanal/app/NotificationDataCallback;

    return-void
.end method

.method public setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/IPantanalService$DefaultImpls;->setUIDataInterceptor(Lpantanal/app/IPantanalService;Lpantanal/app/UIDataInterceptor;)V

    return-void
.end method
