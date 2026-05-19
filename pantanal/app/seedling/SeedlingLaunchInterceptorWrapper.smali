.class public final Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/StartActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingStartActivityInterceptorWrapper"


# instance fields
.field private enableV2Callback:Z

.field private launchInterceptor:Lpantanal/app/ILaunchInterceptorV2;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;->Companion:Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/ILaunchInterceptorV2;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;->launchInterceptor:Lpantanal/app/ILaunchInterceptorV2;

    iput-boolean p2, p0, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;->enableV2Callback:Z

    return-void
.end method


# virtual methods
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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartActivity,seedling= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",intentList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "SeedlingStartActivityInterceptorWrapper"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    move-object/from16 v6, v17

    move v13, v1

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;->launchInterceptor:Lpantanal/app/ILaunchInterceptorV2;

    if-nez v2, :cond_54

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingStartActivityInterceptorWrapper"

    const-string v4, "onStartActivity return false,launchInterceptor is null."

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v1

    :cond_54
    iget-boolean v0, v0, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;->enableV2Callback:Z

    if-eqz v0, :cond_6f

    if-eqz v2, :cond_83

    invoke-interface/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lpantanal/app/ILaunchInterceptorV2;->onStartActivityV2(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v1

    goto :goto_83

    :cond_6f
    if-eqz v2, :cond_83

    invoke-interface/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    const/4 v6, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-interface/range {v0 .. v5}, Lpantanal/app/ILaunchInterceptorV2;->onStartActivity(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    :cond_83
    :goto_83
    const-string v0, "onStartActivity,intercept result = "

    invoke-static {v0, v1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingStartActivityInterceptorWrapper"

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v1
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
