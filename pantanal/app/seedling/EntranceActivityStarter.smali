.class public final Lpantanal/app/seedling/EntranceActivityStarter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/StartActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/seedling/EntranceActivityStarter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/seedling/EntranceActivityStarter$Companion;

.field private static final TAG:Ljava/lang/String; = "EntranceActivityStarter"


# instance fields
.field private enableV2Callback:Z

.field private launchInterceptor:Lpantanal/app/ILaunchInterceptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/seedling/EntranceActivityStarter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/seedling/EntranceActivityStarter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/seedling/EntranceActivityStarter;->Companion:Lpantanal/app/seedling/EntranceActivityStarter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableV2Callback()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/seedling/EntranceActivityStarter;->enableV2Callback:Z

    return p0
.end method

.method public final getLaunchInterceptor()Lpantanal/app/ILaunchInterceptor;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/EntranceActivityStarter;->launchInterceptor:Lpantanal/app/ILaunchInterceptor;

    return-object p0
.end method

.method public onStartActivity(Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    const-string v1, "seedling"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intentList"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v17, Ly8/c;->a:Ly8/c;

    iget-boolean v1, v0, Lpantanal/app/seedling/EntranceActivityStarter;->enableV2Callback:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartActivity: begin,intent List = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",seedling = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,enableV2Callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "EntranceActivityStarter"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    move-object/from16 v6, v17

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/seedling/EntranceActivityStarter;->launchInterceptor:Lpantanal/app/ILaunchInterceptor;

    if-nez v1, :cond_5e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "EntranceActivityStarter"

    const-string v4, "onStartActivity: begin, launchInterceptor is null."

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_5e
    iget-boolean v0, v0, Lpantanal/app/seedling/EntranceActivityStarter;->enableV2Callback:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9d

    if-eqz v1, :cond_7b

    invoke-interface/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lpantanal/app/ILaunchInterceptor;->onStartActivityV2(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/util/Map;)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartActivityV2: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "EntranceActivityStarter"

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_cb

    :cond_9d
    if-eqz v1, :cond_aa

    invoke-interface/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v3, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    invoke-interface {v1, v0, v3, v2, v4}, Lpantanal/app/ILaunchInterceptor;->onStartActivity(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartActivity: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "EntranceActivityStarter"

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_cb
    const/4 v0, 0x1

    return v0
.end method

.method public onStartActivityV2(Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/callback/StartActivityCallback$DefaultImpls;->onStartActivityV2(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final setEnableV2Callback(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/seedling/EntranceActivityStarter;->enableV2Callback:Z

    return-void
.end method

.method public final setLaunchInterceptor(Lpantanal/app/ILaunchInterceptor;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/EntranceActivityStarter;->launchInterceptor:Lpantanal/app/ILaunchInterceptor;

    return-void
.end method
