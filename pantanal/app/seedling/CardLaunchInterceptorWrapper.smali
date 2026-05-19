.class public final Lpantanal/app/seedling/CardLaunchInterceptorWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/StartActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/seedling/CardLaunchInterceptorWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/seedling/CardLaunchInterceptorWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "CardLaunchInterceptorWrapper"


# instance fields
.field private card:Lpantanal/app/Card;

.field private cardName:Ljava/lang/String;

.field private launchInterceptor:Lpantanal/app/CardLaunchInterceptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/seedling/CardLaunchInterceptorWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->Companion:Lpantanal/app/seedling/CardLaunchInterceptorWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/CardLaunchInterceptor;Lpantanal/app/Card;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->launchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    iput-object p2, p0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->card:Lpantanal/app/Card;

    iput-object p3, p0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->cardName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onStartActivity(Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;)Z
    .registers 3
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

    const-string p0, "seedling"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intentList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStartActivityV2(Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;Landroid/view/View;)Z
    .registers 21
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

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    const-string v1, "seedling"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intentList"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->card:Lpantanal/app/Card;

    iget-object v2, v0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->cardName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartActivityV2,view= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",intentList = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", card="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardName="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "CardLaunchInterceptorWrapper"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v1, 0x0

    move-object/from16 v5, v16

    move-object v15, v1

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->launchInterceptor:Lpantanal/app/CardLaunchInterceptor;

    const/4 v13, 0x0

    if-nez v1, :cond_6a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardLaunchInterceptorWrapper"

    const-string v4, "onStartActivityV2 return false,launchInterceptor is null."

    move-object/from16 v2, v16

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v13

    :cond_6a
    if-eqz v1, :cond_7b

    sget-object v2, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    iget-object v3, v0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->cardName:Ljava/lang/String;

    iget-object v5, v0, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;->card:Lpantanal/app/Card;

    move-object v0, v1

    move-object/from16 v1, p3

    move-object/from16 v4, p2

    invoke-interface/range {v0 .. v5}, Lpantanal/app/CardLaunchInterceptor;->onStartActivity(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Lpantanal/app/Card;)Z

    move-result v13

    :cond_7b
    const-string v0, "onStartActivityV2,intercept result = "

    invoke-static {v0, v13}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardLaunchInterceptorWrapper"

    move-object/from16 v2, v16

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v13
.end method
