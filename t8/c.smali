.class public final synthetic Lt8/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/SmartAPICallback;
.implements Lcom/nearme/instant/xcard/ILaunchInterceptorV1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lpantanal/app/ILaunchInterceptor;


# direct methods
.method public synthetic constructor <init>(ZLpantanal/app/ILaunchInterceptor;I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lt8/c;->a:Z

    iput-object p2, p0, Lt8/c;->b:Lpantanal/app/ILaunchInterceptor;

    return-void
.end method


# virtual methods
.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    iget-boolean v0, p0, Lt8/c;->a:Z

    iget-object p0, p0, Lt8/c;->b:Lpantanal/app/ILaunchInterceptor;

    invoke-static {v0, p0, p1}, Lpantanal/app/app_card/engine/SmartEngineChecker;->c(ZLpantanal/app/ILaunchInterceptor;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public onStartActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    iget-boolean v0, p0, Lt8/c;->a:Z

    iget-object p0, p0, Lt8/c;->b:Lpantanal/app/ILaunchInterceptor;

    invoke-static {v0, p0, p1, p2, p3}, Lpantanal/app/instant/engine/InstantAppCardClient;->c(ZLpantanal/app/ILaunchInterceptor;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
