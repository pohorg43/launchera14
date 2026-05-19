.class public final Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/InterceptStartActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/app_card/engine/SmartEngineChecker;->init(Landroid/content/Context;Lpantanal/app/ILaunchInterceptor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $enableV2Callback:Z

.field public final synthetic $launcherInterceptor:Lpantanal/app/ILaunchInterceptor;


# direct methods
.method public constructor <init>(ZLpantanal/app/ILaunchInterceptor;)V
    .registers 3

    iput-boolean p1, p0, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;->$enableV2Callback:Z

    iput-object p2, p0, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;->$launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const-string v2, "intentList"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cardName"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    iget-boolean v5, v0, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;->$enableV2Callback:Z

    const-string v6, "interceptStartActivity onCall cardName:"

    const-string v7, ", intentList.size:"

    const-string v8, ", enableV2Callback="

    invoke-static {v6, v3, v7, v2, v8}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", view:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v6, Ly8/c;->a:Ly8/c;

    const-string v7, "SmartEngineChecker"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-boolean v2, v0, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;->$enableV2Callback:Z

    if-eqz v2, :cond_58

    iget-object v0, v0, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;->$launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    if-eqz v0, :cond_61

    sget-object v2, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-interface/range {v0 .. v6}, Lpantanal/app/ILaunchInterceptor;->onStartActivityV2(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_61

    :cond_58
    iget-object v0, v0, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;->$launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    if-eqz v0, :cond_61

    sget-object v2, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    invoke-interface {v0, v1, v2, v3, v4}, Lpantanal/app/ILaunchInterceptor;->onStartActivity(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;)V

    :cond_61
    :goto_61
    return-void
.end method
